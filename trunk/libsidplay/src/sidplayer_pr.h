/***************************************************************************
                          sidplayer_pr.h  -  description
                             -------------------
    begin                : Fri Jun 9 2000
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

#ifndef _sidplayer_pr_h_
#define _sidplayer_pr_h_

#include "config.h"
#include "sidplayer.h"
#include SID_ENVIRONMENT_H
#include "mos6510/mos6510.h"
#include "mos6581/mos6581.h"
#include "xsid/xsid.h"
#include "fake6526.h"

class sidplayer_pr: private C64Environment
{
private:
    //SID6510  cpu(6510, "Main CPU");
//    SID6510  cpu;
    SID6510  cpu;
    SID      sid;
    SID      sid2;
    XSID     xsid;
    fake6526 cia;
    SidTune *tune, *myTune;
    struct   SidTuneInfo tuneInfo;

    enum  {_playing = 0, _paused, _stopped} playerState;
    ubyte_sidt *ram;
    ubyte_sidt *rom;

    // Player configureation options
    env_sidt      _environment;
    env_sidt      _requiredEnv;
    playback_sidt _playback;
    udword_sidt   _samplingFreq;

    // Rev 2.0.3 Added - New Mixer
    udword_sidt   _leftVolume;
    udword_sidt   _rightVolume;
    bool          _sid2Enabled;
    bool          _forceDualSids;
    ubyte_sidt    _optimiseLevel;

    // C64 environment settings
    double        _cpuFreq;
    ubyte_sidt    _bankReg;
    // Rev 2.0.2 Added - Sidplay compatibility
    ubyte_sidt    _initBankReg;

    // temp stuff -------------
    bool   isKernal;
    bool   isBasic;
    bool   isIO;
    inline void evalBankSelect (ubyte_sidt data);
    void   c64_initialise      (void);
    // ------------------------

private:
    void       clock          (void);
    int        initialise     (void);
    void       initBankSelect (uword_sidt addr);
    void       nextSequence   (void);
    int        setEnvironment (env_sidt env);

    ubyte_sidt readMemByte_plain     (uword_sidt addr, bool useCache);
    ubyte_sidt readMemByte_playsid   (uword_sidt addr, bool useCache);
    ubyte_sidt readMemByte_sidplaytp (uword_sidt addr, bool useCache);
    ubyte_sidt readMemByte_sidplaybs (uword_sidt addr, bool useCache);
    void       writeMemByte_playsid  (uword_sidt addr, ubyte_sidt data, bool useCache);
    void       writeMemByte_sidplay  (uword_sidt addr, ubyte_sidt data, bool useCache);

    // Use pointers to please requirements of all the provided
    // environments.
    ubyte_sidt (sidplayer_pr::*readMemByte)     (uword_sidt, bool useCache);
    void       (sidplayer_pr::*writeMemByte)    (uword_sidt, ubyte_sidt, bool useCache);
    ubyte_sidt (sidplayer_pr::*readMemDataByte) (uword_sidt, bool useCache);

    // Environment Function entry Points
    inline void       envReset           (void);
    inline ubyte_sidt envReadMemByte     (uword_sidt addr, bool useCache);
    inline void       envWriteMemByte    (uword_sidt addr, ubyte_sidt data, bool useCache);
    inline void       envTriggerIRQ      (void);
    inline void       envTriggerNMI      (void);
    inline void       envTriggerRST      (void);
    inline void       envClearIRQ        (void);
    inline bool       envCheckBankJump   (uword_sidt addr);
    inline ubyte_sidt envReadMemDataByte (uword_sidt addr, bool useCache);

    // Rev 2.0.3 Added - New Mixer Routines
    void (sidplayer_pr::*output) (uword_sidt clock, void *buffer, udword_sidt &count);
    void monoOut8MonoIn      (uword_sidt clock, void *buffer, udword_sidt &count);
    void monoOut8StereoIn    (uword_sidt clock, void *buffer, udword_sidt &count);
    void leftOut8StereoIn    (uword_sidt clock, void *buffer, udword_sidt &count);
    void rightOut8StereoIn   (uword_sidt clock, void *buffer, udword_sidt &count);
    void stereoOut8MonoIn    (uword_sidt clock, void *buffer, udword_sidt &count);
    void stereoOut8StereoIn  (uword_sidt clock, void *buffer, udword_sidt &count);

private:
    friend sidplayer;
    sidplayer_pr ();
    virtual ~sidplayer_pr ();

    void        configure    (playback_sidt mode, udword_sidt samplingFreq, bool forceDualSid);
    void        stop         (void);
    void        paused       (void);
    udword_sidt play         (void *buffer, udword_sidt length);
    int         loadSong     (const char * const title, const uword_sidt songNumber);
    int         loadSong     (SidTune *requiredTune);
    void        environment  (env_sidt env);
    void        getInfo      (playerInfo_sidt *info);
    void        optimisation (ubyte_sidt level)
    {
        if (level > SIDPLAYER_MAX_OPTIMISATION)
            level = SIDPLAYER_MAX_OPTIMISATION;
        _optimiseLevel = level;
    }
};

#endif // _sidplayer_pr_h_
