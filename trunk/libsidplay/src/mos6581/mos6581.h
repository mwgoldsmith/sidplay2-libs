/***************************************************************************
                          mos6581.h  -  Just redirects to the current SID
                                        emulation.  Currently this is reSID
                             -------------------
    begin                : Thu Jul 20 2000
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

#ifdef HAVE_MSWINDOWS
#   include "resid/sid.h"
#else
#   include <resid/sid.h>
#endif

