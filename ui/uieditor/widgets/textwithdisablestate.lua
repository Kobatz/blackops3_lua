-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TextWithDisableState = registerVal1
function CoD.TextWithDisableState.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.TextWithDisableState)
	registerVal2.id = "TextWithDisableState"
	registerVal2.soundSet = "RaidsPurchases"
	registerVal2:setLeftRight(true, false, 0.000000, 312.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Description = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_638_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal2.Description:setRGB(1.000000, 1.000000, 1.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal5.DefaultClip = __FUNC_638_
	local function __FUNC_7F4_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_90F_(arg0, arg1)
			local function __FUNC_A92_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A92_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(1.000000, 0.210000, 0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A92_)
		end

		registerVal3:completeAnimation()
		registerVal2.Description:setRGB(1.000000, 0.000000, 0.000000)
		__FUNC_90F_(registerVal3, {})
		registerVal2.nextClip = "Disabled"
	end

	registerVal5.Disabled = __FUNC_7F4_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

