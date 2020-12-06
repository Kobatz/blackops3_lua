-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_DescriptionBottom")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_DescriptionText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_Description = registerVal1
function CoD.AbilityWheel_Description.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_Description)
	registerVal2.id = "AbilityWheel_Description"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 233.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 310.000000)
	local registerVal3 = CoD.AbilityWheel_DescriptionBottom.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -88.000000, 88.000000)
	registerVal3:setTopBottom(false, false, -11.500000, 56.500000)
	registerVal3:setRGB(1.000000, 0.930000, 0.240000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.300000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_B85_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.TextDesc:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "selectedAbilityDisplayDesc", true, __FUNC_B85_)
	registerVal2:addElement(registerVal3)
	registerVal2.AbilityWheelDescriptionBottom = registerVal3
	local registerVal4 = CoD.AbilityWheel_DescriptionText.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -98.500000, 98.500000)
	registerVal4:setTopBottom(false, false, -53.500000, -17.500000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_C5C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.TextName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "selectedAbilityDisplayName", true, __FUNC_C5C_)
	registerVal2:addElement(registerVal4)
	registerVal2.AbilityWheelDescriptionText = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -43.750000, 43.750000)
	registerVal5:setTopBottom(false, false, -126.000000, -38.500000)
	registerVal5:setRGB(1.000000, 0.680000, 0.000000)
	registerVal5:setAlpha(0.900000)
	registerVal5:setScale(0.500000)
	registerVal5:setupUIStreamedImage(0.000000)
	local function __FUNC_D34_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "selectedAbilityDisplayIcon", true, __FUNC_D34_)
	registerVal2:addElement(registerVal5)
	registerVal2.AbilityWheelEnemyTypeIcon = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_DE8_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_DE8_
	local function __FUNC_E4A_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_F43_(arg0, arg1)
			local function __FUNC_10BB_(arg0, arg1)
				local function __FUNC_1210_(arg0, arg1)
					local function __FUNC_138B_(arg0, arg1)
						local function __FUNC_14E0_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_14E0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E0_)
					end

					if arg1.interrupted then
						__FUNC_138B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_138B_)
				end

				if arg1.interrupted then
					__FUNC_1210_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1210_)
			end

			if arg1.interrupted then
				__FUNC_10BB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BB_)
		end

		registerVal3:completeAnimation()
		registerVal2.AbilityWheelDescriptionBottom:setAlpha(0.700000)
		__FUNC_F43_(registerVal3, {})
	end

	registerVal7.Inactive = __FUNC_E4A_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1695_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_1695_
	local function __FUNC_16F6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_16F6_
	registerVal6.Inactive = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_1756_(arg0)
		arg0.AbilityWheelDescriptionBottom:close()
		arg0.AbilityWheelDescriptionText:close()
		arg0.AbilityWheelEnemyTypeIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1756_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

