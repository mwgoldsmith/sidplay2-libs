/*
 * /home/ms/files/source/libsidtune/RCS/SidTuneEndian.h,v
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

#ifndef SIDTUNE_ENDIAN_H
#define SIDTUNE_ENDIAN_H

#include "SidTuneTypes.h"

#if defined(SID_WORDS_BIGENDIAN)
/* byte-order: HI..3210..LO */
#elif defined(SID_WORDS_LITTLEENDIAN)
/* byte-order: LO..0123..HI */
#else
  #error Please check source code configuration!
#endif

/* Convert high-byte and low-byte to 16-bit word.
 * Used to read 16-bit words in little-endian order. */
inline uword_sidt readEndian(ubyte_sidt hi, ubyte_sidt lo)
{
	return( ((uword_sidt)hi<<8) + (uword_sidt)lo );
}

/* Convert high bytes and low bytes of MSW and LSW to 32-bit word.
 * Used to read 32-bit words in little-endian order. */
inline udword_sidt readEndian(ubyte_sidt hihi, ubyte_sidt hilo,
							 ubyte_sidt hi, ubyte_sidt lo)
{
	return( ((udword_sidt)hihi<<24) + ((udword_sidt)hilo<<16) + 
			((udword_sidt)hi<<8) + (udword_sidt)lo );
}

/* Read a little-endian 16-bit word from two bytes in memory. */
inline uword_sidt readLEword(const ubyte_sidt ptr[2])
{
#if defined(SID_WORDS_LITTLEENDIAN) && defined(SID_OPTIMIZE_ENDIAN_ACCESS)
	return *((uword_sidt*)ptr);
#else
	return readEndian(ptr[1],ptr[0]);
#endif
}

/* Write a big-endian 16-bit word to two bytes in memory. */
inline void writeLEword(ubyte_sidt ptr[2], uword_sidt someWord)
{
#if defined(SID_WORDS_LITTLEENDIAN) && defined(SID_OPTIMIZE_ENDIAN_ACCESS)
	*((uword_sidt*)ptr) = someWord;
#else
	ptr[0] = (someWord&0xFF);
	ptr[1] = (someWord>>8);
#endif
}

/* Read a big-endian 16-bit word from two bytes in memory. */
inline uword_sidt readBEword(const ubyte_sidt ptr[2])
{
#if defined(SID_WORDS_BIGENDIAN) && defined(SID_OPTIMIZE_ENDIAN_ACCESS)
	return *((uword_sidt*)ptr);
#else
	return ( (((uword_sidt)ptr[0])<<8) + ((uword_sidt)ptr[1]) );
#endif
}

/* Read a big-endian 32-bit word from four bytes in memory. */
inline udword_sidt readBEdword(const ubyte_sidt ptr[4])
{
#if defined(SID_WORDS_BIGENDIAN) && defined(SID_OPTIMIZE_ENDIAN_ACCESS)
	return *((udword_sidt*)ptr);
#else
	return ( (((udword_sidt)ptr[0])<<24) + (((udword_sidt)ptr[1])<<16)
			+ (((udword_sidt)ptr[2])<<8) + ((udword_sidt)ptr[3]) );
#endif
}

/* Write a big-endian 16-bit word to two bytes in memory. */
inline void writeBEword(ubyte_sidt ptr[2], uword_sidt someWord)
{
#if defined(SID_WORDS_BIGENDIAN) && defined(SID_OPTIMIZE_ENDIAN_ACCESS)
	*((uword_sidt*)ptr) = someWord;
#else
	ptr[0] = someWord>>8;
	ptr[1] = someWord&0xFF;
#endif
}

/* Write a big-endian 32-bit word to four bytes in memory. */
inline void writeBEdword(ubyte_sidt ptr[4], udword_sidt someDword)
{
#if defined(SID_WORDS_BIGENDIAN) && defined(SID_OPTIMIZE_ENDIAN_ACCESS)
	*((udword_sidt*)ptr) = someDword;
#else
	ptr[0] = someDword >> 24;
	ptr[1] = (someDword>>16) & 0xFF;
	ptr[2] = (someDword>>8) & 0xFF;
	ptr[3] = someDword & 0xFF;
#endif
}

/* Convert 16-bit little-endian word to big-endian order or vice versa. */
inline uword_sidt convertEndianess( uword_sidt intelword )
{
	uword_sidt hi = intelword>>8;
	uword_sidt lo = intelword&0xFF;
	return( (lo<<8) + hi );
}

/* Convert 32-bit little-endian word to big-endian order or vice versa. */
inline udword_sidt convertEndianess( udword_sidt inteldword )
{
	udword_sidt hihi = inteldword>>24;
	udword_sidt hilo = (inteldword>>16) & 0xFF;
	udword_sidt hi = (inteldword>>8) & 0xFF;
	udword_sidt lo = inteldword & 0xFF;
	return( (lo<<24) + (hi<<16) + (hilo<<8) + hihi );
}

#endif  /* SIDTUNE_ENDIAN_H */
