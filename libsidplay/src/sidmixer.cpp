/***************************************************************************
                          sidmixer.cpp  -  Sids Mixer Routines
                             -------------------
    begin                : Sun Jul 9 2000
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
#include "sidplayer_pr.h"

#define VOLUME_MAX_8BIT 255

void sidplayer_pr::monoOut8MonoIn (uword_sidt clock, void *buffer, udword_sidt &count)
{
    sword_sidt sample;
    ubyte_sidt *buf;

    if (_optimiseLevel > 1)
    {
        sid.clock  (clock);
        xsid.clock (clock);
    }
    sample  = sid.output (8);

#ifndef XSID_USE_SID_VOLUME
    sample *= 3;
    sample += xsid.output (8);
    sample /= 4;
#endif

    // Apply volume
    sample *= _leftVolume;
    sample /= VOLUME_MAX_8BIT;

    //    if (_encoding == PCM_UNSIGNED)
        sample += 128;

    buf  = (ubyte_sidt *) buffer + count;
    *buf = (ubyte_sidt) sample;
    count++;
}

void sidplayer_pr::monoOut8StereoIn (uword_sidt clock, void *buffer, udword_sidt &count)
{
    sword_sidt sampleL, sampleR, sample;
    ubyte_sidt *buf;

    if (_optimiseLevel > 1)
    {
        sid.clock  (clock);
        sid2.clock (clock);
        xsid.clock (clock);
    }
    sampleL = sid.output  (8);
    sampleR = sid2.output (8);

#ifndef XSID_USE_SID_VOLUME
    sword_sidt sampleX;
    sampleL *= 3;
    sampleR *= 3;
    sampleX  = xsid.output (8);
    sampleL  = (sampleL + sampleX) / 4;
    sampleR  = (sampleR + sampleX) / 4;
#endif

    // Apply volume
    sampleL *= _leftVolume;
    sampleL /= VOLUME_MAX_8BIT;
    sampleR *= _rightVolume;
    sampleR /= VOLUME_MAX_8BIT;

    // Convert to mono
    sample   = (sampleL + sampleR) / 2;

    //    if (_encoding == PCM_UNSIGNED)
        sample += 128;

    buf  = (ubyte_sidt *) buffer + count;
    *buf = (ubyte_sidt) sample;
    count++;
}

void sidplayer_pr::leftOut8StereoIn (uword_sidt clock, void *buffer, udword_sidt &count)
{
    sword_sidt sample;
    ubyte_sidt *buf;

    if (_optimiseLevel > 1)
    {
        sid.clock  (clock);
        xsid.clock (clock);
    }
    sample  = sid.output (8);

#ifndef XSID_USE_SID_VOLUME
    sample *= 3;
    sample += xsid.output (8);
    sample /= 4;
#endif

    // Apply volume
    sample *= _leftVolume;
    sample /= VOLUME_MAX_8BIT;

    //    if (_encoding == PCM_UNSIGNED)
        sample += 128;

    buf  = (ubyte_sidt *) buffer + count;
    *buf = (ubyte_sidt) sample;
    count++;
}

void sidplayer_pr::rightOut8StereoIn (uword_sidt clock, void *buffer, udword_sidt &count)
{
    sword_sidt sample;
    ubyte_sidt *buf;

    if (_optimiseLevel > 1)
    {
        sid2.clock (clock);
        xsid.clock (clock);
    }
    sample  = sid2.output (8);

#ifndef XSID_USE_SID_VOLUME
    sample *= 3;
    sample += xsid.output (8);
    sample /= 4;
#endif

    // Apply volume
    sample *= _rightVolume;
    sample /= VOLUME_MAX_8BIT;
   
    //    if (_encoding == PCM_UNSIGNED)
        sample += 128;

    buf  = (ubyte_sidt *) buffer + count;
    *buf = (ubyte_sidt) sample;
    count++;
}

void sidplayer_pr::stereoOut8MonoIn (uword_sidt clock, void *buffer, udword_sidt &count)
{
    sword_sidt sample;
    ubyte_sidt *buf;

    if (_optimiseLevel > 1)
    {
        sid.clock  (clock);
        xsid.clock (clock);
    }
    sample  = sid.output (8);

#ifndef XSID_USE_SID_VOLUME
    sample *= 3;
    sample += xsid.output (8);
    sample /= 4;
#endif

    // Apply volume
    sample *= _leftVolume;
    sample /= VOLUME_MAX_8BIT;
   
    //    if (_encoding == PCM_UNSIGNED)
        sample += 128;

    buf    = (ubyte_sidt *) buffer + count;
    *buf++ = (ubyte_sidt) sample;
    *buf   = (ubyte_sidt) sample;
    count += 2;
}

void sidplayer_pr::stereoOut8StereoIn (uword_sidt clock, void *buffer, udword_sidt &count)
{
    sword_sidt sampleL, sampleR;
    ubyte_sidt *buf;

    if (_optimiseLevel > 1)
    {
        sid.clock  (clock);
        sid2.clock (clock);
        xsid.clock (clock);
    }
    sampleL = sid.output  (8);
    sampleR = sid2.output (8);

#ifndef XSID_USE_SID_VOLUME
    sword_sidt sampleX;
    sampleL *= 3;
    sampleR *= 3;
    sampleX  = xsid.output (8);
    sampleL  = (sampleL + sampleX) / 4;
    sampleR  = (sampleR + sampleX) / 4;
#endif

    // Apply volume
    sampleL *= _leftVolume;
    sampleL /= VOLUME_MAX_8BIT;
    sampleR *= _rightVolume;
    sampleR /= VOLUME_MAX_8BIT;
   
    //    if (_encoding == PCM_UNSIGNED)
    //    {
        sampleL += 128;
        sampleR += 128;
	//    }

    buf    = (ubyte_sidt *) buffer + count;
    *buf++ = (ubyte_sidt) sampleL;
    *buf   = (ubyte_sidt) sampleR;
    count += 2;
}
