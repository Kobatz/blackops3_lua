-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_ElemsSideListCustomClass = registerVal1
function CoD.cac_ElemsSideListCustomClass.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.cac_ElemsSideListCustomClass)
	registerVal2.id = "cac_ElemsSideListCustomClass"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 398.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 670.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 26.870000, 62.870000)
	registerVal3:setTopBottom(true, false, 655.750000, 659.750000)
	registerVal3:setYRot(-180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Pixel200 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 26.870000, 62.870000)
	registerVal4:setTopBottom(true, false, 132.750000, 136.750000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Pixel2001 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 51.000000, 53.000000)
	registerVal5:setTopBottom(true, false, 123.000000, 674.000000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.LineSide = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_7CC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_7CC_
	local function __FUNC_82E_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_BA7_(arg0, arg1)
			local function __FUNC_D1F_(arg0, arg1)
				local function __FUNC_ECF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 26.870000, 62.870000)
					arg0:setTopBottom(true, false, 655.750000, 659.750000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_ECF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 360.100000, 364.100000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ECF_)
			end

			if arg1.interrupted then
				__FUNC_D1F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.550000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1F_)
		end

		registerVal3:completeAnimation()
		registerVal2.Pixel200:setLeftRight(true, false, 26.870000, 62.870000)
		registerVal2.Pixel200:setTopBottom(true, false, -49.250000, -45.250000)
		registerVal2.Pixel200:setAlpha(0.000000)
		__FUNC_BA7_(registerVal3, {})
		local function __FUNC_10F1_(arg0, arg1)
			local function __FUNC_12A3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 26.870000, 62.870000)
				arg0:setTopBottom(true, false, 132.750000, 136.750000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 132.750000, 136.750000)
			arg0:setAlpha(0.450000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A3_)
		end

		registerVal4:completeAnimation()
		registerVal2.Pixel2001:setLeftRight(true, false, 26.870000, 62.870000)
		registerVal2.Pixel2001:setTopBottom(true, false, -42.250000, -38.250000)
		registerVal2.Pixel2001:setAlpha(0.000000)
		__FUNC_10F1_(registerVal4, {})
		local function __FUNC_14C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 51.000000, 53.000000)
			arg0:setTopBottom(true, false, 123.000000, 674.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setLeftRight(true, false, 51.000000, 53.000000)
		registerVal5:setTopBottom(true, false, 123.000000, 127.000000)
		registerVal5:setAlpha(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_14C5_)
	end

	registerVal7.Intro = __FUNC_82E_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

