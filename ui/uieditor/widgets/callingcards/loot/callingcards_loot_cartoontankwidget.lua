-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_GoldFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Loot_CartoonTankWidget = registerVal1
function CoD.CallingCards_Loot_CartoonTankWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Loot_CartoonTankWidget)
	registerVal2.id = "CallingCards_Loot_CartoonTankWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_cartoontank_bg3"))
	registerVal2:addElement(registerVal3)
	registerVal2.Frame3 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_cartoontank_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.Frame2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_cartoontank_bg1"))
	registerVal2:addElement(registerVal5)
	registerVal2.Frame1 = registerVal5
	local registerVal6 = CoD.CallingCards_GoldFrame.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.CallingCardsGoldFrame = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_827_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Frame3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_9F1_(arg0, arg1)
			local function __FUNC_B48_(arg0, arg1)
				local function __FUNC_CC3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_CC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC3_)
			end

			if arg1.interrupted then
				__FUNC_B48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B48_)
		end

		registerVal4:completeAnimation()
		registerVal2.Frame2:setAlpha(1.000000)
		__FUNC_9F1_(registerVal4, {})
		local function __FUNC_E75_(arg0, arg1)
			local function __FUNC_FEF_(arg0, arg1)
				local function __FUNC_1144_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1144_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1144_)
			end

			if arg1.interrupted then
				__FUNC_FEF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FEF_)
		end

		registerVal5:completeAnimation()
		registerVal2.Frame1:setAlpha(1.000000)
		__FUNC_E75_(registerVal5, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_827_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_12F9_(arg0)
		arg0.CallingCardsGoldFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12F9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

