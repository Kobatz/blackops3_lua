-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CODE.CallingCards_code_double_duty_war")
require("ui.uieditor.widgets.CallingCards.CODE.CallingCards_code_double_duty_home")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_code_double_duty = registerVal1
function CoD.CallingCards_code_double_duty.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_code_double_duty)
	registerVal2.id = "CallingCards_code_double_duty"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -5.740000, 485.000000)
	registerVal3:setTopBottom(true, false, -4.000000, 124.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.white = registerVal3
	local registerVal4 = CoD.CallingCards_code_double_duty_war.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.war = registerVal4
	local registerVal5 = CoD.CallingCards_code_double_duty_home.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta_normal"))
	registerVal5:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.home = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_87C_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_B96_(arg0, arg1)
			local function __FUNC_D2B_(arg0, arg1)
				local function __FUNC_E80_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 3899.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta_normal"))
					arg0:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
					arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E80_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 3120.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E80_)
			end

			if arg1.interrupted then
				__FUNC_D2B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 3979.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D2B_)
		end

		registerVal5:beginAnimation("keyframe", 3700.000000, false, false, CoD.TweenType.Linear)
		registerVal2.home:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta_normal"))
		registerVal2.home:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.home:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.home:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.home:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_B96_)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal7.DefaultClip = __FUNC_87C_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_114B_(arg0)
		arg0.war:close()
		arg0.home:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_114B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

