/***************************************************************************
                          sidplayer.h  -  Public sidplayer
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

#ifndef _sidplayer_h_
#define _sidplayer_h_

#include "sidtypes.h"
#include "sidtune/SidTune.h"
#define  SIDPLAYER_DEFAULT_SAMPLING_FREQ 22050
#define  SIDPLAYER_MAX_OPTIMISATION 3

typedef enum {left = 0, mono, stereo, right} playback_sidt;
typedef enum {playsid = 0, sidplaytp, sidplaybs, real} env_sidt;

typedef struct
{
    char       *name;
    char       *version;
    SidTuneInfo tuneInfo;
    bool        sidFilter;
    env_sidt    environment;
} playerInfo_sidt;

// Private Sidplayer
class sidplayer_pr;

class sidplayer
{
private:
    sidplayer_pr *player;

public:
    sidplayer ();
    virtual ~sidplayer ();

    void        configure    (playback_sidt mode, udword_sidt samplingFreq, bool forceDualSid);
    void        stop         (void);
    void        paused       (void);
    udword_sidt play         (void *buffer, udword_sidt length);
    int         loadSong     (const char * const title, const uword_sidt songNumber);
    int         loadSong     (SidTune *requiredTune);
    void        environment  (env_sidt env);
    void        getInfo      (playerInfo_sidt *info);
    void        optimisation (ubyte_sidt level);

    operator bool()  const { return (player ? true: false); }
    bool operator!() const { return (player ? false: true); }
};

#endif // _sidplayer_h_
