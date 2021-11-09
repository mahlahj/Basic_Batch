@echo off
color 30
echo =====================================================================
echo =                                                                   =
echo =                          Personalizado                            =
echo =                                                                   =
echo =====================================================================
echo.
echo.
echo Esto esta personalizado, para continuar presiona una tecla...
pause>nul

@echo off
echo =====================================================================
echo =                                                                   =
echo =               Nombre del usuario: %USERNAME%                      =
echo =               Nombre de la Computadora: %COMPUTERNAME%            =
echo =                                                                   =
echo =====================================================================
pause>nul

@echo off
echo =====================================================================
echo =                                                                   =
echo =  	             Fecha actual: %DATE%                        =
echo =          	     Hora actual: %TIME%                         =
echo =                                                                   =
echo =====================================================================
pause>nul


@echo off
echo =====================================================================
echo =                                                                   =
echo =      Creación de cadena de caracteres alfanumericos random        =
echo =                                                                   =
echo =====================================================================
pause>nul
@echo off
SETLOCAL EnableDelayedExpansion
Set _RNDLength=8
Set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET _RndAlphaNum=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
If !_count! lss %_RNDLength% goto _loop
echo La Cadena Random es !_RndAlphaNum!
pause>nul

@echo off
echo =====================================================================
echo =                                                                   =
echo =                     Abre diferentes sitios web                    =
echo =                                                                   =
echo =====================================================================
pause>nul
START https://www.google.com/
timeout /nobreak 06
START https://wikipedia.com
timeout /nobreak 06
START https://freemoviesfull.com
timeout /nobreak 06
START https://twitter.com
timeout /nobreak 06
START https://siiauescolar.siiau.udg.mx
timeout /nobreak 06
START https://www.youtube.com/
pause>nul

