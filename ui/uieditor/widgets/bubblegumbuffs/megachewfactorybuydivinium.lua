-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.ChooseCharacter.ChooseCharacter_CardClickButton")
require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewVialPercentOffLeft")
require("ui.uieditor.widgets.Lobby.Common.FE_HelpItemsLabel")
local function __FUNC_2DB_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	arg0.clickButton.m_button = Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE
end

local function __FUNC_3C8_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_2DB_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.MegaChewFactoryBuyDivinium = registerVal3
local function __FUNC_43B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MegaChewFactoryBuyDivinium)
	registerVal2.id = "MegaChewFactoryBuyDivinium"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -29.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 337.000000)
	registerVal4:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal4:setText(Engine.Localize(""))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_110C_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_110C_)
	registerVal2:addElement(registerVal4)
	registerVal2.Label0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -30.000000, 1.000000)
	registerVal5:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal5:setShaderVector(0.000000, 0.022099, 0.137931, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Image = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -25.000000, -3.000000)
	registerVal6:setTopBottom(false, false, -11.200000, 11.200000)
	local function __FUNC_116D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_116D_)
	registerVal2:addElement(registerVal6)
	registerVal2.Button1 = registerVal6
	local registerVal7 = CoD.MegaChewVialPercentOffLeft.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -30.000000, 470.000000)
	registerVal7:setTopBottom(true, false, 32.000000, 54.000000)
	registerVal7.nameText:setText(Engine.Localize("ZMUI_SPEICAL_PROMOTION_CAPS"))
	registerVal2:addElement(registerVal7)
	registerVal2.MegaChewVialPercentOff0 = registerVal7
	local registerVal8 = CoD.ChooseCharacter_CardClickButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -21.000000, 150.000000)
	registerVal8:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8.label:setText(Engine.Localize(""))
	registerVal8.keyshortcut:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal8)
	registerVal2.clickButton = registerVal8
	local registerVal9 = CoD.FE_HelpItemsLabel.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, 7.500000, 27.500000)
	registerVal9:setTopBottom(true, false, 3.700000, 23.700000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_1220_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_1220_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.Breadcrumb = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_126D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Button1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.clickButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Breadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_126D_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_151B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Button1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.Breadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_151B_
	registerVal10.Invisible = registerVal11
	registerVal11 = {}
	local function __FUNC_176E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Button1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.clickButton:setLeftRight(true, false, -21.000000, 337.000000)
		registerVal2.clickButton:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.clickButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_176E_
	registerVal10.VisiblePC = registerVal11
	registerVal11 = {}
	local function __FUNC_1A58_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Button1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.clickButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Breadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1A58_
	registerVal10.Visible = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_1D11_(arg0)
		arg0.MegaChewVialPercentOff0:close()
		arg0.clickButton:close()
		arg0.Breadcrumb:close()
		arg0.Button1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D11_)
	if __FUNC_3C8_ then
		__FUNC_3C8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MegaChewFactoryBuyDivinium.new = __FUNC_43B_
