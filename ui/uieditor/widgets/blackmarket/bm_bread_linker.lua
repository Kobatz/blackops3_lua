-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Bread_linker = registerVal1
function CoD.BM_Bread_linker.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Bread_linker)
	registerVal2.id = "BM_Bread_linker"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 83.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 68.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 83.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 68.000000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_blackmarket_breadcrumb_linker"))
	registerVal2:addElement(registerVal3)
	registerVal2.linker = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_544_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_657_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.linker:setAlpha(0.900000)
		__FUNC_657_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_544_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

