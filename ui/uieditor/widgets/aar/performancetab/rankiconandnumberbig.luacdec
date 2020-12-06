-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RankIconAndNumberBig = registerVal1
function CoD.RankIconAndNumberBig.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RankIconAndNumberBig)
	registerVal2.id = "RankIconAndNumberBig"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 156.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -73.000000, -32.000000)
	registerVal3:setTopBottom(false, false, -20.000000, 20.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.NextRankIcon = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, 29.250000, 66.250000)
	registerVal4:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal4:setText(Engine.Localize("55"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.NextRank = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -31.000000, 23.250000)
	registerVal5:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal5:setText(Engine.Localize("MENU_LEVEL_CAPS"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.LEVEL = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_7B4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_7B4_
	local function __FUNC_816_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_950_(arg0, arg1)
			local function __FUNC_ACB_(arg0, arg1)
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
				__FUNC_ACB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACB_)
		end

		registerVal3:completeAnimation()
		registerVal2.NextRankIcon:setScale(1.000000)
		__FUNC_950_(registerVal3, {})
		local function __FUNC_C7D_(arg0, arg1)
			local function __FUNC_DF7_(arg0, arg1)
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
				__FUNC_DF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF7_)
		end

		registerVal4:completeAnimation()
		registerVal2.NextRank:setScale(1.000000)
		__FUNC_C7D_(registerVal4, {})
	end

	registerVal7.GrowBig = __FUNC_816_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

