-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.GenericPopups.DialogSpinner")
require("ui.uieditor.widgets.GenericPopups.ModalDialogItems")
require("ui.uieditor.widgets.GenericPopups.Generic_Lines_Pop_up")
function LUI.createMenu.ModalDialog_test(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ModalDialog_test")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open")
	registerVal1.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.020000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.750000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -363.000000, 360.000000)
	registerVal4:setRGB(0.400000, 0.400000, 0.400000)
	registerVal4:setAlpha(0.450000)
	registerVal1:addElement(registerVal4)
	registerVal1.BackgroundDarken = registerVal4
	local registerVal5 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 386.000000, 454.000000)
	registerVal5:setTopBottom(true, false, 35.500000, 705.500000)
	registerVal5:setRGB(1.000000, 1.000000, 1.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.cacElemsSideList0 = registerVal5
	local registerVal6 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal6:setRGB(1.000000, 1.000000, 1.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.scorestreakVignetteContainer = registerVal6
	local registerVal7 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -212.500000, 233.000000)
	registerVal7:setTopBottom(false, false, -113.000000, 100.000000)
	registerVal7:setRGB(0.050000, 0.020000, 0.020000)
	registerVal7:setAlpha(0.850000)
	registerVal1:addElement(registerVal7)
	registerVal1.Background = registerVal7
	local registerVal8 = CoD.DialogSpinner.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -704.000000, -576.000000)
	registerVal8:setTopBottom(false, true, -424.000000, -296.000000)
	registerVal8:setRGB(1.000000, 1.000000, 1.000000)
	registerVal8:setAlpha(0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.ProcessingSpinner = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, true, 381.500000, -381.500000)
	registerVal9:setTopBottom(false, false, -93.500000, -73.500000)
	registerVal9:setRGB(1.000000, 1.000000, 1.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(Engine.Localize("GROUPS_PROCESSING_REQUEST"))
	registerVal9:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.ProcessingText = registerVal9
	local registerVal10 = CoD.DialogSpinner.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -102.000000, -64.000000)
	registerVal10:setTopBottom(false, true, -74.000000, -36.000000)
	registerVal10:setRGB(1.000000, 1.000000, 1.000000)
	registerVal10:setAlpha(0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.WaitSpinner = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, true, -367.500000, -109.000000)
	registerVal11:setTopBottom(false, true, -63.000000, -47.000000)
	registerVal11:setRGB(1.000000, 1.000000, 1.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setText(Engine.Localize("PLATFORM_PLEASEWAIT"))
	registerVal11:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.WaitMessage = registerVal11
	local registerVal12 = CoD.ModalDialogItems.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -241.960000, 241.960000)
	registerVal12:setTopBottom(false, false, -100.000000, 100.000000)
	registerVal12:setRGB(1.000000, 1.000000, 1.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.ModalDialogItems = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 454.000000, 850.000000)
	registerVal13:setTopBottom(true, false, 418.000000, 424.000000)
	registerVal13:setRGB(0.900000, 0.900000, 0.900000)
	registerVal13:setAlpha(0.850000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
	registerVal1:addElement(registerVal13)
	registerVal1.CategoryListLine = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 425.500000, 873.500000)
	registerVal14:setTopBottom(true, false, 243.500000, 249.500000)
	registerVal14:setRGB(0.900000, 0.900000, 0.900000)
	registerVal14:setAlpha(0.500000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
	registerVal1:addElement(registerVal14)
	registerVal1.CategoryListLine00 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 425.500000, 873.500000)
	registerVal15:setTopBottom(true, false, 457.000000, 463.000000)
	registerVal15:setRGB(0.900000, 0.900000, 0.900000)
	registerVal15:setAlpha(0.500000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
	registerVal1:addElement(registerVal15)
	registerVal1.CategoryListLine0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 424.500000, 428.500000)
	registerVal16:setTopBottom(true, false, 244.500000, 463.000000)
	registerVal16:setRGB(1.000000, 1.000000, 1.000000)
	registerVal16:setAlpha(0.390000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.emblemline200 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 871.500000, 875.500000)
	registerVal17:setTopBottom(true, false, 244.500000, 463.000000)
	registerVal17:setRGB(1.000000, 1.000000, 1.000000)
	registerVal17:setAlpha(0.390000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal17)
	registerVal1.emblemline2000 = registerVal17
	local registerVal18 = CoD.Generic_Lines_Pop_up.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 401.000000, 420.000000)
	registerVal18:setTopBottom(true, false, 312.000000, 364.000000)
	registerVal18:setRGB(1.000000, 1.000000, 1.000000)
	registerVal1:addElement(registerVal18)
	registerVal1.GenericLinesPopup000 = registerVal18
	local registerVal19 = CoD.Generic_Lines_Pop_up.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 882.500000, 898.500000)
	registerVal19:setTopBottom(true, false, 308.000000, 360.000000)
	registerVal19:setRGB(1.000000, 1.000000, 1.000000)
	registerVal1:addElement(registerVal19)
	registerVal1.GenericLinesPopup020 = registerVal19
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_187E_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal8:completeAnimation()
		registerVal1.ProcessingSpinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.ProcessingText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.WaitSpinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.WaitMessage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal21.DefaultClip = __FUNC_187E_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_1A93_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal1.BackgroundDarken:setAlpha(0.550000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal1.ProcessingSpinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.ProcessingText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.WaitSpinner:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.WaitMessage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal21.DefaultClip = __FUNC_1A93_
	registerVal20.Waiting = registerVal21
	registerVal21 = {}
	local function __FUNC_1D0F_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal1.BackgroundDarken:setAlpha(0.550000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal1.ProcessingSpinner:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.ProcessingText:setAlpha(0.900000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.WaitSpinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.WaitMessage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal21.DefaultClip = __FUNC_1D0F_
	registerVal20.Processing = registerVal21
	registerVal1.clipsPerState = registerVal20
	registerVal1.buttonPromptAddFunctions = {}
	local function __FUNC_1F90_(arg1, arg2)
		local registerVal3 = arg1:AcceptGamePadButtonInput(arg2)
		if registerVal3 and arg2 or arg2.simulated then
			return 
		end
		registerVal3 = arg1:DoNavigationForGamePadButton(arg2)
		if registerVal3 then
			return true
		end
		if not registerVal1.occludedBy then
			if arg2.button ~= "secondary" then
				if arg2.button == "key_shortcut" and arg2.key == "ESCAPE" then
					ModalGoBack(registerVal1, arg1, arg0)
				end
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("gamepad_button", __FUNC_1F90_)
	registerVal12.id = "ModalDialogItems"
	local registerVal22 = {}
	registerVal22.name = "menu_loaded"
	registerVal22.controller = arg0
	registerVal1:processEvent(registerVal22)
	registerVal22 = {}
	registerVal22.name = "update_state"
	registerVal22.menu = registerVal1
	registerVal1:processEvent(registerVal22)
	registerVal20 = registerVal1:restoreState()
	if not registerVal20 then
		registerVal22 = {}
		registerVal22.name = "gain_focus"
		registerVal22.controller = arg0
		registerVal1.ModalDialogItems:processEvent(registerVal22)
	end
	function registerVal1.close(arg0)
		arg0.BackgroundDarken:close()
		arg0.cacElemsSideList0:close()
		arg0.scorestreakVignetteContainer:close()
		arg0.Background:close()
		arg0.ProcessingSpinner:close()
		arg0.WaitSpinner:close()
		arg0.ModalDialogItems:close()
		arg0.GenericLinesPopup000:close()
		arg0.GenericLinesPopup020:close()
		CoD.Menu.close(arg0)
	end

	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

