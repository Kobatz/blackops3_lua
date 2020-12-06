-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_BO2_light = registerVal1
function CoD.CallingCards_loot_BO2_light.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_loot_BO2_light)
	registerVal2.id = "CallingCards_loot_BO2_light"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 39.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 39.070000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.190000)
	registerVal3:setRGB(0.120000, 1.000000, 0.000000)
	registerVal3:setAlpha(0.680000)
	registerVal3:setZRot(-25.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.light = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_612_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_722_(arg0, arg1)
			local function __FUNC_89B_(arg0, arg1)
				local function __FUNC_A13_(arg0, arg1)
					local function __FUNC_B8B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.750000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.250000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8B_)
				end

				if arg1.interrupted then
					__FUNC_A13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A13_)
			end

			if arg1.interrupted then
				__FUNC_89B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89B_)
		end

		registerVal3:completeAnimation()
		registerVal2.light:setAlpha(0.750000)
		__FUNC_722_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_612_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

