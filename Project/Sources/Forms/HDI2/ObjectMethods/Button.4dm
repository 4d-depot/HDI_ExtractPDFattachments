If (Shift down:C543)
	$path:="/DATA/TestPDFs/utf16le.pdf"
Else 
	$path:="/DATA/TestPDFs/Many Included Files.pdf"
End if 

$file:=File:C1566($path; fk posix path:K87:1)

Form:C1466.attachments:=PDF Get attachments($file)

