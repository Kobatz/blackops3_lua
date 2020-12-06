-- Decompiled with CoDLUIDecompiler by JariK

require("ui_mp.T6.HUD.InGameMenus")
CoD.InGamePopupMenu = {}
local registerVal1 = InheritFrom(CoD.InGameMenu)
CoD.InGamePopupMenu = registerVal1
CoD.InGamePopupMenu.PopupWidth = 480.000000
CoD.InGamePopupMenu.PopupHeight = 312.000000
registerVal1 = CoD.MPZM("menu_mp_popup", "menu_zm_popup")
CoD.InGamePopupMenu.BackgroundTexture = registerVal1
CoD.InGamePopupMenu.SavingPopupWidth = 200.000000
CoD.InGamePopupMenu.SavingPopupHeight = (CoD.textSize.Default + 10.000000)
CoD.InGamePopupMenu.SavingSpinnerSize = (CoD.InGamePopupMenu.SavingPopupHeight - 5.000000)
CoD.InGamePopupMenu.SideAlign = 24.000000
CoD.InGamePopupMenu.ButtonListBottom = 24.000000
CoD.InGamePopupMenu.TitleTop = 24.000000
CoD.InGamePopupMenu.TextTop = ((CoD.InGamePopupMenu.TitleTop + CoD.textSize.Default) + 7.000000)
CoD.InGamePopupMenu.SavingBackground = "loadbar_background"
CoD.InGamePopupMenu.SavingSpinner = "lui_loader"
function CoD.InGamePopupMenu.New(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = CoD.InGamePopupMenu.super.New(arg0, arg1, nil, arg6)
	registerVal7.setupPopup = CoD.InGamePopupMenu.SetupPopup
	registerVal7.setupSavingPopup = CoD.InGamePopupMenu.SetupSavingPopup
	if arg2 == "saving" then
		registerVal7:setupSavingPopup(arg3)
	else
		CoD.InGameMenu.addButtonPrompts(registerVal7)
		registerVal7:setupPopup(arg3, arg4, arg5)
	end
	return registerVal7
end

function CoD.InGamePopupMenu.SetupPopup(arg0, arg1, arg2, arg3)
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(false, false, (-CoD.InGamePopupMenu.PopupWidth / 2.000000), (CoD.InGamePopupMenu.PopupWidth / 2.000000))
	registerVal4:setTopBottom(false, false, (-CoD.InGamePopupMenu.PopupHeight / 2.000000), (CoD.InGamePopupMenu.PopupHeight / 2.000000))
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterMaterial(CoD.InGamePopupMenu.BackgroundTexture))
	registerVal4:addElement(registerVal5)
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, CoD.InGamePopupMenu.SideAlign, -CoD.InGamePopupMenu.SideAlign)
	registerVal6:setTopBottom(true, false, CoD.InGamePopupMenu.TitleTop, (CoD.InGamePopupMenu.TitleTop + CoD.textSize.Default))
	registerVal6:setFont(CoD.fonts.Default)
	registerVal6:setAlignment(LUI.Alignment.Left)
	registerVal6:setText(arg1)
	registerVal4:addElement(registerVal6)
	arg0.titleText = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, CoD.InGamePopupMenu.SideAlign, -CoD.InGamePopupMenu.SideAlign)
	registerVal7:setTopBottom(true, false, CoD.InGamePopupMenu.TextTop, (CoD.InGamePopupMenu.TextTop + CoD.textSize.Default))
	registerVal7:setFont(CoD.fonts.Default)
	registerVal7:setAlignment(LUI.Alignment.Left)
	registerVal7:setText(arg2)
	registerVal4:addElement(registerVal7)
	arg0.descText = registerVal7
	local registerVal8 = CoD.ButtonList.new()
	registerVal8:setLeftRight(true, true, CoD.InGamePopupMenu.SideAlign, -CoD.InGamePopupMenu.SideAlign)
	registerVal8:setTopBottom(false, true, (-1.000000 * ((CoD.CoD9Button.Height * (#registerVal7 + 1.000000)) + (CoD.ButtonList.ButtonSpacing * (#false + 1.000000)))), 0.000000)
	local registerVal10, registerVal11, registerVal12 = ipairs(arg3)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		local registerVal15 = registerVal8:addButton(value14.text)
		registerVal15:setActionEventName(value14.event)
	end
	registerVal12 = {}
	registerVal12.name = "gain_focus"
	registerVal8:processEvent(registerVal12)
	registerVal4:addElement(registerVal8)
	arg0.buttonList = registerVal8
	arg0.background = registerVal4
	arg0:addElement(registerVal4)
end

function CoD.InGamePopupMenu.SetupSavingPopup(arg0, arg1)
	local registerVal4, registerVal5, registerVal6, registerVal7 = GetTextDimensions(arg1, CoD.fonts.Default, CoD.textSize.Default)
	local registerVal10 = LUI.UIElement.new()
	registerVal10:setLeftRight(false, false, (-(((registerVal6 - registerVal4) + (CoD.InGamePopupMenu.SavingSpinnerSize * 2.000000)) + 20.000000) / 2.000000), ((((registerVal6 - registerVal4) + (CoD.InGamePopupMenu.SavingSpinnerSize * 2.000000)) + 20.000000) / 2.000000))
	registerVal10:setTopBottom(false, true, -CoD.InGamePopupMenu.SavingPopupHeight, 0.000000)
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal12:setImage(RegisterMaterial(CoD.InGamePopupMenu.SavingBackground))
	registerVal10:addElement(registerVal12)
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, true, 20.000000, (CoD.InGamePopupMenu.SavingSpinnerSize - 20.000000))
	registerVal13:setTopBottom(false, false, (-CoD.textSize.Default / 2.000000), (CoD.textSize.Default / 2.000000))
	registerVal13:setFont(CoD.fonts.Default)
	registerVal13:setAlignment(LUI.Alignment.Left)
	registerVal13:setText(arg1)
	registerVal10:addElement(registerVal13)
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, (-CoD.InGamePopupMenu.SavingSpinnerSize - 20.000000), -20.000000)
	registerVal14:setTopBottom(false, false, (-CoD.InGamePopupMenu.SavingSpinnerSize / 2.000000), (CoD.InGamePopupMenu.SavingSpinnerSize / 2.000000))
	registerVal14:setImage(RegisterMaterial(CoD.InGamePopupMenu.SavingSpinner))
	registerVal14:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:addElement(registerVal14)
	arg0.background = registerVal10
	arg0:addElement(registerVal10)
end

function CoD.InGamePopupMenu.newCustom(arg0, arg1)
	return CoD.InGamePopupMenu.super.New(arg0, arg1)
end

