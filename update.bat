@echo off
:loop
Cls & Color 07
Echo WHAT BIBLE verse i need to remember?
Echo.
echo.
set /p ayat=Ayat: 
IF "%ayat%"=="" ( 
    Cls & Color 0C
	echo.
    echo Ayat tidak boleh kosong!
    Timeout /T 1 /NoBreak>nul
    goto loop
) ELSE (
    Goto Next2
)

:Next2
set /p content=Content: 
IF "%content%"=="" ( 
    Cls & Color 0C
	echo.
    echo Isi Content Tidak Boleh Kosong!
    Timeout /T 1 /NoBreak>nul
    goto Result1
) ELSE (
    Goto Next3
)
:Result1
Cls & Color 07
Echo WHAT BIBLE verse i need to remember?
Echo.
echo.
echo Ayat: %Ayat%
Goto Next2

:Next3
Echo [Variables] > Notes.txt
Echo Item1=%ayat% >> Notes.txt
Echo Item2="%content%" >> Notes.txt
"%PROGRAMFILES%\Rainmeter\Rainmeter.exe" !Refresh "Ingat Ayat\" "Main.ini"