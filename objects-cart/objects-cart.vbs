cartString = Wscript.Arguments(0)
nameString = Wscript.Arguments(1)
ownerString = Wscript.Arguments(2)
includeString = Wscript.Arguments(3)
excludeString = Wscript.Arguments(4)

Set objFSO = CreateObject("Scripting.FileSystemObject")

' TODO personal: https://stackoverflow.com/questions/14677199/replacing-dp0-in-vbscript
folderString = objFSO.GetParentFolderName(Wscript.ScriptFullName)

Set cart001File = objFSO.OpenTextFile(folderString & "\objects-cart-001.xml",1)
cart001String = cart001File.ReadAll
cart001File.Close

Set cart002File = objFSO.OpenTextFile(folderString & "\objects-cart-002.xml",1)
cart002String = cart002File.ReadAll
cart002File.Close

Set cart003File = objFSO.OpenTextFile(folderString & "\objects-cart-003.xml",1)
cart003String = cart003File.ReadAll
cart003File.Close

Set cart004File = objFSO.OpenTextFile(folderString & "\objects-cart-004.xml",1)
cart004String = cart004File.ReadAll
cart004File.Close

Set cart005File = objFSO.OpenTextFile(folderString & "\objects-cart-005.xml",1)
cart005String = cart005File.ReadAll
cart005File.Close

Set cart006File = objFSO.OpenTextFile(folderString & "\objects-cart-006.xml",1)
cart006String = cart006File.ReadAll
cart006File.Close

Set cart007File = objFSO.OpenTextFile(folderString & "\objects-cart-007.xml",1)
cart007String = cart007File.ReadAll
cart007File.Close

Set cart008File = objFSO.OpenTextFile(folderString & "\objects-cart-008.xml",1)
cart008String = cart008File.ReadAll
cart008File.Close

Set cartFile = objFSO.CreateTextFile(cartString,true)

cartFile.Write cart001String
cartFile.Write nameString
cartFile.Write cart002String
cartFile.Write nameString
cartFile.Write cart003String
cartFile.Write ownerString
cartFile.Write cart004String
cartFile.Write nameString
cartFile.Write cart005String
cartFile.Write ownerString
cartFile.Write cart006String
cartFile.Write includeString
cartFile.Write cart007String
cartFile.Write excludeString
cartFile.Write cart008String

cartFile.Close
