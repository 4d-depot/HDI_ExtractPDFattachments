var $pict : Picture

Form:C1466.pictureContainer:=$pict
Form:C1466.textContainer:=""

If (Form:C1466.currentAttachment#Null:C1517)
	
	$c:=Form:C1466.currentAttachment
	
	
	Case of 
		: ($c.mimeType="text/xml")
			
			Form:C1466.textContainer:=BLOB to text:C555($c.content; UTF8 text without length:K22:17)
			
		: ($c.mimeType="image/png")
			
			BLOB TO PICTURE:C682($c.content; $picture; $c.extension)
			Form:C1466.pictureContainer:=$picture
			
		: ($c.mimeType="application/pdf")
			
			BLOB TO PICTURE:C682($c.content; $picture; $c.extension)
			Form:C1466.pictureContainer:=$picture
			
	End case 
End if 
