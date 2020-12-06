-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_TabBar")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadout_CardBack_LockedTransmission_Progress")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_LockedTransmission_Assignment = registerVal1
function CoD.ChooseCharacterLoadout_CardBack_LockedTransmission_Assignment.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_LockedTransmission_Assignment)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_LockedTransmission_Assignment"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 547.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 136.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 28.000000, -31.000000)
	registerVal3:setTopBottom(true, false, 27.500000, 90.000000)
	registerVal3:setRGB(0.820000, 0.980000, 1.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1607_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "assignment", true, __FUNC_1607_)
	registerVal2:addElement(registerVal3)
	registerVal2.assignmentText = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -25.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -65.750000, -62.750000)
	registerVal4:setRGB(0.820000, 0.980000, 1.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -25.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -65.750000, -62.750000)
	registerVal5:setRGB(0.820000, 0.980000, 1.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 25.000000)
	registerVal6:setTopBottom(false, false, -65.750000, -62.750000)
	registerVal6:setRGB(0.820000, 0.980000, 1.000000)
	registerVal6:setZRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 25.000000)
	registerVal7:setTopBottom(false, false, -65.750000, -62.750000)
	registerVal7:setRGB(0.820000, 0.980000, 1.000000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image35 = registerVal7
	local registerVal8 = CoD.ChooseCharacterLoadout_TabBar.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 18.000000, 528.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 28.000000)
	registerVal8:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.TabBar1 = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 28.000000, 228.000000)
	registerVal9:setTopBottom(true, false, 4.500000, 24.500000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setText(Engine.Localize("HEROES_ASSIGNMENT"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal9:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setLetterSpacing(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.assignmentLabel = registerVal9
	local registerVal10 = CoD.Border.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -254.500000, 252.500000)
	registerVal10:setTopBottom(false, false, -41.250000, 66.500000)
	registerVal10:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.assignmentBorder = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -24.000000, -20.000000)
	registerVal11:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal11:setRGB(0.820000, 0.980000, 1.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image300 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -23.000000, -19.000000)
	registerVal12:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal12:setRGB(0.820000, 0.980000, 1.000000)
	registerVal12:setYRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image311 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -529.000000, -525.000000)
	registerVal13:setTopBottom(false, true, -5.000000, -1.000000)
	registerVal13:setRGB(0.820000, 0.980000, 1.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image42 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -528.000000, -524.000000)
	registerVal14:setTopBottom(false, true, -5.000000, -1.000000)
	registerVal14:setRGB(0.820000, 0.980000, 1.000000)
	registerVal14:setYRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image43 = registerVal14
	local registerVal15 = CoD.ChooseCharacterLoadout_CardBack_LockedTransmission_Progress.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 30.000000, 516.000000)
	registerVal15:setTopBottom(true, false, 93.000000, 127.500000)
	local function __FUNC_16DB_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_16DB_)
	registerVal2:addElement(registerVal15)
	registerVal2.progress = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_172A_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.assignmentText:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Image35:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TabBar1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.assignmentLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.assignmentBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Image300:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Image311:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Image42:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Image43:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.progress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_172A_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_1C40_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.assignmentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Image35:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TabBar1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.assignmentLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.assignmentBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Image300:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Image311:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Image42:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Image43:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.progress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1C40_
	registerVal16.NoAssignment = registerVal17
	registerVal2.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "NoAssignment"
	local function __FUNC_2153_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "assignment")
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_2153_
	registerVal18 = {registerVal19}
	registerVal2:mergeStateConditions(registerVal18)
	local function __FUNC_21D4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "assignment"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "assignment", true, __FUNC_21D4_)
	local function __FUNC_22F4_(arg0)
		arg0.assignmentText:close()
		arg0.TabBar1:close()
		arg0.assignmentBorder:close()
		arg0.progress:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_22F4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

