call %~dp0\objects.bat ^
	ddl ^
	%ddl-include% ^
	%ddl-exclude% ^
	true ^
	false ^
	false ^
	insert

call %~dp0\objects.bat ^
	synonym ^
	%synonym-include% ^
	%synonym-exclude% ^
	true ^
	false ^
	true ^
	insert

call %~dp0\objects.bat ^
	insert ^
	%insert-include% ^
	%insert-exclude% ^
	false ^
	true ^
	false ^
	insert

rem TODO personal: Por si lobs...
rem call %~dp0\type-export.bat loader %loader-include% %loader-exclude% false true false loader
