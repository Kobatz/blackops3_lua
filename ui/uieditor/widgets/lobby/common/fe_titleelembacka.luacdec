-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_TitleElemBackA = registerVal1
function CoD.FE_TitleElemBackA.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_TitleElemBackA)
	registerVal2.id = "FE_TitleElemBackA"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setZoom(-30.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlebackthickf"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.backa = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5A2_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_70A_(arg0, arg1)
			local function __FUNC_860_(arg0, arg1)
				local function __FUNC_9F0_(arg0, arg1)
					local function __FUNC_B48_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 2760.000000, true, true, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 0.000000, 36.000000)
						arg0:setTopBottom(true, false, 0.000000, 120.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B48_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B48_)
				end

				if arg1.interrupted then
					__FUNC_9F0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 2679.000000, true, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -30.000000, 6.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F0_)
			end

			if arg1.interrupted then
				__FUNC_860_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1519.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_860_)
		end

		registerVal3:completeAnimation()
		registerVal2.backa:setLeftRight(true, false, 0.000000, 36.000000)
		registerVal2.backa:setTopBottom(true, false, 0.000000, 120.000000)
		__FUNC_70A_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5A2_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

