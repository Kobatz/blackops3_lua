-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetWildcard_InGame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WildcardWidgetNew_InGame = registerVal1
function CoD.WildcardWidgetNew_InGame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WildcardWidgetNew_InGame)
	registerVal2.id = "WildcardWidgetNew_InGame"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 158.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponItemModelWidgetWildcard_InGame.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, 37.160000, 111.500000)
	registerVal3:setTopBottom(false, true, -140.000000, -28.000000)
	registerVal3:setZRot(-15.000000)
	local function __FUNC_A29_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_A29_)
	registerVal2:addElement(registerVal3)
	registerVal2.wildcard2 = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetWildcard_InGame.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -112.000000, -37.680000)
	registerVal4:setTopBottom(false, true, -140.000000, -28.000000)
	registerVal4:setZRot(15.000000)
	local function __FUNC_AFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_AFB_)
	registerVal2:addElement(registerVal4)
	registerVal2.wildcard3 = registerVal4
	local registerVal5 = CoD.WeaponItemModelWidgetWildcard_InGame.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -37.160000, 37.160000)
	registerVal5:setTopBottom(false, true, -150.000000, -38.000000)
	local function __FUNC_BCB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_BCB_)
	registerVal2:addElement(registerVal5)
	registerVal2.wildcard1 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_C9B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.wildcard2:setLeftRight(false, false, 37.160000, 111.500000)
		registerVal2.wildcard2:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard2:setZRot(-15.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.wildcard3:setLeftRight(false, false, -112.000000, -37.680000)
		registerVal2.wildcard3:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard3:setZRot(15.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard1:setTopBottom(false, true, -150.000000, -38.000000)
		registerVal2.wildcard1:setZRot(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C9B_
	local function __FUNC_F99_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_1277_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 409.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 47.160000, 121.500000)
			arg0:setTopBottom(false, true, -140.000000, -28.000000)
			arg0:setZRot(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.wildcard2:setLeftRight(false, false, 37.160000, 111.500000)
		registerVal2.wildcard2:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard2:setZRot(-15.000000)
		__FUNC_1277_(registerVal3, {})
		local function __FUNC_1498_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 509.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -122.000000, -47.680000)
			arg0:setTopBottom(false, true, -140.000000, -28.000000)
			arg0:setZRot(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.wildcard3:setLeftRight(false, false, -112.000000, -37.680000)
		registerVal2.wildcard3:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard3:setZRot(15.000000)
		__FUNC_1498_(registerVal4, {})
		local function __FUNC_16BC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 310.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -37.160000, 37.160000)
			arg0:setTopBottom(false, true, -155.000000, -43.000000)
			arg0:setZRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard1:setTopBottom(false, true, -150.000000, -38.000000)
		registerVal2.wildcard1:setZRot(0.000000)
		__FUNC_16BC_(registerVal5, {})
	end

	registerVal7.ToCard1 = __FUNC_F99_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_18E0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.wildcard2:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard2:setTopBottom(false, true, -155.000000, -43.000000)
		registerVal2.wildcard2:setZRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.wildcard3:setLeftRight(false, false, -200.000000, -125.680000)
		registerVal2.wildcard3:setTopBottom(false, true, -104.000000, 8.000000)
		registerVal2.wildcard3:setZRot(30.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, -122.000000, -47.680000)
		registerVal2.wildcard1:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard1:setZRot(15.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_18E0_
	local function __FUNC_1BF0_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_1EDE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 47.160000, 121.500000)
			arg0:setTopBottom(false, true, -140.000000, -28.000000)
			arg0:setZRot(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.wildcard2:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard2:setTopBottom(false, true, -155.000000, -43.000000)
		registerVal2.wildcard2:setZRot(0.000000)
		__FUNC_1EDE_(registerVal3, {})
		local function __FUNC_2100_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -122.000000, -47.680000)
			arg0:setTopBottom(false, true, -140.000000, -28.000000)
			arg0:setZRot(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.wildcard3:setLeftRight(false, false, -200.000000, -125.680000)
		registerVal2.wildcard3:setTopBottom(false, true, -104.000000, 8.000000)
		registerVal2.wildcard3:setZRot(30.000000)
		__FUNC_2100_(registerVal4, {})
		local function __FUNC_2324_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -37.160000, 37.160000)
			arg0:setTopBottom(false, true, -155.000000, -43.000000)
			arg0:setZRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, -122.000000, -47.680000)
		registerVal2.wildcard1:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard1:setZRot(15.000000)
		__FUNC_2324_(registerVal5, {})
	end

	registerVal7.ToCard1 = __FUNC_1BF0_
	registerVal6.Card1to2 = registerVal7
	registerVal7 = {}
	local function __FUNC_2548_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.wildcard2:setLeftRight(false, false, 122.680000, 197.000000)
		registerVal2.wildcard2:setTopBottom(false, true, -104.000000, 8.000000)
		registerVal2.wildcard2:setZRot(-30.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.wildcard3:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard3:setTopBottom(false, true, -155.000000, -43.000000)
		registerVal2.wildcard3:setZRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, 47.160000, 121.500000)
		registerVal2.wildcard1:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard1:setZRot(-15.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_2548_
	local function __FUNC_2858_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2B46_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 47.160000, 121.500000)
			arg0:setTopBottom(false, true, -140.000000, -28.000000)
			arg0:setZRot(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.wildcard2:setLeftRight(false, false, 122.680000, 197.000000)
		registerVal2.wildcard2:setTopBottom(false, true, -104.000000, 8.000000)
		registerVal2.wildcard2:setZRot(-30.000000)
		__FUNC_2B46_(registerVal3, {})
		local function __FUNC_2D68_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -122.000000, -47.680000)
			arg0:setTopBottom(false, true, -140.000000, -28.000000)
			arg0:setZRot(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.wildcard3:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard3:setTopBottom(false, true, -155.000000, -43.000000)
		registerVal2.wildcard3:setZRot(0.000000)
		__FUNC_2D68_(registerVal4, {})
		local function __FUNC_2F8C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -37.160000, 37.160000)
			arg0:setTopBottom(false, true, -155.000000, -43.000000)
			arg0:setZRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, 47.160000, 121.500000)
		registerVal2.wildcard1:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard1:setZRot(-15.000000)
		__FUNC_2F8C_(registerVal5, {})
	end

	registerVal7.ToCard1 = __FUNC_2858_
	registerVal6.Card1to3 = registerVal7
	registerVal7 = {}
	local function __FUNC_31B0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.wildcard2:setLeftRight(false, false, 47.160000, 121.500000)
		registerVal2.wildcard2:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard2:setZRot(-15.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.wildcard3:setLeftRight(false, false, -122.000000, -47.680000)
		registerVal2.wildcard3:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard3:setZRot(15.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard1:setTopBottom(false, true, -155.000000, -43.000000)
		registerVal2.wildcard1:setZRot(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_31B0_
	local function __FUNC_34B6_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_3798_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -37.160000, 37.160000)
			arg0:setTopBottom(false, true, -155.000000, -43.000000)
			arg0:setZRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.wildcard2:setLeftRight(false, false, 47.160000, 121.500000)
		registerVal2.wildcard2:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard2:setZRot(-15.000000)
		__FUNC_3798_(registerVal3, {})
		local function __FUNC_39BC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -200.000000, -125.680000)
			arg0:setTopBottom(false, true, -104.000000, 8.000000)
			arg0:setZRot(30.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.wildcard3:setLeftRight(false, false, -122.000000, -47.680000)
		registerVal2.wildcard3:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard3:setZRot(15.000000)
		__FUNC_39BC_(registerVal4, {})
		local function __FUNC_3BE0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 230.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -122.000000, -47.680000)
			arg0:setTopBottom(false, true, -140.000000, -28.000000)
			arg0:setZRot(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard1:setTopBottom(false, true, -155.000000, -43.000000)
		registerVal2.wildcard1:setZRot(0.000000)
		__FUNC_3BE0_(registerVal5, {})
	end

	registerVal7.Card1to2 = __FUNC_34B6_
	local function __FUNC_3E04_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_40E8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 189.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 122.680000, 197.000000)
			arg0:setTopBottom(false, true, -104.000000, 8.000000)
			arg0:setZRot(-30.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.wildcard2:setLeftRight(false, false, 47.160000, 121.500000)
		registerVal2.wildcard2:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard2:setZRot(-15.000000)
		__FUNC_40E8_(registerVal3, {})
		local function __FUNC_430C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -37.160000, 37.160000)
			arg0:setTopBottom(false, true, -155.000000, -43.000000)
			arg0:setZRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.wildcard3:setLeftRight(false, false, -121.000000, -46.680000)
		registerVal2.wildcard3:setTopBottom(false, true, -140.000000, -28.000000)
		registerVal2.wildcard3:setZRot(15.000000)
		__FUNC_430C_(registerVal4, {})
		local function __FUNC_4530_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 47.160000, 121.500000)
			arg0:setTopBottom(false, true, -140.000000, -28.000000)
			arg0:setZRot(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard1:setTopBottom(false, true, -155.000000, -43.000000)
		registerVal2.wildcard1:setZRot(0.000000)
		__FUNC_4530_(registerVal5, {})
	end

	registerVal7.Card1to3 = __FUNC_3E04_
	local function __FUNC_4754_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_4898_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -37.160000, 37.160000)
			arg0:setTopBottom(false, true, -333.000000, -221.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard1:setTopBottom(false, true, -155.000000, -43.000000)
		__FUNC_4898_(registerVal5, {})
	end

	registerVal7.Card1Selected = __FUNC_4754_
	registerVal6.ToCard1 = registerVal7
	registerVal7 = {}
	local function __FUNC_4A98_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.wildcard2:setLeftRight(false, false, 52.500000, 137.500000)
		registerVal2.wildcard2:setTopBottom(false, true, -136.000000, -8.000000)
		registerVal2.wildcard2:setZRot(-5.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.wildcard3:setLeftRight(false, false, -137.500000, -52.500000)
		registerVal2.wildcard3:setTopBottom(false, true, -136.000000, -8.000000)
		registerVal2.wildcard3:setZRot(5.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.wildcard1:setLeftRight(false, false, -37.160000, 37.160000)
		registerVal2.wildcard1:setTopBottom(false, true, -333.000000, -221.000000)
		registerVal2.wildcard1:setZRot(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_4A98_
	registerVal6.Card1Selected = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Card1to2"
	local function __FUNC_4D9E_(arg0, arg1, arg2)
		return IsElementInState(arg1, "Card1to2")
	end

	registerVal9.condition = __FUNC_4D9E_
	local registerVal10 = {}
	registerVal10.stateName = "Card1to3"
	local function __FUNC_4E08_(arg0, arg1, arg2)
		return IsElementInState(arg1, "Card1to3")
	end

	registerVal10.condition = __FUNC_4E08_
	local registerVal11 = {}
	registerVal11.stateName = "ToCard1"
	local function __FUNC_4E74_(arg0, arg1, arg2)
		return IsElementInState(arg1, "ToCard1")
	end

	registerVal11.condition = __FUNC_4E74_
	local registerVal12 = {}
	registerVal12.stateName = "Card1Selected"
	local function __FUNC_4EDF_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_4EDF_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_4F29_(arg0, arg1)
		local registerVal2 = arg0.wildcard1:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4F29_)
	local function __FUNC_502D_(arg0)
		arg0.wildcard2:close()
		arg0.wildcard3:close()
		arg0.wildcard1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_502D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

