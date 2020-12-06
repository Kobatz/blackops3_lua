-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderThin")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordMedal = registerVal1
function CoD.CombatRecordMedal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordMedal)
	registerVal2.id = "CombatRecordMedal"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 153.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BorderThin.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderThin0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, -0.330000)
	registerVal4:setTopBottom(false, true, -52.500000, -34.500000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_B0F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "medalRef", true, __FUNC_B0F_)
	registerVal2:addElement(registerVal4)
	registerVal2.Title = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, -0.330000)
	registerVal5:setTopBottom(false, true, -34.500000, -2.500000)
	registerVal5:setRGB(1.000000, 0.800000, 0.400000)
	registerVal5:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_BC6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "value", true, __FUNC_BC6_)
	registerVal2:addElement(registerVal5)
	registerVal2.Value = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 17.830000, 101.830000)
	registerVal6:setTopBottom(true, false, 7.000000, 91.000000)
	registerVal6:setupUIStreamedImage(0.000000)
	local function __FUNC_C7E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "backingLarge", true, __FUNC_C7E_)
	registerVal2:addElement(registerVal6)
	registerVal2.MedalBacking = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 17.830000, 101.830000)
	registerVal7:setTopBottom(true, false, 7.000000, 91.000000)
	registerVal7:setupUIStreamedImage(0.000000)
	local function __FUNC_D30_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "iconLarge", true, __FUNC_D30_)
	registerVal2:addElement(registerVal7)
	registerVal2.MedalImage = registerVal7
	local registerVal8 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.StartMenuframenoBG0 = registerVal8
	local function __FUNC_DE4_(arg0)
		arg0.BorderThin0:close()
		arg0.StartMenuframenoBG0:close()
		arg0.Title:close()
		arg0.Value:close()
		arg0.MedalBacking:close()
		arg0.MedalImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DE4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

