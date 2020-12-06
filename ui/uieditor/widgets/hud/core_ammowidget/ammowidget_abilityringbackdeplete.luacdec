-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AbilityRingBackDeplete = registerVal1
function CoD.AmmoWidget_AbilityRingBackDeplete.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AbilityRingBackDeplete)
	registerVal2.id = "AmmoWidget_AbilityRingBackDeplete"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 109.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 109.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.330000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.330000)
	registerVal3:setZRot(-360.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringdepleteoutter"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgRingDepleteOutter = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5D9_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6F8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 5000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setZRot(-360.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingDepleteOutter:setZRot(0.000000)
		__FUNC_6F8_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5D9_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

