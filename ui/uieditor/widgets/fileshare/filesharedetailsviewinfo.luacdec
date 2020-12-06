-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.FileShare.FileshareSelectedItemInfo")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareDetailsViewInfo = registerVal1
function CoD.FileshareDetailsViewInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareDetailsViewInfo)
	registerVal2.id = "FileshareDetailsViewInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.fe_FooterContainer_NOTLobby.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 619.000000, 667.000000)
	local function __FUNC_C3D_(arg0, arg2)
		SizeToSafeArea(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_C3D_)
	registerVal2:addElement(registerVal3)
	registerVal2.feFooterContainerNOTLobby = registerVal3
	local registerVal4 = CoD.FileshareSelectedItemInfo.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 798.000000, 1216.000000)
	registerVal4:setTopBottom(true, false, 558.000000, 642.000000)
	local function __FUNC_CD1_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "FileshareSelectedItem", nil, __FUNC_CD1_)
	registerVal2:addElement(registerVal4)
	registerVal2.FileshareSelectedItemInfo = registerVal4
	local registerVal5 = CoD.InfoPaneItemName.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 64.000000, 445.000000)
	registerVal5:setTopBottom(true, false, 556.500000, 590.500000)
	registerVal5.weaponNameWithVariant.variantName:setAlpha(1.000000)
	local function __FUNC_D22_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.weaponNameWithVariant.itemName.itemName:setText(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "FileshareSelectedItem", "weaponName", __FUNC_D22_)
	local function __FUNC_E09_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "FileshareSelectedItem", "fileName", __FUNC_E09_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Equipped"
	local function __FUNC_F06_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_F06_
	local registerVal10 = {}
	registerVal10.stateName = "Available"
	local function __FUNC_F50_(arg0, arg1, arg2)
		return true
	end

	registerVal10.condition = __FUNC_F50_
	local registerVal11 = {}
	registerVal11.stateName = "NotEquippable"
	local function __FUNC_F84_(arg0, arg1, arg2)
		return true
	end

	registerVal11.condition = __FUNC_F84_
	local registerVal12 = {}
	registerVal12.stateName = "NotAvailable"
	local function __FUNC_FB8_(arg0, arg1, arg2)
		return true
	end

	registerVal12.condition = __FUNC_FB8_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.ItemName = registerVal5
	local registerVal6 = CoD.InfoPaneItemName.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 64.000000, 445.000000)
	registerVal6:setTopBottom(true, false, 558.000000, 592.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6.weaponNameWithVariant.variantName:setAlpha(1.000000)
	registerVal6.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(""))
	local function __FUNC_FEC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.weaponNameWithVariant.itemName.itemName:setText(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "FileshareSelectedItem", "fileName", __FUNC_FEC_)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Equipped"
	local function __FUNC_10D5_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_10D5_
	registerVal11 = {}
	registerVal11.stateName = "Available"
	local function __FUNC_1120_(arg0, arg1, arg2)
		return true
	end

	registerVal11.condition = __FUNC_1120_
	registerVal12 = {}
	registerVal12.stateName = "NotEquippable"
	local function __FUNC_1154_(arg0, arg1, arg2)
		return true
	end

	registerVal12.condition = __FUNC_1154_
	local registerVal13 = {}
	registerVal13.stateName = "NotAvailable"
	local function __FUNC_1188_(arg0, arg1, arg2)
		return true
	end

	registerVal13.condition = __FUNC_1188_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.EmblemName = registerVal6
	local registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_11BC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.feFooterContainerNOTLobby:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FileshareSelectedItemInfo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ItemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.EmblemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_11BC_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_13E7_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.feFooterContainerNOTLobby:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FileshareSelectedItemInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ItemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.EmblemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_13E7_
	registerVal7.Hidden = registerVal8
	registerVal8 = {}
	local function __FUNC_160A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.feFooterContainerNOTLobby:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FileshareSelectedItemInfo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ItemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.EmblemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_160A_
	registerVal7.Emblem = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1833_(arg0)
		arg0.feFooterContainerNOTLobby:close()
		arg0.FileshareSelectedItemInfo:close()
		arg0.ItemName:close()
		arg0.EmblemName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1833_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

