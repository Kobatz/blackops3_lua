-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.outofbounds_timerwidget = registerVal1
function CoD.outofbounds_timerwidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.outofbounds_timerwidget)
	registerVal2.id = "outofbounds_timerwidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 107.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -53.500000, 53.500000)
	registerVal3:setTopBottom(false, false, -24.000000, 24.000000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal3:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_8FF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupEndTimer(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "HUDItems", "outOfBoundsEndTime", __FUNC_8FF_)
	registerVal2:addElement(registerVal3)
	registerVal2.Timer0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -53.500000, 53.500000)
	registerVal4:setTopBottom(false, false, -24.000000, 24.000000)
	registerVal4:setRGB(0.650000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_996_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupEndTimer(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "HUDItems", "outOfBoundsEndTime", __FUNC_996_)
	registerVal2:addElement(registerVal4)
	registerVal2.Timer00 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A2E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Timer0:setLeftRight(false, false, -53.500000, 53.500000)
		registerVal2.Timer0:setTopBottom(false, false, -24.000000, 24.000000)
		registerVal2.Timer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_CA6_(arg0, arg1)
			local function __FUNC_E42_(arg0, arg1)
				local function __FUNC_FBB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(0.650000, 0.000000, 0.000000)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_FBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FBB_)
			end

			if arg1.interrupted then
				__FUNC_E42_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:setScale(2.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E42_)
		end

		registerVal4:completeAnimation()
		registerVal2.Timer00:setRGB(0.650000, 0.000000, 0.000000)
		registerVal2.Timer00:setAlpha(1.000000)
		registerVal2.Timer00:setScale(1.000000)
		__FUNC_CA6_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_A2E_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_11B9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_11B9_
	registerVal5.IsOutOfBounds = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_121A_(arg0)
		arg0.Timer0:close()
		arg0.Timer00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_121A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

