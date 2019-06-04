rmdir %1 /s /q
rem TODO @CarmelonHaldon: setlocal para que no se repita??
set PATH=%5;%PATH%
%6\sdcli64.exe cart export -cart %2 -cfg %3 -log %4
rem move %1\Generado*.sql %2.sql
