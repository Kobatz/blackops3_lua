-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumBuffTitle")
require("ui.uieditor.widgets.HUD.ZM_Notif.ZmNotif1_CursorHint")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MegaChewVialPackDesc = registerVal1
function CoD.MegaChewVialPackDesc.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MegaChewVialPackDesc)
	registerVal2.id = "MegaChewVialPackDesc"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 448.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 54.000000)
	local registerVal3 = CoD.BubbleGumBuffTitle.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -48.500000, 48.500000)
	registerVal3:setTopBottom(true, false, 4.000000, 29.000000)
	registerVal3.EquippedBuffsLabel:setText(LocalizeToUpperString("ZMUI_VIAL_PACK_CAPS"))
	registerVal2:addElement(registerVal3)
	registerVal2.BubbleGumBuffTitle0 = registerVal3
	local registerVal4 = CoD.ZmNotif1_CursorHint.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -32.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 32.000000, 52.000000)
	registerVal4.FEButtonPanel0:setAlpha(0.700000)
	local function __FUNC_EB5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.CursorHintText:setText(LocalizeIntoString("ZMUI_VIALS_OF_LIQUID_DIVINIUM", registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "vials", true, __FUNC_EB5_)
	registerVal2:addElement(registerVal4)
	registerVal2.ZmNotif1CursorHint0 = registerVal4
	local registerVal5 = CoD.ZmNotif1_CursorHint.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -32.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 32.000000, 52.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5.FEButtonPanel0:setAlpha(0.700000)
	local function __FUNC_FBB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.CursorHintText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "supportText", true, __FUNC_FBB_)
	registerVal2:addElement(registerVal5)
	registerVal2.UltraRareMegaDesc = registerVal5
	local registerVal6 = CoD.ZmNotif1_CursorHint.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -32.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 55.000000, 76.000000)
	registerVal6:setRGB(0.000000, 0.600000, 0.900000)
	registerVal6.FEButtonPanel0:setAlpha(0.700000)
	local function __FUNC_1096_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.CursorHintText:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_liquid_divinium_promo", __FUNC_1096_)
	registerVal2:addElement(registerVal6)
	registerVal2.ZmNotif1CursorHint00 = registerVal6
	local registerVal7 = CoD.ZmNotif1_CursorHint.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -32.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 55.000000, 76.000000)
	registerVal7:setRGB(0.000000, 0.600000, 0.900000)
	registerVal7:setAlpha(0.000000)
	registerVal7.FEButtonPanel0:setAlpha(0.700000)
	local function __FUNC_1194_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.CursorHintText:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_ld_mega_bundle", __FUNC_1194_)
	registerVal2:addElement(registerVal7)
	registerVal2.MegaBundleTimer = registerVal7
	local registerVal8 = CoD.ZmNotif1_CursorHint.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -32.000000, 480.000000)
	registerVal8:setTopBottom(true, false, 55.000000, 76.000000)
	registerVal8:setRGB(0.000000, 0.600000, 0.900000)
	registerVal8:setAlpha(0.000000)
	registerVal8.FEButtonPanel0:setAlpha(0.700000)
	local function __FUNC_1294_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.CursorHintText:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_urm_active", __FUNC_1294_)
	registerVal2:addElement(registerVal8)
	registerVal2.UltraRareMegaTimer = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_1394_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BubbleGumBuffTitle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZmNotif1CursorHint0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UltraRareMegaDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ZmNotif1CursorHint00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MegaBundleTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UltraRareMegaTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1394_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_167E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal3.EquippedBuffsLabel:completeAnimation()
		registerVal2.BubbleGumBuffTitle0:setAlpha(1.000000)
		registerVal2.BubbleGumBuffTitle0.EquippedBuffsLabel:setText(LocalizeToUpperString("ZMUI_URM_PURCHASE_TITLE"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZmNotif1CursorHint0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UltraRareMegaDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ZmNotif1CursorHint00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MegaBundleTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UltraRareMegaTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_167E_
	registerVal9.VisibleUltraRareMegaTimer = registerVal10
	registerVal10 = {}
	local function __FUNC_1A20_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal3.EquippedBuffsLabel:completeAnimation()
		registerVal2.BubbleGumBuffTitle0:setAlpha(1.000000)
		registerVal2.BubbleGumBuffTitle0.EquippedBuffsLabel:setText(LocalizeToUpperString("ZMUI_URM_PURCHASE_TITLE"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZmNotif1CursorHint0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UltraRareMegaDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ZmNotif1CursorHint00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MegaBundleTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UltraRareMegaTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1A20_
	registerVal9.VisibleUltraRareMega = registerVal10
	registerVal10 = {}
	local function __FUNC_1DC4_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal3.EquippedBuffsLabel:completeAnimation()
		registerVal2.BubbleGumBuffTitle0:setAlpha(1.000000)
		registerVal2.BubbleGumBuffTitle0.EquippedBuffsLabel:setText(LocalizeToUpperString("ZMUI_VIAL_PACK_CAPS"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZmNotif1CursorHint0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UltraRareMegaDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ZmNotif1CursorHint00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MegaBundleTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UltraRareMegaTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1DC4_
	registerVal9.VisibleSaleActive = registerVal10
	registerVal10 = {}
	local function __FUNC_2164_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal3.EquippedBuffsLabel:completeAnimation()
		registerVal2.BubbleGumBuffTitle0:setAlpha(1.000000)
		registerVal2.BubbleGumBuffTitle0.EquippedBuffsLabel:setText(LocalizeToUpperString("ZMUI_VIAL_PACK_CAPS"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZmNotif1CursorHint0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UltraRareMegaDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ZmNotif1CursorHint00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MegaBundleTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UltraRareMegaTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_2164_
	registerVal9.VisibleMegaBundle = registerVal10
	registerVal10 = {}
	local function __FUNC_2504_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal3.EquippedBuffsLabel:completeAnimation()
		registerVal2.BubbleGumBuffTitle0:setAlpha(1.000000)
		registerVal2.BubbleGumBuffTitle0.EquippedBuffsLabel:setText(LocalizeToUpperString("ZMUI_VIAL_PACK_CAPS"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZmNotif1CursorHint0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UltraRareMegaDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ZmNotif1CursorHint00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MegaBundleTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UltraRareMegaTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_2504_
	registerVal9.Visible = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "VisibleUltraRareMegaTimer"
	local function __FUNC_28A4_(arg0, arg1, arg2)
		return IsIntDvarNonZero("loot_ld_urm_gobblegum_enabled")
	end

	registerVal12.condition = __FUNC_28A4_
	local registerVal13 = {}
	registerVal13.stateName = "VisibleUltraRareMega"
	local function __FUNC_2921_(arg0, arg1, arg2)
		return IsIntDvarNonZero("loot_ld_urm_gobblegum_enabled")
	end

	registerVal13.condition = __FUNC_2921_
	local registerVal14 = {}
	registerVal14.stateName = "VisibleSaleActive"
	local function __FUNC_299D_(arg0, arg2, arg3)
		return IsLiquidDiviniumSaleActive(arg1)
	end

	registerVal14.condition = __FUNC_299D_
	local registerVal15 = {}
	registerVal15.stateName = "VisibleMegaBundle"
	local function __FUNC_29FC_(arg0, arg2, arg3)
		return IsLiquidDiviniumMegaBundleActive(arg1)
	end

	registerVal15.condition = __FUNC_29FC_
	local registerVal16 = {}
	registerVal16.stateName = "Visible"
	local function __FUNC_2A62_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_2A62_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "autoevents.cycled")
	local function __FUNC_2A94_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_2A94_)
	local function __FUNC_2BBB_(arg0)
		arg0.BubbleGumBuffTitle0:close()
		arg0.ZmNotif1CursorHint0:close()
		arg0.UltraRareMegaDesc:close()
		arg0.ZmNotif1CursorHint00:close()
		arg0.MegaBundleTimer:close()
		arg0.UltraRareMegaTimer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2BBB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

