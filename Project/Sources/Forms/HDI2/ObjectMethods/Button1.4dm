var $pict : Picture
var $doc : Text
var $file : 4D:C1709.File

If (Form:C1466.trace)
	TRACE:C157
End if 

$doc:=Select document:C905(""; "pdf"; "Select a pdf"; 0)
If (ok=1)
	
	Form:C1466.pictureContainer:=$pict
	Form:C1466.textContainer:=""
	
	$file:=File:C1566(document; fk platform path:K87:2)
	
	Form:C1466.attachments:=PDF Get attachments($file)
	If (Form:C1466.attachments.length=0)
		ALERT:C41("This PDF file has no attachments.")
	End if 
	
End if 

