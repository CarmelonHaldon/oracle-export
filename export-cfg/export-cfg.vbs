configString = Wscript.Arguments(0)
exportString = Wscript.Arguments(1)
schemaString = Wscript.Arguments(2)
formatString = Wscript.Arguments(3)

Set objFSO = CreateObject("Scripting.FileSystemObject")

folderString = objFSO.GetParentFolderName(Wscript.ScriptFullName)

Set config001File = objFSO.OpenTextFile(folderString & "\export-cfg-001.xml",1)
config001String = config001File.ReadAll
config001File.Close

Set config002File = objFSO.OpenTextFile(folderString & "\export-cfg-002.xml",1)
config002String = config002File.ReadAll
config002File.Close

Set config003File = objFSO.OpenTextFile(folderString & "\export-cfg-003.xml",1)
config003String = config003File.ReadAll
config003File.Close

Set config004File = objFSO.OpenTextFile(folderString & "\export-cfg-004.xml",1)
config004String = config004File.ReadAll
config004File.Close

Set configFile = objFSO.CreateTextFile(configString,true)

configFile.Write config001String
configFile.Write schemaString
configFile.Write config002String
configFile.Write formatString
configFile.Write config003String
configFile.Write exportString
configFile.Write config004String

configFile.Close
