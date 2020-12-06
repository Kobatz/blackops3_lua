-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_ColorPanel = registerVal1
function CoD.AbilityWheel_ColorPanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_ColorPanel)
	registerVal2.id = "AbilityWheel_ColorPanel"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -9.000000, 109.460000)
	registerVal3:setTopBottom(true, false, -7.000000, 113.000000)
	registerVal3:setRGB(0.970000, 0.360000, 0.070000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.PanelGlow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -3.000000, 123.000000)
	registerVal4:setTopBottom(true, false, -3.000000, 123.000000)
	registerVal4:setRGB(0.960000, 0.360000, 0.070000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_cyberframe"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.CyberFrame = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_87F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_87F_
	local function __FUNC_97D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_97D_
	registerVal5.Unavailable = registerVal6
	registerVal6 = {}
	local function __FUNC_9DE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setRGB(0.070000, 0.780000, 0.970000)
		registerVal2.PanelGlow:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CyberFrame:setLeftRight(true, false, 0.000000, 120.000000)
		registerVal2.CyberFrame:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.CyberFrame:setRGB(0.070000, 0.780000, 0.960000)
		registerVal2.CyberFrame:setAlpha(1.000000)
		registerVal2.CyberFrame:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9DE_
	local function __FUNC_CC6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_CC6_
	registerVal5.ControlCore = registerVal6
	registerVal6 = {}
	local function __FUNC_D26_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setRGB(0.330000, 0.760000, 0.100000)
		registerVal2.PanelGlow:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CyberFrame:setLeftRight(true, false, 0.000000, 120.000000)
		registerVal2.CyberFrame:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.CyberFrame:setRGB(0.330000, 0.760000, 0.100000)
		registerVal2.CyberFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D26_
	local function __FUNC_F6F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_F6F_
	registerVal5.MartialCore = registerVal6
	registerVal6 = {}
	local function __FUNC_FCE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setRGB(0.970000, 0.360000, 0.070000)
		registerVal2.PanelGlow:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CyberFrame:setLeftRight(true, false, 0.000000, 120.000000)
		registerVal2.CyberFrame:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.CyberFrame:setRGB(0.960000, 0.360000, 0.070000)
		registerVal2.CyberFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_FCE_
	local function __FUNC_121C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_121C_
	registerVal5.ChaosCore = registerVal6
	registerVal6 = {}
	local function __FUNC_127E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_127E_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Unavailable"
	local function __FUNC_137D_(arg0, arg2, arg3)
		local registerVal3 = IsCybercoreAbilityAvailable(arg2, arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_137D_
	local registerVal9 = {}
	registerVal9.stateName = "ControlCore"
	local function __FUNC_13E5_(arg0, arg1, arg2)
		return true
	end

	registerVal9.condition = __FUNC_13E5_
	local registerVal10 = {}
	registerVal10.stateName = "MartialCore"
	local function __FUNC_1418_(arg0, arg1, arg2)
		return true
	end

	registerVal10.condition = __FUNC_1418_
	local registerVal11 = {}
	registerVal11.stateName = "ChaosCore"
	local function __FUNC_144C_(arg0, arg1, arg2)
		return true
	end

	registerVal11.condition = __FUNC_144C_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal7)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

