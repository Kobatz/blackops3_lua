-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetWildcard")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WildcardWidgetNew = registerVal1
function CoD.WildcardWidgetNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WildcardWidgetNew)
	registerVal2.id = "WildcardWidgetNew"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 158.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponItemModelWidgetWildcard.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, 37.160000, 111.500000)
	registerVal3:setTopBottom(false, true, -140.000000, -28.000000)
	registerVal3:setZRot(-15.000000)
	registerVal3.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_B4F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_B4F_)
	registerVal2:addElement(registerVal3)
	registerVal2.wildcard2 = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetWildcard.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -111.480000, -37.160000)
	registerVal4:setTopBottom(false, true, -140.000000, -28.000000)
	registerVal4:setZRot(15.000000)
	registerVal4.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_C1F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_C1F_)
	registerVal2:addElement(registerVal4)
	registerVal2.wildcard3 = registerVal4
	local registerVal5 = CoD.WeaponItemModelWidgetWildcard.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -37.160000, 37.160000)
	registerVal5:setTopBottom(false, true, -150.000000, -38.000000)
	registerVal5.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_CEF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_CEF_)
	registerVal2:addElement(registerVal5)
	registerVal2.wildcard1 = registerVal5
	local registerVal6 = {}
	registerVal6.left = registerVal5
	registerVal3.navigation = registerVal6
	registerVal6 = {}
	registerVal6.right = registerVal5
	registerVal4.navigation = registerVal6
	registerVal6 = {}
	registerVal6.left = registerVal4
	registerVal6.right = registerVal3
	registerVal5.navigation = registerVal6
	registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_DBF_()
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

	registerVal7.DefaultClip = __FUNC_DBF_
	local function __FUNC_10BD_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_139B_(arg0, arg1)
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
		__FUNC_139B_(registerVal3, {})
		local function __FUNC_15BC_(arg0, arg1)
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
		__FUNC_15BC_(registerVal4, {})
		local function __FUNC_17E0_(arg0, arg1)
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
		__FUNC_17E0_(registerVal5, {})
	end

	registerVal7.ToCard1 = __FUNC_10BD_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1A04_()
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

	registerVal7.DefaultClip = __FUNC_1A04_
	local function __FUNC_1D14_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2002_(arg0, arg1)
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
		__FUNC_2002_(registerVal3, {})
		local function __FUNC_2224_(arg0, arg1)
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
		__FUNC_2224_(registerVal4, {})
		local function __FUNC_2448_(arg0, arg1)
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
		__FUNC_2448_(registerVal5, {})
	end

	registerVal7.ToCard1 = __FUNC_1D14_
	registerVal6.Card1to2 = registerVal7
	registerVal7 = {}
	local function __FUNC_266C_()
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

	registerVal7.DefaultClip = __FUNC_266C_
	local function __FUNC_297C_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2C6A_(arg0, arg1)
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
		__FUNC_2C6A_(registerVal3, {})
		local function __FUNC_2E8C_(arg0, arg1)
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
		__FUNC_2E8C_(registerVal4, {})
		local function __FUNC_30B0_(arg0, arg1)
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
		__FUNC_30B0_(registerVal5, {})
	end

	registerVal7.ToCard1 = __FUNC_297C_
	registerVal6.Card1to3 = registerVal7
	registerVal7 = {}
	local function __FUNC_32D4_()
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

	registerVal7.DefaultClip = __FUNC_32D4_
	local function __FUNC_35DA_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_38BC_(arg0, arg1)
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
		__FUNC_38BC_(registerVal3, {})
		local function __FUNC_3AE0_(arg0, arg1)
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
		__FUNC_3AE0_(registerVal4, {})
		local function __FUNC_3D04_(arg0, arg1)
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
		__FUNC_3D04_(registerVal5, {})
	end

	registerVal7.Card1to2 = __FUNC_35DA_
	local function __FUNC_3F28_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_420C_(arg0, arg1)
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
		__FUNC_420C_(registerVal3, {})
		local function __FUNC_4430_(arg0, arg1)
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
		__FUNC_4430_(registerVal4, {})
		local function __FUNC_4654_(arg0, arg1)
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
		__FUNC_4654_(registerVal5, {})
	end

	registerVal7.Card1to3 = __FUNC_3F28_
	local function __FUNC_4878_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_49BC_(arg0, arg1)
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
		__FUNC_49BC_(registerVal5, {})
	end

	registerVal7.Card1Selected = __FUNC_4878_
	registerVal6.ToCard1 = registerVal7
	registerVal7 = {}
	local function __FUNC_4BBC_()
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

	registerVal7.DefaultClip = __FUNC_4BBC_
	registerVal6.Card1Selected = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Card1to2"
	local function __FUNC_4EC2_(arg0, arg1, arg2)
		return IsElementInState(arg1, "Card1to2")
	end

	registerVal9.condition = __FUNC_4EC2_
	local registerVal10 = {}
	registerVal10.stateName = "Card1to3"
	local function __FUNC_4F2C_(arg0, arg1, arg2)
		return IsElementInState(arg1, "Card1to3")
	end

	registerVal10.condition = __FUNC_4F2C_
	local registerVal11 = {}
	registerVal11.stateName = "ToCard1"
	local function __FUNC_4F98_(arg0, arg1, arg2)
		return IsElementInState(arg1, "ToCard1")
	end

	registerVal11.condition = __FUNC_4F98_
	local registerVal12 = {}
	registerVal12.stateName = "Card1Selected"
	local function __FUNC_5003_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_5003_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal8)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "wildcard2"
	registerVal4.id = "wildcard3"
	registerVal5.id = "wildcard1"
	local function __FUNC_504D_(arg0, arg1)
		local registerVal2 = arg0.wildcard1:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_504D_)
	local function __FUNC_5151_(arg0)
		arg0.wildcard2:close()
		arg0.wildcard3:close()
		arg0.wildcard1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5151_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

