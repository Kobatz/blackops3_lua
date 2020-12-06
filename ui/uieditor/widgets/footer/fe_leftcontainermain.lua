-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.fe_LeftContainerMain = registerVal1
function CoD.fe_LeftContainerMain.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_LeftContainerMain)
	registerVal2.id = "fe_LeftContainerMain"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 334.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -18.000000, 0.000000)
	registerVal3:setRGB(0.850000, 0.880000, 0.910000)
	registerVal3:setAlpha(0.450000)
	registerVal3:setText(Engine.Localize("PLATFORM_PRESS_START"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.lblPressToPlay = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_687_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_79F_(arg0, arg1)
			local function __FUNC_917_(arg0, arg1)
				local function __FUNC_A8F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.450000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_A8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1200.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.450000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8F_)
			end

			if arg1.interrupted then
				__FUNC_917_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_917_)
		end

		registerVal3:completeAnimation()
		registerVal2.lblPressToPlay:setAlpha(0.450000)
		__FUNC_79F_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_687_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

