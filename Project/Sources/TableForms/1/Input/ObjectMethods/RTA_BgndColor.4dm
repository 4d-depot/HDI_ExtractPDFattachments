C_TEXT:C284($ZoneName)
$ZoneName:="RTA_Text"  // change THIS if you change the name of the area

C_LONGINT:C283($StartSel; $EndSel)
C_POINTER:C301($PtrRichTextArea)

C_TEXT:C284($RTA_MenuColor)
C_TEXT:C284($Color_t)
C_LONGINT:C283($Color_i)

$PtrRichTextArea:=OBJECT Get pointer:C1124(Object named:K67:5; $ZoneName)

If (Not:C34(Is nil pointer:C315($PtrRichTextArea)))
	
	Case of 
			
		: (Form event code:C388=On Load:K2:1)
			
			$RTA_MenuColor:=Create menu:C408
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#FFFFFF")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_0.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#D4D4D4")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_1.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#D1ADC9")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_2.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#C8AED9")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_3.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#AEB4D9")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_4.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#AFC9E2")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_5.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#AED3CC")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_6.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#B2D2B5")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_7.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#CBD3AF")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_8.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#E3D0AF")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_9.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "#E3B3AF")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_10.png")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; "(-")
			
			APPEND MENU ITEM:C411($RTA_MenuColor; " ")
			SET MENU ITEM PARAMETER:C1004($RTA_MenuColor; -1; "ColorPicker")
			SET MENU ITEM ICON:C984($RTA_MenuColor; -1; "file:RTA4D/Colors/BackColor_Picker.png")
			
			Form:C1466.menuBackgroundColor:=$RTA_MenuColor
			
			
			
		: (Form event code:C388=On Clicked:K2:4)
			
			$Color_t:=Dynamic pop up menu:C1006(Form:C1466.menuBackgroundColor)
			
			If ($Color_t#"")
				GET HIGHLIGHT:C209($PtrRichTextArea->; $StartSel; $EndSel)
				
				Case of 
					: ($Color_t="colorPicker")
						$color_i:=Select RGB color:C956(0x00C0C0C0)  //almost white 
						ST SET ATTRIBUTES:C1093($PtrRichTextArea->; $StartSel; $EndSel; Attribute background color:K65:8; $color_i)
					Else 
						$Color_t:=Replace string:C233($Color_t; " "; "")
						ST SET ATTRIBUTES:C1093($PtrRichTextArea->; $StartSel; $EndSel; Attribute background color:K65:8; $Color_t)
				End case 
				
			End if 
			
			
			
		: (Form event code:C388=On Unload:K2:2)
			
			RELEASE MENU:C978(Form:C1466.menuBackgroundColor)
			
	End case 
	
End if 





