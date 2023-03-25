@rem ---------------------------------------------------------------------------
@rem Macro Toolbar Display Wizard for Delphi 7
@rem
@rem Script used to create zip file containing release files.
@rem
@rem Copyright (C) Peter Johnson (www.delphidabbler.com), 2007
@rem
@rem v1.0 of 10 Jun 2007 - First version.
@rem ---------------------------------------------------------------------------

@echo off

cd ..

set OutFile=Release\dd-mtdwiz.zip
del %OutFile%

zip %OutFile% -9 DDabMacroTBarDisplay.dpk
zip %OutFile% -9 DDabMacroTBarDisplayWiz.pas
zip %OutFile% -9 VDDabMacroTBarDisplay.res
zip %OutFile% -9 VDDabMacroTBarDisplay.vi

zip %OutFile% -j -9 Docs\ChangeLog.txt
zip %OutFile% -j -9 Docs\MPL.txt
zip %OutFile% -j -9 Docs\ReadMe.htm

cd DevTools