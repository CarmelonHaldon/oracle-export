cartString = Wscript.Arguments(0)
nameString = Wscript.Arguments(1)
usernameString = Wscript.Arguments(2)
txtString = Wscript.Arguments(3)
ownerString = Wscript.Arguments(4)
metaString = Wscript.Arguments(5)
dataString = Wscript.Arguments(6)

Set objFSO = CreateObject("Scripting.FileSystemObject")

if (objFSO.FileExists(cartString)) then
	objFSO.DeleteFile cartString
end if

Set sdcartCart001File = objFSO.OpenTextFile("sdcart-cart-001.xml",1)
sdcartCart001String = sdcartCart001File.ReadAll
sdcartCart001File.Close

Set sdcartCart002File = objFSO.OpenTextFile("sdcart-cart-002.xml",1)
sdcartCart002String = sdcartCart002File.ReadAll
sdcartCart002File.Close

Set sdcartCart003File = objFSO.OpenTextFile("sdcart-cart-003.xml",1)
sdcartCart003String = sdcartCart003File.ReadAll
sdcartCart003File.Close

Set sdcartCart004File = objFSO.OpenTextFile("sdcart-cart-004.xml",1)
sdcartCart004String = sdcartCart004File.ReadAll
sdcartCart004File.Close

Set sdcartCart005File = objFSO.OpenTextFile("sdcart-cart-005.xml",1)
sdcartCart005String = sdcartCart005File.ReadAll
sdcartCart005File.Close

Set sdcartDbobject001File = objFSO.OpenTextFile("sdcart-dbobject-001.xml",1)
sdcartDbobject001String = sdcartDbobject001File.ReadAll
sdcartDbobject001File.Close

Set sdcartDbobject002File = objFSO.OpenTextFile("sdcart-dbobject-002.xml",1)
sdcartDbobject002String = sdcartDbobject002File.ReadAll
sdcartDbobject002File.Close

Set sdcartDbobject003File = objFSO.OpenTextFile("sdcart-dbobject-003.xml",1)
sdcartDbobject003String = sdcartDbobject003File.ReadAll
sdcartDbobject003File.Close

Set sdcartDbobject004File = objFSO.OpenTextFile("sdcart-dbobject-004.xml",1)
sdcartDbobject004String = sdcartDbobject004File.ReadAll
sdcartDbobject004File.Close

Set sdcartDbobject005File = objFSO.OpenTextFile("sdcart-dbobject-005.xml",1)
sdcartDbobject005String = sdcartDbobject005File.ReadAll
sdcartDbobject005File.Close

Set sdcartDbobject006File = objFSO.OpenTextFile("sdcart-dbobject-006.xml",1)
sdcartDbobject006String = sdcartDbobject006File.ReadAll
sdcartDbobject006File.Close

Set sdcartDbobject007File = objFSO.OpenTextFile("sdcart-dbobject-007.xml",1)
sdcartDbobject007String = sdcartDbobject007File.ReadAll
sdcartDbobject007File.Close

Set cartStringFile = objFSO.CreateTextFile(cartString,true)

cartStringFile.Write sdcartCart001String
cartStringFile.Write nameString
cartStringFile.Write sdcartCart002String
cartStringFile.Write nameString
cartStringFile.Write sdcartCart003String
cartStringFile.Write usernameString
cartStringFile.Write sdcartCart004String

if objFSO.FileExists(txtString) Then

	Set txtStringFile = objFSO.OpenTextFile(txtString,1)

	Do while NOT txtStringFile.AtEndOfStream

		arrStr = split(txtStringFile.ReadLine,",")

		cartStringFile.Write sdcartDbobject001String
		cartStringFile.Write nameString
		cartStringFile.Write sdcartDbobject002String
		cartStringFile.Write arrStr(0)
		cartStringFile.Write sdcartDbobject003String
		cartStringFile.Write ownerString
		cartStringFile.Write sdcartDbobject004String
		cartStringFile.Write arrStr(1)
		cartStringFile.Write sdcartDbobject005String
		cartStringFile.Write metaString
		cartStringFile.Write sdcartDbobject006String
		cartStringFile.Write dataString
		cartStringFile.Write sdcartDbobject007String

	Loop

	txtStringFile.Close

End If

cartStringFile.Write sdcartCart005String

cartStringFile.Close
