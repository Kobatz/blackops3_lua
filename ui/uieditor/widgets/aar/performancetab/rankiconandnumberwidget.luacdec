-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RankIconAndNumberWidget = registerVal1
function CoD.RankIconAndNumberWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RankIconAndNumberWidget)
	registerVal2.id = "RankIconAndNumberWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 87.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 41.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.NextRankIcon = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 43.500000, 87.000000)
	registerVal4:setTopBottom(true, false, 10.000000, 32.000000)
	registerVal4:setText(Engine.Localize("55"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.NextRank = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_618_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_618_
	local function __FUNC_67A_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_7B4_(arg0, arg1)
			local function __FUNC_92F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_92F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92F_)
		end

		registerVal3:completeAnimation()
		registerVal2.NextRankIcon:setScale(1.000000)
		__FUNC_7B4_(registerVal3, {})
		local function __FUNC_AE1_(arg0, arg1)
			local function __FUNC_C5B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C5B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5B_)
		end

		registerVal4:completeAnimation()
		registerVal2.NextRank:setScale(1.000000)
		__FUNC_AE1_(registerVal4, {})
	end

	registerVal6.GrowBig = __FUNC_67A_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

