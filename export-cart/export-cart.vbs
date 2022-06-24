cartString = Wscript.Arguments(0)
nameString = Wscript.Arguments(1)
ownerString = Wscript.Arguments(2)
objectsString = Wscript.Arguments(3)
metaString = Wscript.Arguments(4)
dataString = Wscript.Arguments(5)

Set objFSO = CreateObject("Scripting.FileSystemObject")

folderString = objFSO.GetParentFolderName(Wscript.ScriptFullName)

Set cart001File = objFSO.OpenTextFile(folderString & "\export-cart-001.xml",1)
cart001String = cart001File.ReadAll
cart001File.Close

Set cart002File = objFSO.OpenTextFile(folderString & "\export-cart-002.xml",1)
cart002String = cart002File.ReadAll
cart002File.Close

Set cart003File = objFSO.OpenTextFile(folderString & "\export-cart-003.xml",1)
cart003String = cart003File.ReadAll
cart003File.Close

Set cart004File = objFSO.OpenTextFile(folderString & "\export-cart-004.xml",1)
cart004String = cart004File.ReadAll
cart004File.Close

Set cart005File = objFSO.OpenTextFile(folderString & "\export-cart-005.xml",1)
cart005String = cart005File.ReadAll
cart005File.Close

Set dbobject001File = objFSO.OpenTextFile(folderString & "\export-dbobject-001.xml",1)
dbobject001String = dbobject001File.ReadAll
dbobject001File.Close

Set dbobject002File = objFSO.OpenTextFile(folderString & "\export-dbobject-002.xml",1)
dbobject002String = dbobject002File.ReadAll
dbobject002File.Close

Set dbobject003File = objFSO.OpenTextFile(folderString & "\export-dbobject-003.xml",1)
dbobject003String = dbobject003File.ReadAll
dbobject003File.Close

Set dbobject004File = objFSO.OpenTextFile(folderString & "\export-dbobject-004.xml",1)
dbobject004String = dbobject004File.ReadAll
dbobject004File.Close

Set dbobject005File = objFSO.OpenTextFile(folderString & "\export-dbobject-005.xml",1)
dbobject005String = dbobject005File.ReadAll
dbobject005File.Close

Set dbobject006File = objFSO.OpenTextFile(folderString & "\export-dbobject-006.xml",1)
dbobject006String = dbobject006File.ReadAll
dbobject006File.Close

Set dbobject007File = objFSO.OpenTextFile(folderString & "\export-dbobject-007.xml",1)
dbobject007String = dbobject007File.ReadAll
dbobject007File.Close

Set cartFile = objFSO.CreateTextFile(cartString,true)

cartFile.Write cart001String
cartFile.Write nameString
cartFile.Write cart002String
cartFile.Write nameString
cartFile.Write cart003String
cartFile.Write ownerString
cartFile.Write cart004String

if objFSO.FileExists(objectsString) Then

	Set objectsFile = objFSO.OpenTextFile(objectsString,1)

	Do while NOT objectsFile.AtEndOfStream

		arrStr = split(objectsFile.ReadLine,",")

		cartFile.Write dbobject001String
		cartFile.Write nameString
		cartFile.Write dbobject002String
'		cartFile.Write arrStr(0)
		cartFile.Write arrStr(5)
		cartFile.Write dbobject003String
		cartFile.Write ownerString
		cartFile.Write dbobject004String
		cartFile.Write arrStr(1)
		cartFile.Write dbobject005String
		cartFile.Write metaString
		cartFile.Write dbobject006String
		cartFile.Write dataString
		cartFile.Write dbobject007String

	Loop

	objectsFile.Close

End If

cartFile.Write cart005String

cartFile.Close
