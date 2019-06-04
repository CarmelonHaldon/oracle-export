call sqlplus.bat %__connection-username% %__connection-password% %__connection-identifier% %__cart-dir%\ddl.txt %__connection-owner% %__ddl-include% %__ddl-exclude% %__instantclient-dir%
cscript sdcart.vbs %__cart-dir%\ddl.sdcart %__connection-name% %__connection-username% %__cart-dir%\ddl.txt %__connection-owner% true false
cscript config.vbs %__cart-dir%\ddl.xml false %__export-dir%\ddl
call sdcli64.bat %__export-dir%\ddl %__cart-dir%\ddl.sdcart %__cart-dir%\ddl.xml %__cart-dir%\ddl.log %__instantclient-dir% %__sqldeveloper-dir%

call sqlplus.bat %__connection-username% %__connection-password% %__connection-identifier% %__cart-dir%\synonym.txt %__connection-owner% %__synonym-include% %__synonym-exclude% %__instantclient-dir%
cscript sdcart.vbs %__cart-dir%\synonym.sdcart %__connection-name% %__connection-username% %__cart-dir%\synonym.txt %__connection-owner% true false
cscript config.vbs %__cart-dir%\synonym.xml true %__export-dir%\synonym
call sdcli64.bat %__export-dir%\synonym %__cart-dir%\synonym.sdcart %__cart-dir%\synonym.xml %__cart-dir%\synonym.log %__instantclient-dir% %__sqldeveloper-dir%

call sqlplus.bat %__connection-username% %__connection-password% %__connection-identifier% %__cart-dir%\data.txt %__connection-owner% %__data-include% %__data-exclude% %__instantclient-dir%
cscript sdcart.vbs %__cart-dir%\data.sdcart %__connection-name% %__connection-username% %__cart-dir%\data.txt %__connection-owner% false true
cscript config.vbs %__cart-dir%\data.xml false %__export-dir%\data
call sdcli64.bat %__export-dir%\data %__cart-dir%\data.sdcart %__cart-dir%\data.xml %__cart-dir%\data.log %__instantclient-dir% %__sqldeveloper-dir%
