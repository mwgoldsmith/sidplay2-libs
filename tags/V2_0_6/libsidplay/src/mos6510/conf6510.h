/***************************************************************************
                          config.h  -  description
                             -------------------
    begin                : Thu May 11 2000
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
#ifndef _conf6510_h_
#define _conf6510_h_

#include "sidconfig.h"

#define MOS6510_CYCLE_BASED
#define MOS6510_ACCURATE_CYCLES
#define MOS6510_SIDPLAY
//#define MOS6510_STATE_6510
//#define MOS6510_DEBUG
//#define MOS6510_FULL_DEBUG

#ifdef MOS6510_FULL_DEBUG
    #ifndef MOS6510_DEBUG
        #define MOS6510_DEBUG
    #endif // MOS6510_DEBUG
#endif // MOS6510_FULL_DEBUG

#endif // _conf6510_h_
