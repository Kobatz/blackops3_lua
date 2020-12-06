-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_HelpBubble_Button_PC = registerVal1
function CoD.ChooseCharacter_HelpBubble_Button_PC.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacter_HelpBubble_Button_PC)
	registerVal2.id = "ChooseCharacter_HelpBubble_Button_PC"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 155.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 149.130000, -150.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.041240, 0.190000, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETabIdle0 = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -1.000000, 0.130000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.TriangleBorder = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -26.000000, 2.000000)
	registerVal6:setTopBottom(false, false, 34.000000, 38.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -26.000000, 2.000000)
	registerVal7:setTopBottom(false, false, -38.000000, -34.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -85.000000, -81.000000)
	registerVal8:setTopBottom(false, false, -36.000000, 36.000000)
	registerVal8:setAlpha(0.250000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.emblemline0 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 9.000000, 145.130000)
	registerVal9:setTopBottom(true, false, 8.350000, 27.350000)
	registerVal9:setText(Engine.Localize("MENU_TO_BROWSE_CLICK"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.TextBox0 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_E7A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.TextBox0:setText(Engine.Localize("MENU_TO_BROWSE_CLICK"))
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_E7A_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_FC6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.TextBox0:setText(Engine.Localize("MENU_CLICK_WEAPON_ABILITY"))
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_FC6_
	registerVal10.ChangedCharacter = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "ChangedCharacter"
	local function __FUNC_1117_(arg0, arg2, arg3)
		return FirstTimeSetup_ChangedCharacter(arg1)
	end

	registerVal13.condition = __FUNC_1117_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "firstTimeFlowState")
	local function __FUNC_1179_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "firstTimeFlowState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_1179_)
	local function __FUNC_12A0_(arg0, arg1)
		ScaleWidgetToLabelWrapped(registerVal2, arg0, 10.000000, 10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setText", __FUNC_12A0_)
	local function __FUNC_130C_(arg0)
		arg0.TriangleBorder:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_130C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

