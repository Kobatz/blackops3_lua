-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_CryptokeyCounterIcon")
require("ui.uieditor.widgets.StartMenu.StartMenu_CODpoints")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_CurrencyCounts = registerVal1
function CoD.StartMenu_CurrencyCounts.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_CurrencyCounts)
	registerVal2.id = "StartMenu_CurrencyCounts"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 204.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_CryptokeyCounterIcon.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 77.000000, 102.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 27.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BMCryptokeyCounterIcon = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 103.000000, 151.250000)
	registerVal4:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_E2B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "keyCount", __FUNC_E2B_)
	registerVal2:addElement(registerVal4)
	registerVal2.cryptokeyCount = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 150.250000, 175.250000)
	registerVal5:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_zm_vial_aar_256"))
	registerVal2:addElement(registerVal5)
	registerVal2.vial = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 171.000000, 204.000000)
	registerVal6:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal6:setTTF("fonts/default.ttf")
	local function __FUNC_F23_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "MegaChewTokens", "remainingTokens", __FUNC_F23_)
	registerVal2:addElement(registerVal6)
	registerVal2.vialCount = registerVal6
	local registerVal7 = CoD.StartMenu_CODpoints.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -0.250000, 76.000000)
	registerVal7:setTopBottom(true, false, 2.500000, 27.500000)
	local function __FUNC_101B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.codpointsCount:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "codPoints", __FUNC_101B_)
	registerVal2:addElement(registerVal7)
	registerVal2.StartMenuCODpoints = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1137_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BMCryptokeyCounterIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuCODpoints:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1137_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_13A7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BMCryptokeyCounterIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vial:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuCODpoints:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_13A7_
	registerVal8.ShowKeysAndVials = registerVal9
	registerVal9 = {}
	local function __FUNC_161C_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BMCryptokeyCounterIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vial:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuCODpoints:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_161C_
	registerVal8.Shown = registerVal9
	registerVal9 = {}
	local function __FUNC_188F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BMCryptokeyCounterIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuCODpoints:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_188F_
	registerVal8.ShownOnlyCODPoints = registerVal9
	registerVal9 = {}
	local function __FUNC_1B04_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BMCryptokeyCounterIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuCODpoints:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1B04_
	registerVal8.ShownOnlyKeys = registerVal9
	registerVal9 = {}
	local function __FUNC_1D7C_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BMCryptokeyCounterIcon:setLeftRight(true, false, 129.750000, 154.750000)
		registerVal2.BMCryptokeyCounterIcon:setTopBottom(true, false, 3.000000, 27.000000)
		registerVal2.BMCryptokeyCounterIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cryptokeyCount:setLeftRight(true, false, 155.750000, 204.000000)
		registerVal2.cryptokeyCount:setTopBottom(false, false, -11.000000, 11.000000)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuCODpoints:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1D7C_
	local function __FUNC_20E8_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BMCryptokeyCounterIcon:setLeftRight(true, false, 129.750000, 154.750000)
		registerVal2.BMCryptokeyCounterIcon:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.BMCryptokeyCounterIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_241E_(arg0, arg1)
			local function __FUNC_2574_(arg0, arg1)
				local function __FUNC_2727_(arg0, arg1)
					local function __FUNC_28D7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 155.750000, 204.000000)
						arg0:setTopBottom(false, false, -11.000000, 11.000000)
						arg0:setAlpha(1.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_28D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 165.750000, 214.000000)
					arg0:setScale(1.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28D7_)
				end

				if arg1.interrupted then
					__FUNC_2727_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 160.750000, 209.000000)
				arg0:setScale(1.240000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2727_)
			end

			if arg1.interrupted then
				__FUNC_2574_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2574_)
		end

		registerVal4:completeAnimation()
		registerVal2.cryptokeyCount:setLeftRight(true, false, 155.750000, 204.000000)
		registerVal2.cryptokeyCount:setTopBottom(false, false, -11.000000, 11.000000)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.cryptokeyCount:setScale(1.000000)
		__FUNC_241E_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.Bonus = __FUNC_20E8_
	registerVal8.ShownAllExceptVials = registerVal9
	registerVal9 = {}
	local function __FUNC_2B17_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BMCryptokeyCounterIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vial:setLeftRight(true, false, 82.250000, 107.250000)
		registerVal2.vial:setTopBottom(false, false, -12.500000, 12.500000)
		registerVal2.vial:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialCount:setLeftRight(true, false, 103.000000, 136.000000)
		registerVal2.vialCount:setTopBottom(false, false, -11.000000, 11.000000)
		registerVal2.vialCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuCODpoints:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2B17_
	registerVal8.ShownOnlyVials = registerVal9
	registerVal9 = {}
	local function __FUNC_2E80_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BMCryptokeyCounterIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vial:setLeftRight(true, false, 78.000000, 103.000000)
		registerVal2.vial:setTopBottom(false, false, -12.500000, 12.500000)
		registerVal2.vial:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialCount:setLeftRight(true, false, 98.750000, 131.750000)
		registerVal2.vialCount:setTopBottom(false, false, -11.000000, 11.000000)
		registerVal2.vialCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuCODpoints:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2E80_
	registerVal8.ShownAllExceptCryptoKeys = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "ShowKeysAndVials"
	local function __FUNC_31EC_(arg0, arg2, arg3)
		local registerVal3 = IsLootReady(arg1)
		if registerVal3 then
			registerVal3 = AreCodPointsEnabled(arg1)
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_31EC_
	local registerVal12 = {}
	registerVal12.stateName = "Shown"
	local function __FUNC_3272_(arg0, arg2, arg3)
		return IsLootReady(arg1)
	end

	registerVal12.condition = __FUNC_3272_
	local registerVal13 = {}
	registerVal13.stateName = "ShownOnlyCODPoints"
	local function __FUNC_32C1_(arg0, arg2, arg3)
		local registerVal3 = IsLootReady(arg1)
		if registerVal3 then
			registerVal3 = AreCodPointsEnabled(arg1)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_32C1_
	local registerVal14 = {}
	registerVal14.stateName = "ShownOnlyKeys"
	local function __FUNC_3342_(arg0, arg2, arg3)
		local registerVal3 = IsLootReady(arg1)
		if registerVal3 then
			registerVal3 = AreCodPointsEnabled(arg1)
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_3342_
	local registerVal15 = {}
	registerVal15.stateName = "ShownAllExceptVials"
	local function __FUNC_33C6_(arg0, arg2, arg3)
		return IsLootReady(arg1)
	end

	registerVal15.condition = __FUNC_33C6_
	local registerVal16 = {}
	registerVal16.stateName = "ShownOnlyVials"
	local function __FUNC_3415_(arg0, arg2, arg3)
		local registerVal3 = IsLootReady(arg1)
		if registerVal3 then
			registerVal3 = AreCodPointsEnabled(arg1)
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_3415_
	local registerVal17 = {}
	registerVal17.stateName = "ShownAllExceptCryptoKeys"
	local function __FUNC_349A_(arg0, arg2, arg3)
		return IsLootReady(arg1)
	end

	registerVal17.condition = __FUNC_349A_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "CryptoKeyProgress.keyCount")
	local function __FUNC_34E9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_34E9_)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_3618_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_3618_)
	local function __FUNC_3748_(arg0)
		arg0.BMCryptokeyCounterIcon:close()
		arg0.StartMenuCODpoints:close()
		arg0.cryptokeyCount:close()
		arg0.vialCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3748_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

