# Microsoft Developer Studio Generated NMAKE File, Based on libsidplay.dsp
!IF "$(CFG)" == ""
CFG=libsidplay - Win32 Debug
!MESSAGE No configuration specified. Defaulting to libsidplay - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "libsidplay - Win32 Release" && "$(CFG)" !=\
 "libsidplay - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libsidplay.mak" CFG="libsidplay - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libsidplay - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "libsidplay - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "libsidplay - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\libsidplay.exe"

!ELSE 

ALL : "$(OUTDIR)\libsidplay.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\audiodrv.obj"
	-@erase "$(INTDIR)\envelope.obj"
	-@erase "$(INTDIR)\extfilt.obj"
	-@erase "$(INTDIR)\fake6526.obj"
	-@erase "$(INTDIR)\filter.obj"
	-@erase "$(INTDIR)\IconInfo.obj"
	-@erase "$(INTDIR)\InfoFile.obj"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\mos6510.obj"
	-@erase "$(INTDIR)\MUS.obj"
	-@erase "$(INTDIR)\pot.obj"
	-@erase "$(INTDIR)\PP20.obj"
	-@erase "$(INTDIR)\PSID.obj"
	-@erase "$(INTDIR)\sid.obj"
	-@erase "$(INTDIR)\sidmixer.obj"
	-@erase "$(INTDIR)\sidplayer.obj"
	-@erase "$(INTDIR)\SidTune.obj"
	-@erase "$(INTDIR)\SidTuneTools.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\version.obj"
	-@erase "$(INTDIR)\voice.obj"
	-@erase "$(INTDIR)\wave.obj"
	-@erase "$(INTDIR)\wave6581__ST.obj"
	-@erase "$(INTDIR)\wave6581_P_T.obj"
	-@erase "$(INTDIR)\wave6581_PS_.obj"
	-@erase "$(INTDIR)\wave6581_PST.obj"
	-@erase "$(INTDIR)\wave8580__ST.obj"
	-@erase "$(INTDIR)\wave8580_P_T.obj"
	-@erase "$(INTDIR)\wave8580_PS_.obj"
	-@erase "$(INTDIR)\wave8580_PST.obj"
	-@erase "$(INTDIR)\xsid.obj"
	-@erase "$(OUTDIR)\libsidplay.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D\
 "_MBCS" /Fp"$(INTDIR)\libsidplay.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD\
 /c 
CPP_OBJS=.\Release/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libsidplay.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib winmm.lib dsound.lib dxguid.lib /nologo /subsystem:console\
 /incremental:no /pdb:"$(OUTDIR)\libsidplay.pdb" /machine:I386\
 /out:"$(OUTDIR)\libsidplay.exe" 
LINK32_OBJS= \
	"$(INTDIR)\audiodrv.obj" \
	"$(INTDIR)\envelope.obj" \
	"$(INTDIR)\extfilt.obj" \
	"$(INTDIR)\fake6526.obj" \
	"$(INTDIR)\filter.obj" \
	"$(INTDIR)\IconInfo.obj" \
	"$(INTDIR)\InfoFile.obj" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\mos6510.obj" \
	"$(INTDIR)\MUS.obj" \
	"$(INTDIR)\pot.obj" \
	"$(INTDIR)\PP20.obj" \
	"$(INTDIR)\PSID.obj" \
	"$(INTDIR)\sid.obj" \
	"$(INTDIR)\sidmixer.obj" \
	"$(INTDIR)\sidplayer.obj" \
	"$(INTDIR)\SidTune.obj" \
	"$(INTDIR)\SidTuneTools.obj" \
	"$(INTDIR)\version.obj" \
	"$(INTDIR)\voice.obj" \
	"$(INTDIR)\wave.obj" \
	"$(INTDIR)\wave6581__ST.obj" \
	"$(INTDIR)\wave6581_P_T.obj" \
	"$(INTDIR)\wave6581_PS_.obj" \
	"$(INTDIR)\wave6581_PST.obj" \
	"$(INTDIR)\wave8580__ST.obj" \
	"$(INTDIR)\wave8580_P_T.obj" \
	"$(INTDIR)\wave8580_PS_.obj" \
	"$(INTDIR)\wave8580_PST.obj" \
	"$(INTDIR)\xsid.obj"

"$(OUTDIR)\libsidplay.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\libsidplay.exe"

!ELSE 

ALL : "$(OUTDIR)\libsidplay.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\audiodrv.obj"
	-@erase "$(INTDIR)\envelope.obj"
	-@erase "$(INTDIR)\extfilt.obj"
	-@erase "$(INTDIR)\fake6526.obj"
	-@erase "$(INTDIR)\filter.obj"
	-@erase "$(INTDIR)\IconInfo.obj"
	-@erase "$(INTDIR)\InfoFile.obj"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\mos6510.obj"
	-@erase "$(INTDIR)\MUS.obj"
	-@erase "$(INTDIR)\pot.obj"
	-@erase "$(INTDIR)\PP20.obj"
	-@erase "$(INTDIR)\PSID.obj"
	-@erase "$(INTDIR)\sid.obj"
	-@erase "$(INTDIR)\sidmixer.obj"
	-@erase "$(INTDIR)\sidplayer.obj"
	-@erase "$(INTDIR)\SidTune.obj"
	-@erase "$(INTDIR)\SidTuneTools.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\version.obj"
	-@erase "$(INTDIR)\voice.obj"
	-@erase "$(INTDIR)\wave.obj"
	-@erase "$(INTDIR)\wave6581__ST.obj"
	-@erase "$(INTDIR)\wave6581_P_T.obj"
	-@erase "$(INTDIR)\wave6581_PS_.obj"
	-@erase "$(INTDIR)\wave6581_PST.obj"
	-@erase "$(INTDIR)\wave8580__ST.obj"
	-@erase "$(INTDIR)\wave8580_P_T.obj"
	-@erase "$(INTDIR)\wave8580_PS_.obj"
	-@erase "$(INTDIR)\wave8580_PST.obj"
	-@erase "$(INTDIR)\xsid.obj"
	-@erase "$(OUTDIR)\libsidplay.exe"
	-@erase "$(OUTDIR)\libsidplay.ilk"
	-@erase "$(OUTDIR)\libsidplay.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D\
 "_MBCS" /Fp"$(INTDIR)\libsidplay.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD\
 /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libsidplay.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib winmm.lib dsound.lib dxguid.lib /nologo /subsystem:console\
 /incremental:yes /pdb:"$(OUTDIR)\libsidplay.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)\libsidplay.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\audiodrv.obj" \
	"$(INTDIR)\envelope.obj" \
	"$(INTDIR)\extfilt.obj" \
	"$(INTDIR)\fake6526.obj" \
	"$(INTDIR)\filter.obj" \
	"$(INTDIR)\IconInfo.obj" \
	"$(INTDIR)\InfoFile.obj" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\mos6510.obj" \
	"$(INTDIR)\MUS.obj" \
	"$(INTDIR)\pot.obj" \
	"$(INTDIR)\PP20.obj" \
	"$(INTDIR)\PSID.obj" \
	"$(INTDIR)\sid.obj" \
	"$(INTDIR)\sidmixer.obj" \
	"$(INTDIR)\sidplayer.obj" \
	"$(INTDIR)\SidTune.obj" \
	"$(INTDIR)\SidTuneTools.obj" \
	"$(INTDIR)\version.obj" \
	"$(INTDIR)\voice.obj" \
	"$(INTDIR)\wave.obj" \
	"$(INTDIR)\wave6581__ST.obj" \
	"$(INTDIR)\wave6581_P_T.obj" \
	"$(INTDIR)\wave6581_PS_.obj" \
	"$(INTDIR)\wave6581_PST.obj" \
	"$(INTDIR)\wave8580__ST.obj" \
	"$(INTDIR)\wave8580_P_T.obj" \
	"$(INTDIR)\wave8580_PS_.obj" \
	"$(INTDIR)\wave8580_PST.obj" \
	"$(INTDIR)\xsid.obj"

"$(OUTDIR)\libsidplay.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(CFG)" == "libsidplay - Win32 Release" || "$(CFG)" ==\
 "libsidplay - Win32 Debug"
SOURCE=..\src\audio\directx\audiodrv.cpp
DEP_CPP_AUDIO=\
	"..\sidtypes.h"\
	"..\src\audio\AudioBase.h"\
	"..\src\audio\AudioConfig.h"\
	"..\src\audio\directx\audiodrv.h"\
	".\config.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\audiodrv.obj" : $(SOURCE) $(DEP_CPP_AUDIO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\envelope.cpp
DEP_CPP_ENVEL=\
	"..\src\mos6581\resid\envelope.h"\
	"..\src\mos6581\resid\siddefs.h"\
	

"$(INTDIR)\envelope.obj" : $(SOURCE) $(DEP_CPP_ENVEL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\extfilt.cpp
DEP_CPP_EXTFI=\
	"..\src\mos6581\resid\extfilt.h"\
	"..\src\mos6581\resid\siddefs.h"\
	

"$(INTDIR)\extfilt.obj" : $(SOURCE) $(DEP_CPP_EXTFI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\fake6526.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_FAKE6=\
	"..\sidtypes.h"\
	"..\src\c64env.h"\
	"..\src\fake6526.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\fake6526.obj" : $(SOURCE) $(DEP_CPP_FAKE6) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_FAKE6=\
	"..\sidtypes.h"\
	"..\src\c64env.h"\
	"..\src\fake6526.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\fake6526.obj" : $(SOURCE) $(DEP_CPP_FAKE6) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\mos6581\resid\filter.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_FILTE=\
	"..\src\mos6581\resid\filter.h"\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\spline.h"\
	

"$(INTDIR)\filter.obj" : $(SOURCE) $(DEP_CPP_FILTE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_FILTE=\
	"..\src\mos6581\resid\filter.h"\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\spline.h"\
	

"$(INTDIR)\filter.obj" : $(SOURCE) $(DEP_CPP_FILTE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\sidtune\IconInfo.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_ICONI=\
	"..\sidtypes.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTools.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\IconInfo.obj" : $(SOURCE) $(DEP_CPP_ICONI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_ICONI=\
	"..\sidtypes.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTools.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\IconInfo.obj" : $(SOURCE) $(DEP_CPP_ICONI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\sidtune\InfoFile.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_INFOF=\
	"..\sidtypes.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTools.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\InfoFile.obj" : $(SOURCE) $(DEP_CPP_INFOF) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_INFOF=\
	"..\sidtypes.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTools.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\InfoFile.obj" : $(SOURCE) $(DEP_CPP_INFOF) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\main.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_MAIN_=\
	"..\sidtypes.h"\
	"..\src\audio\AudioBase.h"\
	"..\src\audio\AudioConfig.h"\
	"..\src\audio\AudioDrv.h"\
	"..\src\audio\directx\audiodrv.h"\
	"..\src\audio\oss\audiodrv.h"\
	"..\src\sidplayer.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\config.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\main.obj" : $(SOURCE) $(DEP_CPP_MAIN_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_MAIN_=\
	"..\sidtypes.h"\
	"..\src\audio\AudioBase.h"\
	"..\src\audio\AudioConfig.h"\
	"..\src\audio\AudioDrv.h"\
	"..\src\audio\directx\audiodrv.h"\
	"..\src\audio\oss\audiodrv.h"\
	"..\src\sidplayer.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\config.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\main.obj" : $(SOURCE) $(DEP_CPP_MAIN_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\mos6510\mos6510.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_MOS65=\
	"..\sidtypes.h"\
	"..\src\c64env.h"\
	"..\src\mos6510\conf6510.h"\
	"..\src\mos6510\cycle_based\mos6510c.h"\
	"..\src\mos6510\cycle_based\mos6510c.i"\
	"..\src\mos6510\cycle_based\sid6510c.h"\
	"..\src\mos6510\cycle_based\sid6510c.i"\
	"..\src\mos6510\mos6510.h"\
	"..\src\mos6510\opcodes.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\mos6510.obj" : $(SOURCE) $(DEP_CPP_MOS65) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_MOS65=\
	"..\sidtypes.h"\
	"..\src\c64env.h"\
	"..\src\mos6510\conf6510.h"\
	"..\src\mos6510\cycle_based\mos6510c.h"\
	"..\src\mos6510\cycle_based\mos6510c.i"\
	"..\src\mos6510\cycle_based\sid6510c.h"\
	"..\src\mos6510\cycle_based\sid6510c.i"\
	"..\src\mos6510\mos6510.h"\
	"..\src\mos6510\opcodes.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\mos6510.obj" : $(SOURCE) $(DEP_CPP_MOS65) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\sidtune\MUS.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_MUS_C=\
	"..\sidtypes.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\MUS.obj" : $(SOURCE) $(DEP_CPP_MUS_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_MUS_C=\
	"..\sidtypes.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\MUS.obj" : $(SOURCE) $(DEP_CPP_MUS_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\mos6581\resid\pot.cpp
DEP_CPP_POT_C=\
	"..\src\mos6581\resid\pot.h"\
	"..\src\mos6581\resid\siddefs.h"\
	

"$(INTDIR)\pot.obj" : $(SOURCE) $(DEP_CPP_POT_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\sidtune\PP20.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_PP20_=\
	"..\sidtypes.h"\
	"..\src\sidtune\PP20.h"\
	"..\src\sidtune\PP20_Defs.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\PP20.obj" : $(SOURCE) $(DEP_CPP_PP20_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_PP20_=\
	"..\sidtypes.h"\
	"..\src\sidtune\PP20.h"\
	"..\src\sidtune\PP20_Defs.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\PP20.obj" : $(SOURCE) $(DEP_CPP_PP20_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\sidtune\PSID.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_PSID_=\
	"..\sidtypes.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\PSID.obj" : $(SOURCE) $(DEP_CPP_PSID_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_PSID_=\
	"..\sidtypes.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\PSID.obj" : $(SOURCE) $(DEP_CPP_PSID_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\mos6581\resid\sid.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_SID_C=\
	"..\src\mos6581\resid\envelope.h"\
	"..\src\mos6581\resid\extfilt.h"\
	"..\src\mos6581\resid\filter.h"\
	"..\src\mos6581\resid\pot.h"\
	"..\src\mos6581\resid\sid.h"\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\spline.h"\
	"..\src\mos6581\resid\voice.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\sid.obj" : $(SOURCE) $(DEP_CPP_SID_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_SID_C=\
	"..\src\mos6581\resid\envelope.h"\
	"..\src\mos6581\resid\extfilt.h"\
	"..\src\mos6581\resid\filter.h"\
	"..\src\mos6581\resid\pot.h"\
	"..\src\mos6581\resid\sid.h"\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\spline.h"\
	"..\src\mos6581\resid\voice.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\sid.obj" : $(SOURCE) $(DEP_CPP_SID_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\sidmixer.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_SIDMI=\
	"..\sidtypes.h"\
	"..\src\c64env.h"\
	"..\src\fake6526.h"\
	"..\src\mos6510\conf6510.h"\
	"..\src\mos6510\cycle_based\mos6510c.h"\
	"..\src\mos6510\cycle_based\sid6510c.h"\
	"..\src\mos6510\mos6510.h"\
	"..\src\mos6510\opcodes.h"\
	"..\src\mos6581\mos6581.h"\
	"..\src\mos6581\resid\envelope.h"\
	"..\src\mos6581\resid\extfilt.h"\
	"..\src\mos6581\resid\filter.h"\
	"..\src\mos6581\resid\pot.h"\
	"..\src\mos6581\resid\sid.h"\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\spline.h"\
	"..\src\mos6581\resid\voice.h"\
	"..\src\mos6581\resid\wave.h"\
	"..\src\sidplayer.h"\
	"..\src\sidplayer_pr.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	"..\src\xsid\xsid.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\sidmixer.obj" : $(SOURCE) $(DEP_CPP_SIDMI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_SIDMI=\
	"..\sidtypes.h"\
	"..\src\c64env.h"\
	"..\src\fake6526.h"\
	"..\src\mos6510\conf6510.h"\
	"..\src\mos6510\cycle_based\mos6510c.h"\
	"..\src\mos6510\cycle_based\sid6510c.h"\
	"..\src\mos6510\mos6510.h"\
	"..\src\mos6510\opcodes.h"\
	"..\src\mos6581\mos6581.h"\
	"..\src\mos6581\resid\envelope.h"\
	"..\src\mos6581\resid\extfilt.h"\
	"..\src\mos6581\resid\filter.h"\
	"..\src\mos6581\resid\pot.h"\
	"..\src\mos6581\resid\sid.h"\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\spline.h"\
	"..\src\mos6581\resid\voice.h"\
	"..\src\mos6581\resid\wave.h"\
	"..\src\sidplayer.h"\
	"..\src\sidplayer_pr.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	"..\src\xsid\xsid.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\sidmixer.obj" : $(SOURCE) $(DEP_CPP_SIDMI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\sidplayer.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_SIDPL=\
	"..\sidtypes.h"\
	"..\src\c64env.h"\
	"..\src\fake6526.h"\
	"..\src\mos6510\conf6510.h"\
	"..\src\mos6510\cycle_based\mos6510c.h"\
	"..\src\mos6510\cycle_based\sid6510c.h"\
	"..\src\mos6510\mos6510.h"\
	"..\src\mos6510\opcodes.h"\
	"..\src\mos6581\mos6581.h"\
	"..\src\mos6581\resid\envelope.h"\
	"..\src\mos6581\resid\extfilt.h"\
	"..\src\mos6581\resid\filter.h"\
	"..\src\mos6581\resid\pot.h"\
	"..\src\mos6581\resid\sid.h"\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\spline.h"\
	"..\src\mos6581\resid\voice.h"\
	"..\src\mos6581\resid\wave.h"\
	"..\src\sidplayer.h"\
	"..\src\sidplayer_pr.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	"..\src\xsid\xsid.h"\
	".\config.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\sidplayer.obj" : $(SOURCE) $(DEP_CPP_SIDPL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_SIDPL=\
	"..\sidtypes.h"\
	"..\src\c64env.h"\
	"..\src\fake6526.h"\
	"..\src\mos6510\conf6510.h"\
	"..\src\mos6510\cycle_based\mos6510c.h"\
	"..\src\mos6510\cycle_based\sid6510c.h"\
	"..\src\mos6510\mos6510.h"\
	"..\src\mos6510\opcodes.h"\
	"..\src\mos6581\mos6581.h"\
	"..\src\mos6581\resid\envelope.h"\
	"..\src\mos6581\resid\extfilt.h"\
	"..\src\mos6581\resid\filter.h"\
	"..\src\mos6581\resid\pot.h"\
	"..\src\mos6581\resid\sid.h"\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\spline.h"\
	"..\src\mos6581\resid\voice.h"\
	"..\src\mos6581\resid\wave.h"\
	"..\src\sidplayer.h"\
	"..\src\sidplayer_pr.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	"..\src\xsid\xsid.h"\
	".\config.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\sidplayer.obj" : $(SOURCE) $(DEP_CPP_SIDPL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\sidtune\SidTune.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_SIDTU=\
	"..\sidtypes.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\PP20.h"\
	"..\src\sidtune\PP20_Defs.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTools.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\SidTune.obj" : $(SOURCE) $(DEP_CPP_SIDTU) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_SIDTU=\
	"..\sidtypes.h"\
	"..\src\sidtune\Buffer.h"\
	"..\src\sidtune\PP20.h"\
	"..\src\sidtune\PP20_Defs.h"\
	"..\src\sidtune\SidTune.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneEndian.h"\
	"..\src\sidtune\SidTuneInfo.h"\
	"..\src\sidtune\SidTuneTools.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	"..\src\sidtune\SmartPtr.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\SidTune.obj" : $(SOURCE) $(DEP_CPP_SIDTU) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\sidtune\SidTuneTools.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_SIDTUN=\
	"..\sidtypes.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneTools.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\SidTuneTools.obj" : $(SOURCE) $(DEP_CPP_SIDTUN) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_SIDTUN=\
	"..\sidtypes.h"\
	"..\src\sidtune\SidTuneCfg.h"\
	"..\src\sidtune\SidTuneTools.h"\
	"..\src\sidtune\SidTuneTypes.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\SidTuneTools.obj" : $(SOURCE) $(DEP_CPP_SIDTUN) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\mos6581\resid\version.cpp
DEP_CPP_VERSI=\
	"..\src\mos6581\resid\siddefs.h"\
	

"$(INTDIR)\version.obj" : $(SOURCE) $(DEP_CPP_VERSI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\voice.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_VOICE=\
	"..\src\mos6581\resid\envelope.h"\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\voice.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\voice.obj" : $(SOURCE) $(DEP_CPP_VOICE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_VOICE=\
	"..\src\mos6581\resid\envelope.h"\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\voice.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\voice.obj" : $(SOURCE) $(DEP_CPP_VOICE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\src\mos6581\resid\wave.cpp
DEP_CPP_WAVE_=\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\wave.obj" : $(SOURCE) $(DEP_CPP_WAVE_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\wave6581__ST.cpp
DEP_CPP_WAVE6=\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\wave6581__ST.obj" : $(SOURCE) $(DEP_CPP_WAVE6) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\wave6581_P_T.cpp
DEP_CPP_WAVE65=\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\wave6581_P_T.obj" : $(SOURCE) $(DEP_CPP_WAVE65) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\wave6581_PS_.cpp
DEP_CPP_WAVE658=\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\wave6581_PS_.obj" : $(SOURCE) $(DEP_CPP_WAVE658) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\wave6581_PST.cpp
DEP_CPP_WAVE6581=\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\wave6581_PST.obj" : $(SOURCE) $(DEP_CPP_WAVE6581) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\wave8580__ST.cpp
DEP_CPP_WAVE8=\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\wave8580__ST.obj" : $(SOURCE) $(DEP_CPP_WAVE8) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\wave8580_P_T.cpp
DEP_CPP_WAVE85=\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\wave8580_P_T.obj" : $(SOURCE) $(DEP_CPP_WAVE85) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\wave8580_PS_.cpp
DEP_CPP_WAVE858=\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\wave8580_PS_.obj" : $(SOURCE) $(DEP_CPP_WAVE858) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\mos6581\resid\wave8580_PST.cpp
DEP_CPP_WAVE8580=\
	"..\src\mos6581\resid\siddefs.h"\
	"..\src\mos6581\resid\wave.h"\
	

"$(INTDIR)\wave8580_PST.obj" : $(SOURCE) $(DEP_CPP_WAVE8580) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\src\xsid\xsid.cpp

!IF  "$(CFG)" == "libsidplay - Win32 Release"

DEP_CPP_XSID_=\
	"..\sidtypes.h"\
	"..\src\xsid\xsid.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\xsid.obj" : $(SOURCE) $(DEP_CPP_XSID_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "libsidplay - Win32 Debug"

DEP_CPP_XSID_=\
	"..\sidtypes.h"\
	"..\src\xsid\xsid.h"\
	".\sidconfig.h"\
	

"$(INTDIR)\xsid.obj" : $(SOURCE) $(DEP_CPP_XSID_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 


!ENDIF 

