configString = Wscript.Arguments(0)
exportString = Wscript.Arguments(1)

Set objFSO = CreateObject("Scripting.FileSystemObject")

folderString = objFSO.GetParentFolderName(Wscript.ScriptFullName)

Set config001File = objFSO.OpenTextFile(folderString & "\objects-cfg-001.xml",1)
config001String = config001File.ReadAll
config001File.Close

Set config002File = objFSO.OpenTextFile(folderString & "\objects-cfg-002.xml",1)
config002String = config002File.ReadAll
config002File.Close

Set configFile = objFSO.CreateTextFile(configString,true)

configFile.Write config001String
configFile.Write exportString
configFile.Write config002String

configFile.Close
