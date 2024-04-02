C_TEXT:C284($ZoneName)
$ZoneName:="RTA_Text"  // change THIS if you change the name of the area

C_LONGINT:C283($StartSel; $EndSel)

C_POINTER:C301($PtrButton)
C_LONGINT:C283($Value)
C_POINTER:C301($PtrRichTextArea)

$PtrRichTextArea:=OBJECT Get pointer:C1124(Object named:K67:5; $ZoneName)
If (Not:C34(Is nil pointer:C315($PtrRichTextArea)))
	
	$PtrButton:=Self:C308
	$Value:=$PtrButton->
	
	$Value:=0
	$PtrButton->:=$Value
	
	GET HIGHLIGHT:C209($PtrRichTextArea->; $StartSel; $EndSel)
	ST SET ATTRIBUTES:C1093($PtrRichTextArea->; $StartSel; $EndSel; \
		Attribute bold style:K65:1; $Value; \
		Attribute italic style:K65:2; $Value; \
		Attribute underline style:K65:4; $Value; \
		Attribute strikethrough style:K65:3; $Value; \
		Attribute text color:K65:7; $Value; \
		Attribute background color:K65:8; 0x00FFFFFF)
End if 