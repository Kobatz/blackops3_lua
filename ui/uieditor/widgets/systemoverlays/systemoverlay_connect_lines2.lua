-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Connect_Lines2 = registerVal1
function CoD.systemOverlay_Connect_Lines2.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Connect_Lines2)
	registerVal2.id = "systemOverlay_Connect_Lines2"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 376.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 191.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -0.300000)
	registerVal3:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_connect_overlays_loop_bkg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -7.000000, 197.000000)
	registerVal4:setTopBottom(true, false, -204.500000, 395.500000)
	registerVal4:setZRot(-90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_lineanim_mask"))
	registerVal2:addElement(registerVal4)
	registerVal2.mask = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_618_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_8A4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 6030.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 297.000000, 501.000000)
			arg0:setTopBottom(true, false, -196.500000, 403.500000)
			arg0:setScale(1.350000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.mask:setLeftRight(true, false, -123.000000, 81.000000)
		registerVal2.mask:setTopBottom(true, false, -196.500000, 403.500000)
		registerVal2.mask:setScale(1.350000)
		__FUNC_8A4_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_618_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

