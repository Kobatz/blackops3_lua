-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Groups.GroupsFeaturedListLarge")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupOverviewContentPanel = registerVal1
function CoD.GroupOverviewContentPanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupOverviewContentPanel)
	registerVal2.id = "GroupOverviewContentPanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 384.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 441.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -1.000000, 648.000000)
	registerVal3:setTopBottom(true, false, 418.000000, 521.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.024653, 0.155340, 0.357143, 0.357143)
	registerVal3:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 2.000000, 645.000000)
	registerVal4:setTopBottom(true, false, 420.000000, 448.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.700000)
	registerVal2:addElement(registerVal4)
	registerVal2.Banner = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 2.000000, 645.110000)
	registerVal5:setTopBottom(true, false, 27.000000, 55.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.700000)
	registerVal2:addElement(registerVal5)
	registerVal2.Banner0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 5.000000, 242.500000)
	registerVal6:setTopBottom(true, false, 424.000000, 444.000000)
	registerVal6:setText(Engine.Localize("GROUPS_MESSAGE_CAPS"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.Message = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 6.000000, 243.500000)
	registerVal7:setTopBottom(true, false, 30.630000, 50.630000)
	registerVal7:setText(Engine.Localize("GROUPS_FEATURED_CAPS"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Featured = registerVal7
	local registerVal8 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -1.000000, 648.110000)
	registerVal8:setTopBottom(true, false, 25.000000, 408.470000)
	registerVal2:addElement(registerVal8)
	registerVal2.StartMenuframenoBG000 = registerVal8
	local registerVal9 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 9.000000, 639.000000)
	registerVal9:setTopBottom(true, false, 453.000000, 521.000000)
	registerVal9.textBox:setTTF("fonts/default.ttf")
	registerVal9.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_FC5_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:subscribeToGlobalModel(arg1, "SelectedGroup", nil, __FUNC_FC5_)
	local function __FUNC_1016_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.textBox:setText(registerVal1)
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "SelectedGroup", "message", __FUNC_1016_)
	registerVal2:addElement(registerVal9)
	registerVal2.verticalScrollingTextBox = registerVal9
	local registerVal10 = CoD.GroupsFeaturedListLarge.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 2.000000, 645.110000)
	registerVal10:setTopBottom(true, false, 55.000000, 408.470000)
	registerVal2:addElement(registerVal10)
	registerVal2.GroupsFeaturedListLarge = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_10C5_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Image:setLeftRight(true, false, -1.000000, 648.000000)
		registerVal2.Image:setTopBottom(true, false, 418.000000, 531.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Banner:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Banner0:setLeftRight(true, false, 1.000000, 645.000000)
		registerVal2.Banner0:setTopBottom(true, false, 27.000000, 53.250000)
		registerVal2.Banner0:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Message:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Featured:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StartMenuframenoBG000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_10C5_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1450_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.Banner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Banner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Message:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Featured:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StartMenuframenoBG000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_1450_
	registerVal11.NonMemberView = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal10.id = "GroupsFeaturedListLarge"
	local function __FUNC_16B1_(arg0, arg1)
		local registerVal2 = arg0.GroupsFeaturedListLarge:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_16B1_)
	local function __FUNC_17C3_(arg0)
		arg0.StartMenuframenoBG000:close()
		arg0.verticalScrollingTextBox:close()
		arg0.GroupsFeaturedListLarge:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_17C3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

