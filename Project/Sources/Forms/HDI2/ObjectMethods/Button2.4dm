var $pict : Picture
var $doc : Text
var $file : 4D:C1709.File

If (Form:C1466.trace)
	TRACE:C157
End if 

$doc:=Select document:C905(""; ""; "Select a NON pdf file"; 0)
If (ok=1)
	
	Form:C1466.pictureContainer:=$pict
	Form:C1466.textContainer:=""
	
	$file:=File:C1566(document; fk platform path:K87:2)
	
	Try
		Form:C1466.attachments:=PDF Get attachments($file)
	Catch
		ALERT:C41("This is NOT a PDF file.")
	End try
	
End if 

