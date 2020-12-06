-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_reticle")
require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_bootupWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_siegebot_internal = registerVal1
function CoD.vhud_siegebot_internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_siegebot_internal)
	registerVal2.id = "vhud_siegebot_internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_siegebot_reticle.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_A10_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_A10_)
	local function __FUNC_A62_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "vhudsiegebotreticle"
		registerVal5.clipName = "StartUp"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_A62_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Zoom"
	local function __FUNC_B59_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "zoomed")
	end

	registerVal7.condition = __FUNC_B59_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_BCA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "zoomed"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "zoomed", true, __FUNC_BCA_)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudsiegebotreticle = registerVal3
	local registerVal4 = CoD.vhud_siegebot_bootupWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -640.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -360.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.vhudsiegebotbootupWidget = registerVal4
	local registerVal5 = CoD.vhud_siegebot_bootupWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -640.000000, 0.000000)
	registerVal5:setTopBottom(false, false, 0.000000, 360.000000)
	registerVal5:setXRot(180.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.vhudsiegebotbootupWidget0 = registerVal5
	registerVal6 = CoD.vhud_siegebot_bootupWidget.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, 0.000000, 640.000000)
	registerVal6:setTopBottom(false, false, -360.000000, 0.000000)
	registerVal6:setYRot(180.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudsiegebotbootupWidget1 = registerVal6
	registerVal7 = CoD.vhud_siegebot_bootupWidget.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, 0.000000, 640.000000)
	registerVal7:setTopBottom(false, false, 0.000000, 360.000000)
	registerVal7:setXRot(180.000000)
	registerVal7:setYRot(180.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.vhudsiegebotbootupWidget2 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_CE4_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_F8B_(arg0, arg1)
			local function __FUNC_1103_(arg0, arg1)
				local function __FUNC_127B_(arg0, arg1)
					local function __FUNC_13F3_(arg0, arg1)
						local function __FUNC_156B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_156B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.300000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_156B_)
					end

					if arg1.interrupted then
						__FUNC_13F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F3_)
				end

				if arg1.interrupted then
					__FUNC_127B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.430000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_127B_)
			end

			if arg1.interrupted then
				__FUNC_1103_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1103_)
		end

		registerVal3:completeAnimation()
		registerVal2.vhudsiegebotreticle:setAlpha(0.000000)
		__FUNC_F8B_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.vhudsiegebotbootupWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vhudsiegebotbootupWidget0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vhudsiegebotbootupWidget1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.vhudsiegebotbootupWidget2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_CE4_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_171D_(arg0)
		arg0.vhudsiegebotreticle:close()
		arg0.vhudsiegebotbootupWidget:close()
		arg0.vhudsiegebotbootupWidget0:close()
		arg0.vhudsiegebotbootupWidget1:close()
		arg0.vhudsiegebotbootupWidget2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_171D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

