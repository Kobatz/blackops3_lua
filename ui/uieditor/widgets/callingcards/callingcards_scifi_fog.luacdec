-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Scifi_Fog = registerVal1
function CoD.CallingCards_Scifi_Fog.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_Scifi_Fog)
	registerVal2.id = "CallingCards_Scifi_Fog"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 709.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 199.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -205.000000, 504.480000)
	registerVal3:setTopBottom(true, false, 0.000000, 199.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_scifi_fog"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Fog = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_58C_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_727_(arg0, arg1)
			local function __FUNC_8D7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 5029.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -0.480000, 709.000000)
				arg0:setTopBottom(true, false, 0.000000, 199.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 4960.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -189.050000, 520.430000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D7_)
		end

		registerVal3:completeAnimation()
		registerVal2.Fog:setLeftRight(true, false, -375.000000, 334.480000)
		registerVal2.Fog:setTopBottom(true, false, 0.000000, 199.000000)
		registerVal2.Fog:setAlpha(0.000000)
		__FUNC_727_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_58C_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

