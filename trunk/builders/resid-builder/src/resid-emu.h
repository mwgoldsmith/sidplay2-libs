/***************************************************************************
                          resid-emu.h  -  ReSid Emulation
                             -------------------
    begin                : Fri Apr 4 2001
    copyright            : (C) 2001 by Simon White
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

#include "config.h"

// Allow resid to be in more than one location
#ifdef HAVE_LOCAL_RESID
#   include "resid/sid.h"
#else
#   ifdef HAVE_USER_RESID
#       include "sid.h"
#   else
#       include <resid/sid.h>
#   endif
#endif

#ifdef RESID_NAMESPACE
#   define RESID ::RESID_NAMESPACE
#else
#   define RESID
#endif

#include "resid-builder.h"

class ReSID: public SidEmulation<ISidEmulation,ReSIDBuilder>,
             public ICoAggregate<ISidMixer>
{
private:
    EventContext *m_context;
    event_phase_t m_phase;
    class RESID::SID &m_sid;
    event_clock_t m_accessClk;
    int_least32_t m_gain;
    static char   m_credit[180];
    const  char  *m_error;
    bool          m_status;
    bool          m_locked;
    uint_least8_t m_optimisation;

public:
    ReSID  (ReSIDBuilder *builder);
    ~ReSID (void);

    IInterface *aggregate () { return SidEmulation<ISidEmulation,ReSIDBuilder>::aggregate (); }

    // IInterface
    bool ifquery (const InterfaceID &iid, void **implementation);

   // Standard component functions
    const char   *credits (void) {return m_credit;}
    void          reset   (uint8_t volume);
    uint8_t       read    (uint_least8_t addr);
    void          write   (uint_least8_t addr, uint8_t data);
    const char   *error   (void) {return m_error;}

    // Standard SID functions
    int_least32_t output  (uint_least8_t bits);
    void          filter  (bool enable);
    void          volume  (uint_least8_t num, uint_least8_t level);
    void          mute    (uint_least8_t num, bool enable);
    void          gain    (int_least8_t precent);
    void          optimisation (uint_least8_t level);

    operator bool () { return m_status; }
    static   int  devices (char *error);

    // Specific to resid
    void sampling (uint_least32_t freq);
    bool filter   (const sid_filter_t *filter);
    void model    (sid2_model_t model);
    // Must lock the SID before using the standard functions.
    bool lock     (c64env *env);
};
