-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_Dash = registerVal1
function CoD.AmmoWidgetMP_Dash.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_Dash)
	registerVal2.id = "AmmoWidgetMP_Dash"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 4.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 11.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 4.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 10.670000)
	registerVal3:setRGB(1.000000, 0.770000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilityhash"))
	registerVal2:addElement(registerVal3)
	registerVal2.Hash4 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5C6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_5C6_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_626_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_626_
	registerVal4.CoreControl = registerVal5
	registerVal5 = {}
	local function __FUNC_686_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Hash4:setRGB(1.000000, 0.950000, 0.360000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_686_
	registerVal4.CoreMartial = registerVal5
	registerVal5 = {}
	local function __FUNC_78C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Hash4:setRGB(1.000000, 0.390000, 0.190000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_78C_
	registerVal4.CoreChaos = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

