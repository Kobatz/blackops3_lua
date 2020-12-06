-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderThin")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SelectedFilmSummaryScoreColumn = registerVal1
function CoD.SelectedFilmSummaryScoreColumn.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SelectedFilmSummaryScoreColumn)
	registerVal2.id = "SelectedFilmSummaryScoreColumn"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.HeaderBackground = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 96.250000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4:setText(Engine.Localize("MENU_NEW"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.HeaderText = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal5:setTopBottom(true, false, 25.000000, 49.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.650000)
	registerVal2:addElement(registerVal5)
	registerVal2.ValueBackground = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 0.000000, 96.250000)
	registerVal6:setTopBottom(true, false, 25.000000, 50.000000)
	registerVal6:setText(Engine.Localize("MENU_NEW"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.ValueText = registerVal6
	local registerVal7 = CoD.BorderThin.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal7:setAlpha(0.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.BorderThin01 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_AB7_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_AB7_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_B16_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_B16_
	registerVal8.Hidden = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Hidden"
	local function __FUNC_B76_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isValid")
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_B76_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_BEB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isValid"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isValid", true, __FUNC_BEB_)
	local function __FUNC_D05_(arg0)
		arg0.BorderThin01:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D05_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

