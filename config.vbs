configString = Wscript.Arguments(0)
schemaString = Wscript.Arguments(1)
exportString = Wscript.Arguments(2)

Set objFSO = CreateObject("Scripting.FileSystemObject")

if (objFSO.FileExists(configString)) then
	objFSO.DeleteFile configString
end if

Set config001File = objFSO.OpenTextFile("config-001.xml",1)
config001String = config001File.ReadAll
config001File.Close

Set config002File = objFSO.OpenTextFile("config-002.xml",1)
config002String = config002File.ReadAll
config002File.Close

Set config003File = objFSO.OpenTextFile("config-003.xml",1)
config003String = config003File.ReadAll
config003File.Close

Set configFile = objFSO.CreateTextFile(configString,true)

configFile.Write config001String
configFile.Write schemaString
configFile.Write config002String
configFile.Write exportString
configFile.Write config003String

configFile.Close
