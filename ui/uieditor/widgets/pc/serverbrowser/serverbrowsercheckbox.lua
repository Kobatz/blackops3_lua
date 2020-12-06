-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_MusicTracks_Checkbox")
require("ui.uieditor.widgets.horizontalScrollingTextBox_20pt")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_lines")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ServerBrowserCheckBox = registerVal1
function CoD.ServerBrowserCheckBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ServerBrowserCheckBox)
	registerVal2.id = "ServerBrowserCheckBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.backing = registerVal3
	local registerVal4 = CoD.StartMenu_MusicTracks_Checkbox.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 14.000000)
	registerVal4:setTopBottom(false, false, -7.000000, 7.000000)
	local function __FUNC_C4F_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_C4F_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Checked"
	local function __FUNC_C9E_(arg0, arg1, arg2)
		return IsFilterActive(registerVal2, arg1)
	end

	registerVal8.condition = __FUNC_C9E_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "serverBrowser.filterRefresh")
	local function __FUNC_CF4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "serverBrowser.filterRefresh"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_CF4_)
	registerVal2:addElement(registerVal4)
	registerVal2.checkbox = registerVal4
	local registerVal5 = CoD.horizontalScrollingTextBox_20pt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 19.000000, 150.000000)
	registerVal5:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal5.textBox:setTTF("fonts/default.ttf")
	registerVal5.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_E25_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "name", true, __FUNC_E25_)
	registerVal2:addElement(registerVal5)
	registerVal2.itemName = registerVal5
	local registerVal6 = CoD.MissionRecordVault_lines.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 396.000000, -395.000000)
	registerVal6:setTopBottom(false, true, -26.500000, -22.440000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.MissionRecordVaultlines010 = registerVal6
	registerVal7 = CoD.MissionRecordVault_lines.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 396.000000, -395.000000)
	registerVal7:setTopBottom(false, true, -2.500000, 1.560000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.MissionRecordVaultlines0100 = registerVal7
	registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_EFB_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setLeftRight(true, false, 0.000000, 400.000000)
		registerVal2.backing:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkbox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MissionRecordVaultlines010:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MissionRecordVaultlines0100:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_EFB_
	local function __FUNC_121F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkbox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemName:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MissionRecordVaultlines010:setLeftRight(true, true, 499.000000, -500.000000)
		registerVal2.MissionRecordVaultlines010:setTopBottom(false, true, -30.500000, -19.440000)
		registerVal2.MissionRecordVaultlines010:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MissionRecordVaultlines0100:setLeftRight(true, true, 499.000000, -500.000000)
		registerVal2.MissionRecordVaultlines0100:setTopBottom(false, true, -2.500000, 1.560000)
		registerVal2.MissionRecordVaultlines0100:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_121F_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1632_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.checkbox:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemName:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_1632_
	registerVal8.Disabled = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1864_(arg0)
		arg0.checkbox:close()
		arg0.itemName:close()
		arg0.MissionRecordVaultlines010:close()
		arg0.MissionRecordVaultlines0100:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1864_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

