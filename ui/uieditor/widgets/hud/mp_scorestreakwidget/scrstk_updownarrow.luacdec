-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_UpDownArrow = registerVal1
function CoD.ScrStk_UpDownArrow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_UpDownArrow)
	registerVal2.id = "ScrStk_UpDownArrow"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -2.000000, 2.000000)
	registerVal3:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal3:setZRot(90.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_arrowhorz"))
	registerVal2:addElement(registerVal3)
	registerVal2.ArrowSide = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5C9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ArrowSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5C9_
	local function __FUNC_6C9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Charging = __FUNC_6C9_
	local function __FUNC_72A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.ReadyMiddle = __FUNC_72A_
	local function __FUNC_78A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Inactive = __FUNC_78A_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7EA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ArrowSide:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7EA_
	registerVal4.Shown = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

