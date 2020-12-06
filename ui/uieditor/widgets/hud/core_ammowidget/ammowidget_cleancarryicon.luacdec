-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_CleanCarryIcon = registerVal1
function CoD.AmmoWidget_CleanCarryIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_CleanCarryIcon)
	registerVal2.id = "AmmoWidget_CleanCarryIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 82.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 82.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 82.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 82.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_widget_stockpile"))
	registerVal2:addElement(registerVal3)
	registerVal2.CleanIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5B0_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CleanIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5B0_
	local function __FUNC_6DB_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_7BA_(arg0, arg1)
			local function __FUNC_933_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_933_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			arg0:setScale(1.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_933_)
		end

		registerVal3:completeAnimation()
		registerVal2.CleanIcon:setScale(1.000000)
		__FUNC_7BA_(registerVal3, {})
	end

	registerVal5.Full = __FUNC_6DB_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_AE5_(arg0)
		PlayClip(registerVal2, "Full", arg1)
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "hudItems.cleanCarryFull", __FUNC_AE5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

