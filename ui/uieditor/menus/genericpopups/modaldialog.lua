-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.GenericPopups.DialogSpinner")
require("ui.uieditor.widgets.GenericPopups.ModalDialogItems")
require("ui.uieditor.widgets.GenericPopups.Generic_Lines_Pop_up")
function LUI.createMenu.ModalDialog(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ModalDialog")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ModalDialog.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, -363.000000, 360.000000)
	registerVal3:setRGB(0.400000, 0.400000, 0.400000)
	registerVal3:setAlpha(0.450000)
	registerVal1:addElement(registerVal3)
	registerVal1.BackgroundDarken = registerVal3
	local registerVal4 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 386.000000, 454.000000)
	registerVal4:setTopBottom(true, false, 35.500000, 705.500000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.cacElemsSideList0 = registerVal4
	local registerVal5 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.scorestreakVignetteContainer = registerVal5
	local registerVal6 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, false, -212.500000, 233.000000)
	registerVal6:setTopBottom(false, false, -113.000000, 100.000000)
	registerVal6:setRGB(0.050000, 0.020000, 0.020000)
	registerVal6:setAlpha(0.850000)
	registerVal1:addElement(registerVal6)
	registerVal1.Background = registerVal6
	local registerVal7 = CoD.DialogSpinner.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -704.000000, -576.000000)
	registerVal7:setTopBottom(false, true, -424.000000, -296.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.ProcessingSpinner = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 381.500000, -381.500000)
	registerVal8:setTopBottom(false, false, -93.500000, -73.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("GROUPS_PROCESSING_REQUEST"))
	registerVal8:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.ProcessingText = registerVal8
	local registerVal9 = CoD.DialogSpinner.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, true, -102.000000, -64.000000)
	registerVal9:setTopBottom(false, true, -74.000000, -36.000000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.WaitSpinner = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, true, -367.500000, -109.000000)
	registerVal10:setTopBottom(false, true, -63.000000, -47.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("PLATFORM_PLEASEWAIT"))
	registerVal10:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal10)
	registerVal1.WaitMessage = registerVal10
	local registerVal11 = CoD.ModalDialogItems.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -241.960000, 241.960000)
	registerVal11:setTopBottom(false, false, -100.000000, 100.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.ModalDialogItems = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 454.000000, 850.000000)
	registerVal12:setTopBottom(true, false, 418.000000, 424.000000)
	registerVal12:setRGB(0.900000, 0.900000, 0.900000)
	registerVal12:setAlpha(0.850000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal12)
	registerVal1.CategoryListLine = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 425.500000, 873.500000)
	registerVal13:setTopBottom(true, false, 243.500000, 249.500000)
	registerVal13:setRGB(0.900000, 0.900000, 0.900000)
	registerVal13:setAlpha(0.500000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal13)
	registerVal1.CategoryListLine00 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 425.500000, 873.500000)
	registerVal14:setTopBottom(true, false, 457.000000, 463.000000)
	registerVal14:setRGB(0.900000, 0.900000, 0.900000)
	registerVal14:setAlpha(0.500000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal14)
	registerVal1.CategoryListLine0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 424.500000, 428.500000)
	registerVal15:setTopBottom(true, false, 244.500000, 463.000000)
	registerVal15:setAlpha(0.390000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal15)
	registerVal1.emblemline200 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 871.500000, 875.500000)
	registerVal16:setTopBottom(true, false, 244.500000, 463.000000)
	registerVal16:setAlpha(0.390000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.emblemline2000 = registerVal16
	local registerVal17 = CoD.Generic_Lines_Pop_up.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 397.000000, 416.000000)
	registerVal17:setTopBottom(true, false, 312.000000, 364.000000)
	registerVal17:setYRot(199.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.GenericLinesPopup000 = registerVal17
	local registerVal18 = CoD.Generic_Lines_Pop_up.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 882.500000, 898.500000)
	registerVal18:setTopBottom(true, false, 308.000000, 360.000000)
	registerVal1:addElement(registerVal18)
	registerVal1.GenericLinesPopup020 = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1763_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal7:completeAnimation()
		registerVal1.ProcessingSpinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.ProcessingText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.WaitSpinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.WaitMessage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal20.DefaultClip = __FUNC_1763_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_1977_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal1.BackgroundDarken:setAlpha(0.550000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal1.ProcessingSpinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.ProcessingText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.WaitSpinner:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.WaitMessage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal20.DefaultClip = __FUNC_1977_
	registerVal19.Waiting = registerVal20
	registerVal20 = {}
	local function __FUNC_1BF3_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal1.BackgroundDarken:setAlpha(0.550000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal1.ProcessingSpinner:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.ProcessingText:setAlpha(0.900000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.WaitSpinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.WaitMessage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal20.DefaultClip = __FUNC_1BF3_
	registerVal19.Processing = registerVal20
	registerVal1.clipsPerState = registerVal19
	local function __FUNC_1E74_(arg0, arg1, arg2, arg3)
		ModalGoBack(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1ED1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1E74_, __FUNC_1ED1_, false)
	registerVal11.id = "ModalDialogItems"
	local registerVal21 = {}
	registerVal21.name = "menu_loaded"
	registerVal21.controller = arg0
	registerVal1:processEvent(registerVal21)
	registerVal21 = {}
	registerVal21.name = "update_state"
	registerVal21.menu = registerVal1
	registerVal1:processEvent(registerVal21)
	registerVal19 = registerVal1:restoreState()
	if not registerVal19 then
		registerVal21 = {}
		registerVal21.name = "gain_focus"
		registerVal21.controller = arg0
		registerVal1.ModalDialogItems:processEvent(registerVal21)
	end
	local function __FUNC_1FC4_(arg1)
		arg1.BackgroundDarken:close()
		arg1.cacElemsSideList0:close()
		arg1.scorestreakVignetteContainer:close()
		arg1.Background:close()
		arg1.ProcessingSpinner:close()
		arg1.WaitSpinner:close()
		arg1.ModalDialogItems:close()
		arg1.GenericLinesPopup000:close()
		arg1.GenericLinesPopup020:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ModalDialog.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1FC4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

