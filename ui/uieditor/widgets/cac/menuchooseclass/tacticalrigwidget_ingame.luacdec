-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew_InGame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TacticalRigWidget_InGame = registerVal1
function CoD.TacticalRigWidget_InGame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TacticalRigWidget_InGame)
	registerVal2.id = "TacticalRigWidget_InGame"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 45.000000)
	registerVal3:setTopBottom(true, false, -5.000000, 14.000000)
	registerVal3:setRGB(0.570000, 0.600000, 0.650000)
	registerVal3:setText(Engine.Localize("MENU_TAC_RIG_CAPS"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.header = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 83.000000, 145.000000)
	local function __FUNC_D3E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_D3E_)
	registerVal2:addElement(registerVal4)
	registerVal2.TacRig2 = registerVal4
	local registerVal5 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 16.000000, 78.000000)
	local function __FUNC_E0F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_E0F_)
	registerVal2:addElement(registerVal5)
	registerVal2.TacRig1 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 3.000000, 143.000000)
	registerVal6:setTopBottom(true, false, 25.000000, 41.000000)
	registerVal6:setRGB(0.860000, 0.890000, 0.750000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize(""))
	registerVal6:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.rig1Name = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 3.000000, 143.000000)
	registerVal7:setTopBottom(true, false, 55.000000, 71.000000)
	registerVal7:setRGB(0.750000, 0.370000, 0.290000)
	registerVal7:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_EDF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "rig1_upgraded", true, __FUNC_EDF_)
	registerVal2:addElement(registerVal7)
	registerVal2.rig1Upgraded = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 3.000000, 143.000000)
	registerVal8:setTopBottom(true, false, 95.000000, 111.000000)
	registerVal8:setRGB(0.860000, 0.890000, 0.750000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize(""))
	registerVal8:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.rig2Name = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 3.000000, 143.000000)
	registerVal9:setTopBottom(true, false, 124.000000, 140.000000)
	registerVal9:setRGB(0.750000, 0.370000, 0.290000)
	registerVal9:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_F96_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "rig2_upgraded", true, __FUNC_F96_)
	registerVal2:addElement(registerVal9)
	registerVal2.rig2Upgraded = registerVal9
	local function __FUNC_104E_(arg0)
		arg0.TacRig2:close()
		arg0.TacRig1:close()
		arg0.rig1Upgraded:close()
		arg0.rig2Upgraded:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_104E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

