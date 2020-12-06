-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CampaignMissionButton = registerVal1
function CoD.CampaignMissionButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CampaignMissionButton)
	registerVal2.id = "CampaignMissionButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal3:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.levelName = registerVal3
	local function __FUNC_635_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.levelName:linkToElementModel(registerVal2, "locName", true, __FUNC_635_)
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6EE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.levelName:setLeftRight(true, false, 0.000000, 99.000000)
		registerVal2.levelName:setTopBottom(false, false, -12.500000, 12.500000)
		registerVal2.levelName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.levelName:setZoom(10.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6EE_
	local function __FUNC_8B0_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A83_(arg0, arg1)
			local function __FUNC_C0B_(arg0, arg1)
				local function __FUNC_D93_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 0.000000, 99.000000)
					arg0:setTopBottom(false, false, -12.500000, 12.500000)
					arg0:setRGB(1.000000, 0.640000, 0.000000)
					arg0:setZoom(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.710000, 0.590000, 0.370000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D93_)
			end

			if arg1.interrupted then
				__FUNC_C0B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.940000, 0.630000, 0.070000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C0B_)
		end

		registerVal3:completeAnimation()
		registerVal2.levelName:setLeftRight(true, false, 0.000000, 99.000000)
		registerVal2.levelName:setTopBottom(false, false, -12.500000, 12.500000)
		registerVal2.levelName:setRGB(1.000000, 0.640000, 0.000000)
		registerVal2.levelName:setZoom(0.000000)
		__FUNC_A83_(registerVal3, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal5.Focus = __FUNC_8B0_
	local function __FUNC_FDD_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1152_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 109.000000)
			arg0:setTopBottom(false, false, -12.500000, 12.500000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.levelName:setLeftRight(true, false, -10.000000, 99.000000)
		registerVal2.levelName:setTopBottom(false, false, -12.500000, 12.500000)
		registerVal2.levelName:setZoom(10.000000)
		__FUNC_1152_(registerVal3, {})
	end

	registerVal5.GainFocus = __FUNC_FDD_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_1374_(arg0)
		arg0.levelName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1374_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

