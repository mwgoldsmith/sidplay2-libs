/***************************************************************************
                          sid6526.cpp  -  description
                             -------------------
    begin                : Wed Jun 7 2000
    copyright            : (C) 2000 by Simon White
    email                : s_a_white@email.com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
/***************************************************************************
 *  $Log: not supported by cvs2svn $
 ***************************************************************************/

#include <time.h>
#include "SID6526.h"

const char * const SID6526::credit =
{   // Optional information
    "*SID6526 (SIDPlay1 Fake CIA) Emulation:\0"
    "\tCopyright (C) 2001 Simon White <sidplay2@email.com>\0"
};

SID6526::SID6526 (c64env *env)
:m_env(*env),
 m_eventContext(m_env.eventContext),
 m_taEvent(*this)
{
    clock (0xffff);
    reset ();
}

void SID6526::reset (void)
{
    locked = false;
    ta  = ta_latch = m_count;
    cra = 0;
    rnd = (uint_least16_t) time(NULL);
    m_accessClk = 0;
}

uint8_t SID6526::read (uint_least8_t addr)
{
   if (addr > 0x0f)
       return 0;

   switch (addr)
   {
   case 0x04:
   case 0x05:
   case 0x11:
   case 0x12:
       rnd = rnd * 13 + 1;
       return (uint8_t) rnd >> 3;
   break;
   default:
       return regs[addr];
   }
}

void SID6526::write (uint_least8_t addr, uint8_t data)
{
   if (addr > 0x0f)
       return;

   regs[addr] = data;

   if (locked)
       return; // Stop program changing time interval

   {   // Sync up timer
	   event_clock_t cycles;
       cycles       = m_eventContext.getTime (m_accessClk);
       m_accessClk += cycles;
       ta          -= cycles;
   }

   switch (addr)
   {
   case 0x04:
       ta_latch  = (uint_least16_t) data;
   break;
   case 0x05:
       ta_latch |= (uint_least16_t) data << 8;
       if (cra & 0x01)
           ta = ta_latch;
   break;
   case 0x0e:
        cra = data;
        if (data & 0x10)
        {
            cra &= (~0x10);
            ta   = ta_latch;
        }
        m_eventContext.schedule (&m_taEvent, (event_clock_t) ta + 1);
   break;
   default:
   break;
   }
}

void SID6526::event (void)
{   // Timer Modes
    m_accessClk += m_eventContext.getTime (m_accessClk);
    ta = ta_latch;
    m_eventContext.schedule (&m_taEvent, (event_clock_t) ta + 1);
    m_env.interruptIRQ (true);
}