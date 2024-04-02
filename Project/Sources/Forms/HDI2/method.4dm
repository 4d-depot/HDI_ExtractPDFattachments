
var $size : Integer
var $page : Integer

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.trace:=False:C215
		Form:C1466.infoES:=ds:C1482.Info.all().orderBy("pageNumber asc")
		
		Form:C1466.tabs:={}
		Form:C1466.tabs.values:=ds:C1482.Info.all().orderBy("pageNumber asc").toCollection().extract("tabTitle")
		Form:C1466.tabs.index:=0
		
		
		Form:C1466.action:="page change"
		SET TIMER:C645(-1)
		
	: (Form event code:C388=On Page Change:K2:54)
		
		Form:C1466.action:="page change"
		SET TIMER:C645(-1)
		
	: (Form event code:C388=On Timer:K2:25)
		SET TIMER:C645(0)
		
		Case of 
				
			: (Form:C1466.action="page change")
				$page:=FORM Get current page:C276
				Form:C1466.doc:=Form:C1466.infoES[$page-1].description
				If (Is Windows:C1573)
					$size:=17  //22*72dpi/96dpi = 16.5
				Else 
					$size:=22
				End if 
				ST SET ATTRIBUTES:C1093(*; "RTA_Text_"+String:C10($page); ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; $size)
				
				
		End case 
End case 

