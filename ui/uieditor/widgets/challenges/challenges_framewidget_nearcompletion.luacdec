-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_CallingCardProfiler_NearCompletion")
require("ui.uieditor.widgets.Challenges.Challenges_NearCompletionWidget_Long")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local function __FUNC_2E6_(arg0, arg1)
	local function __FUNC_358_(arg0, arg1)
		arg0.CallingCardProfiler.TierList:updateDataSource()
	end

	arg0:registerEventHandler("update_tier_list", __FUNC_358_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Challenges_FrameWidget_NearCompletion = registerVal2
local function __FUNC_3ED_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_FrameWidget_NearCompletion)
	registerVal2.id = "Challenges_FrameWidget_NearCompletion"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Challenges_CallingCardProfiler_NearCompletion.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -371.000000, -13.000000)
	registerVal3:setTopBottom(true, true, 29.000000, -25.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardProfiler = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 50.000000, 650.000000)
	registerVal4:setTopBottom(false, false, -230.000000, 230.000000)
	registerVal4:setDataSource("ChallengesNearCompletionList")
	registerVal4:setWidgetType(CoD.Challenges_NearCompletionWidget_Long)
	registerVal4:setVerticalCount(6.000000)
	registerVal4:setVerticalCounter(CoD.verticalCounter)
	registerVal2:addElement(registerVal4)
	registerVal2.NearCompletionList = registerVal4
	local function __FUNC_BF9_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal4, nil, false, __FUNC_BF9_)
	local function __FUNC_C4A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.SelectedCardIcon:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "iconId", true, __FUNC_C4A_)
	local function __FUNC_D45_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.TierText:setText(Engine.Localize(PrependLocalizeString("CHALLENGE_TIER", LocalizeString(PrependString("CHALLENGE_TIER_", registerVal1)))))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "maxTier", true, __FUNC_D45_)
	local function __FUNC_EBB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.CardDescription:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "description", true, __FUNC_EBB_)
	local function __FUNC_F97_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3.ProgressBar:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "statPercent", true, __FUNC_F97_)
	local function __FUNC_110D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.ProgressFraction:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "statFractionText", true, __FUNC_110D_)
	local function __FUNC_11EC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.TierStatus:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "tierStatus", true, __FUNC_11EC_)
	local function __FUNC_12C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.XPText:setText(Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "xp", true, __FUNC_12C6_)
	local registerVal5 = {}
	registerVal5.left = registerVal4
	registerVal3.navigation = registerVal5
	registerVal5 = {}
	registerVal5.right = registerVal3
	registerVal4.navigation = registerVal5
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "CallingCardProfiler"
	registerVal4.id = "NearCompletionList"
	local function __FUNC_13D9_(arg0, arg1)
		local registerVal2 = arg0.CallingCardProfiler:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_13D9_)
	local function __FUNC_14E7_(arg0)
		arg0.CallingCardProfiler:close()
		arg0.NearCompletionList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_14E7_)
	if __FUNC_2E6_ then
		__FUNC_2E6_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Challenges_FrameWidget_NearCompletion.new = __FUNC_3ED_
