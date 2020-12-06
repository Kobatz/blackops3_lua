-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.button_internal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.button = registerVal1
function CoD.button.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.button)
	registerVal2.id = "button"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 610.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.button_internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 558.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal3:setZoom(10.000000)
	registerVal3.Text0:setText(Engine.Localize("Button"))
	registerVal2:addElement(registerVal3)
	registerVal2.buttoninternal0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6BD_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.buttoninternal0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttoninternal0:setAlpha(1.000000)
		registerVal2.buttoninternal0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6BD_
	local function __FUNC_824_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_977_(arg0, arg1)
			local function __FUNC_AFF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.600000, 0.040000)
				arg0:setZoom(10.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_AFF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.610000, 0.480000, 0.310000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFF_)
		end

		registerVal3:completeAnimation()
		registerVal2.buttoninternal0:setRGB(1.000000, 0.600000, 0.040000)
		registerVal2.buttoninternal0:setZoom(10.000000)
		__FUNC_977_(registerVal3, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal5.Focus = __FUNC_824_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_CE3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.buttoninternal0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_CE3_
	local function __FUNC_DE7_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_ED1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.buttoninternal0:setAlpha(0.000000)
		__FUNC_ED1_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_DE7_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_1085_(arg0)
		arg0.buttoninternal0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1085_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

