-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogSpinner")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FullscreeenPupupSteamForm = registerVal1
function CoD.FullscreeenPupupSteamForm.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FullscreeenPupupSteamForm)
	registerVal2.id = "FullscreeenPupupSteamForm"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 206.880000, 211.880000)
	registerVal4:setRGB(1.000000, 0.600000, 0.000000)
	registerVal4:setAlpha(0.820000)
	registerVal2:addElement(registerVal4)
	registerVal2.RedLine = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 209.380000, 563.160000)
	registerVal5:setRGB(0.100000, 0.100000, 0.100000)
	registerVal2:addElement(registerVal5)
	registerVal2.BodyBackground = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 563.160000, 611.160000)
	registerVal6:setRGB(0.240000, 0.240000, 0.240000)
	registerVal2:addElement(registerVal6)
	registerVal2.PromptBackground = registerVal6
	local registerVal7 = CoD.DialogSpinner.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 536.070000, 664.070000)
	registerVal7:setTopBottom(true, false, 360.000000, 488.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.DialogSpinner0 = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 460.070000, 660.070000)
	registerVal8:setTopBottom(true, false, 243.260000, 291.260000)
	registerVal8:setText(Engine.Localize("MENU_NEW"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.Title = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 460.070000, 1025.070000)
	registerVal9:setTopBottom(true, false, 290.410000, 315.410000)
	registerVal9:setText(Engine.Localize("MENU_NEW"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.Subtitle = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 460.070000, 660.070000)
	registerVal10:setTopBottom(true, false, 243.260000, 291.260000)
	registerVal10:setText(Engine.Localize("MENU_NEW"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal10)
	registerVal2.WorkingTitle = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, false, 460.070000, 660.070000)
	registerVal11:setTopBottom(true, false, 243.260000, 291.260000)
	registerVal11:setText(Engine.Localize("MENU_NEW"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal11)
	registerVal2.DoneTitle = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, false, 460.070000, 660.070000)
	registerVal12:setTopBottom(true, false, 243.260000, 291.260000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setText(Engine.Localize("MENU_ERROR_CAPS"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal12)
	registerVal2.ErrorTitle = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 460.070000, 1025.070000)
	registerVal13:setTopBottom(true, false, 290.410000, 315.410000)
	registerVal13:setText(Engine.Localize("MENU_NEW"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.ErrorSubtitle = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_F29_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal7:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Subtitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_F29_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_1240_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal7:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Subtitle:setAlpha(1.000000)
		registerVal2.Subtitle:setText(Engine.Localize("PLATFORM_PLEASEWAIT"))
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1240_
	registerVal14.WorkingState = registerVal15
	registerVal15 = {}
	local function __FUNC_15D8_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal7:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Subtitle:setAlpha(0.000000)
		registerVal2.Subtitle:setText(Engine.Localize(""))
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_15D8_
	registerVal14.ErrorState = registerVal15
	registerVal15 = {}
	local function __FUNC_195D_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal7:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Subtitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_195D_
	registerVal14.CustomState = registerVal15
	registerVal15 = {}
	local function __FUNC_1C74_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Subtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DoneTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1C74_
	registerVal14.DoneState = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_1F34_(arg0)
		arg0.DialogSpinner0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F34_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

