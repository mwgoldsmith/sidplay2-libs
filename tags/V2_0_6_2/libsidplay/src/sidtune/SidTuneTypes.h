/*
 * /home/ms/files/source/libsidtune/RCS/SidTuneTypes.h,v
 *
 * Copyright (C) Michael Schwendt <mschwendt@yahoo.com>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef SIDTUNE_TYPES_H
#define SIDTUNE_TYPES_H

#include "SidTuneCfg.h"

#if !defined(SIDTUNE_OWN_TYPES)
#include "sidtypes.h"
#else

/* Wanted: 8-bit unsigned/signed. */
typedef unsigned char ubyte_sidt;
typedef signed char sbyte_sidt;

/* Wanted: 16-bit unsigned/signed. */
#if SID_SIZEOF_SHORT_INT >= 2
typedef unsigned short int uword_sidt;
typedef signed short int sword_sidt;
#else
typedef unsigned int uword_sidt;
typedef signed int sword_sidt;
#endif

/* Wanted: 32-bit unsigned/signed. */
#if SID_SIZEOF_INT >= 4
typedef unsigned int udword_sidt;
typedef signed int sdword_sidt;
#else
typedef unsigned long int udword_sidt;
typedef signed long int sdword_sidt;
#endif

#endif  /* SIDTUNE_OWN_TYPES */

#endif  /* SIDTUNE_TYPES_H */
