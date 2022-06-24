rem setlocal



set objects-type=%1

set objects-include=%2
set objects-exclude=%3

set objects-meta=%4
set objects-data=%5

set objects-schema=%6
set objects-format=%7



set cart-subdir=%cart-dir%\%objects-type%
set export-subdir=%export-dir%\%objects-type%

set objects-cart=%cart-subdir%\objects.sdcart
set objects-cfg=%cart-subdir%\objects.xml
set objects-log=%cart-subdir%\objects.log
set objects-csv=%cart-subdir%\objects.csv

set export-cart=%cart-subdir%\export.sdcart
set export-cfg=%cart-subdir%\export.xml
set export-log=%cart-subdir%\export.log

rem set objects-dir=%export-dir%\%objects-type%



rmdir %cart-subdir% /s /q
mkdir %cart-subdir%

rmdir %export-subdir% /s /q
mkdir %export-subdir%



cscript %~dp0\objects-cart\objects-cart.vbs ^
	%objects-cart% ^
	%connection-name% ^
	%connection-owner% ^
	%objects-include% ^
	%objects-exclude%

cscript %~dp0\objects-cfg\objects-cfg.vbs ^
	%objects-cfg% ^
	%objects-csv%

%sqldeveloper-dir%\sqldeveloper\bin\sdcli64.exe cart export ^
	-cart %objects-cart% ^
	-cfg %objects-cfg% ^
	-log %objects-log%



cscript %~dp0\export-cart\export-cart.vbs ^
	%export-cart% ^
	%connection-name% ^
	%connection-owner% ^
	%objects-csv% ^
	%objects-meta% ^
	%objects-data%

cscript %~dp0\export-cfg\export-cfg.vbs ^
	%export-cfg% ^
	%export-subdir% ^
	%objects-schema% ^
	%objects-format%

%sqldeveloper-dir%\sqldeveloper\bin\sdcli64.exe cart export ^
	-cart %export-cart% ^
	-cfg %export-cfg% ^
	-log %export-log%



rem endlocal
