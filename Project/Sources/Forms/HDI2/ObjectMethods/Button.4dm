var $path : Text
var $pict : Picture
var $file : 4D:C1709.File
//var $XMLattachment : Collection

Form:C1466.pictureContainer:=$pict
Form:C1466.textContainer:=""

If (Form:C1466.trace)
	TRACE:C157
End if 

$path:="/DATA/TestPDFs/ManyEnclosures.pdf"
$file:=File:C1566($path; fk posix path:K87:1)
Form:C1466.attachments:=PDF Get attachments($file)

//$XMLattachment:=PDF Get attachments($file).query("mimeType = :1"; "text/xml")
//If ($XMLattachment.length#0)
//$xml:=BLOB to text($XMLattachment[0].content; UTF8 text without length)
//$dom:=DOM Parse XML variable($xml)
//End if 



