/*
 * /home/ms/files/source/libsidtune/RCS/Buffer.h,v
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

#ifndef BUFFER_H
#define BUFFER_H

#include "SidTuneTypes.h"

template <class T> class Buffer_sidtt
{
 public:
	Buffer_sidtt(void) : dummy(0)
	{
		kill();
	}

	Buffer_sidtt(T* inBuf, udword_sidt inLen) : dummy(0)
	{
		kill();
		if (inBuf!=0 && inLen!=0)
		{	
			buf = inBuf;
			bufLen = inLen;
		}
	}
	
	bool assign(T* newBuf, udword_sidt newLen)
	{
		erase();
		buf = newBuf;
		bufLen = newLen;
		return (buf!=0);
	}
	
	T* get(void) const  { return buf; }
	const udword_sidt len(void) const  { return bufLen; }
	
	T* xferPtr(void)  
	{
		T* tmpBuf = buf;
		buf = 0;
		return tmpBuf;
	}

	const udword_sidt xferLen(void)  
	{
		udword_sidt tmpBufLen = bufLen;
		bufLen = 0;
		return tmpBufLen;
	}

	T& operator[](udword_sidt index)
	{
		if (index < bufLen)
			return buf[index];
		else
			return dummy;
	}
	
	bool isEmpty(void) const  { return (buf==0); }

	void erase(void)
	{
		if (buf!=0 && bufLen!=0)
		{
#ifndef SID_HAVE_BAD_COMPILER
			delete[] buf;
#else
			delete[] (void *) buf;
#endif
		}
		kill();
	}
	
	~Buffer_sidtt(void)
	{
		erase();
	}

 private:
	T* buf;
	udword_sidt bufLen;
	T dummy;
        
	void kill(void)
	{
		buf = 0;
		bufLen = 0;
	}
	
 private:	// prevent copying
	Buffer_sidtt(const Buffer_sidtt&);
	Buffer_sidtt& operator=(Buffer_sidtt&);  
};

#endif  /* BUFFER_H */
