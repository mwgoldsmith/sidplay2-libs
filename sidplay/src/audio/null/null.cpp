/***************************************************************************
                          null.cpp  -  Null audio driver used for hardsid
                                       and songlength detection
                             -------------------
    begin                : Mon Nov 6 2000
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
 *  Revision 1.2  2001/01/23 21:22:31  s_a_white
 *  Changed to array delete.
 *
 *  Revision 1.1  2001/01/08 16:41:43  s_a_white
 *  App and Library Seperation
 *
 ***************************************************************************/

#include "null.h"
#include "config.h"
#ifdef HAVE_EXCEPTIONS
#   include <new>
#endif

Audio_Null::Audio_Null ()
{
    isOpen = false;
}

Audio_Null::~Audio_Null ()
{
    close();
}

void *Audio_Null::open (AudioConfig &cfg, const char *)
{ 
    uint_least32_t bufSize = cfg.bufSize;

    if (isOpen)
    {
        _errorString = "NULL ERROR: Audio device already open.";
        return NULL;
    }

    if (bufSize)
    {
        bufSize  = cfg.frequency * cfg.precision / 8 * cfg.channels;
        bufSize /= 4;
    }

    // We need to make a buffer for the user
#if defined(HAVE_EXCEPTIONS)
    _sampleBuffer = new(nothrow) uint_least8_t[bufSize];
#else
    _sampleBuffer = new uint_least8_t[bufSize];
#endif
    if (!_sampleBuffer)
        return NULL;

    isOpen      = true;
    cfg.bufSize = bufSize;
    _settings   = cfg;
    return _sampleBuffer;
}

void *Audio_Null::write ()
{
    if (!isOpen)
    {
        _errorString = "NULL ERROR: Audio device not open.";
        return NULL;
    }
    return _sampleBuffer;
}

void *Audio_Null::reset (void)
{
    if (!isOpen)
         return NULL;
    return _sampleBuffer;
}

void Audio_Null::close (void)
{
    if (!isOpen)
        return;
    delete [] _sampleBuffer;
    _sampleBuffer = NULL;
    isOpen = false;
}