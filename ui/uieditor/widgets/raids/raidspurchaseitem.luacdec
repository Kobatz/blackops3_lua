-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Raids.RaidsPurchaseItemInternal")
local function __FUNC_21C_(arg0, arg1)
	local function __FUNC_28D_(arg0, arg1)
	end

	arg0:registerEventHandler("restore_focus", __FUNC_28D_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.RaidsPurchaseItem = registerVal2
local function __FUNC_2B8_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.RaidsPurchaseItem)
	registerVal2.id = "RaidsPurchaseItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.RaidsPurchaseItemInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 96.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Unavailable"
	local function __FUNC_7A8_(arg0, arg2, arg3)
		local registerVal3 = RaidPurchaseAllowedForParent(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_7A8_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.RaidsPurchaseItemInternal0 = registerVal3
	local function __FUNC_816_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Image:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.RaidsPurchaseItemInternal0:linkToElementModel(registerVal2, "image", true, __FUNC_816_)
	local function __FUNC_8E3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Cost:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.RaidsPurchaseItemInternal0:linkToElementModel(registerVal2, "cost", true, __FUNC_8E3_)
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_9B4_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.Highlight:completeAnimation()
		registerVal2.RaidsPurchaseItemInternal0.Highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9B4_
	local function __FUNC_AFD_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_C54_(arg0, arg1)
			local function __FUNC_E43_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0.Highlight:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0.Highlight:setAlpha(0.250000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E43_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0.Highlight:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0.Highlight:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E43_)
		end

		registerVal3:completeAnimation()
		registerVal3.Highlight:completeAnimation()
		registerVal2.RaidsPurchaseItemInternal0.Highlight:setAlpha(0.260000)
		__FUNC_C54_(registerVal3, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal5.Focus = __FUNC_AFD_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_1069_(arg0)
		arg0.RaidsPurchaseItemInternal0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1069_)
	if __FUNC_21C_ then
		__FUNC_21C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.RaidsPurchaseItem.new = __FUNC_2B8_
