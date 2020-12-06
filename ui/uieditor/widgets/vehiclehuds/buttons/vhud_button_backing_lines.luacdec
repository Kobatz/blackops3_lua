-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_button_backing_lines = registerVal1
function CoD.vhud_button_backing_lines.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_button_backing_lines)
	registerVal2.id = "vhud_button_backing_lines"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 73.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 73.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -36.500000, 36.500000)
	registerVal3:setTopBottom(false, false, -36.500000, 36.500000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_button_framehex"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.ButtonHexLines = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -36.500000, 36.500000)
	registerVal4:setTopBottom(false, false, -36.500000, 36.500000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_button_frametri"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.ButtonTriLines = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -36.500000, 36.500000)
	registerVal5:setTopBottom(false, false, -36.500000, 36.500000)
	registerVal5:setAlpha(0.300000)
	registerVal5:setZoom(7.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_button_frametri"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.ButtonTriLines0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -36.500000, 36.500000)
	registerVal6:setTopBottom(false, false, -36.500000, 36.500000)
	registerVal6:setAlpha(0.100000)
	registerVal6:setZoom(15.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_button_frametri"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.ButtonTriLines00 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -36.500000, 36.500000)
	registerVal7:setTopBottom(false, false, -36.500000, 36.500000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_button_dotshex"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.ButtonHexDots = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -36.500000, 36.500000)
	registerVal8:setTopBottom(false, false, -36.500000, 36.500000)
	registerVal8:setAlpha(0.500000)
	registerVal8:setZoom(7.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_button_dotshex"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.ButtonHexDots0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -36.500000, 36.500000)
	registerVal9:setTopBottom(false, false, -36.500000, 36.500000)
	registerVal9:setAlpha(0.200000)
	registerVal9:setZoom(15.000000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_button_dotshex"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.ButtonHexDots00 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -36.500000, 36.500000)
	registerVal10:setTopBottom(false, false, -36.500000, 36.500000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(30.000000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_vehicle_button_framehex"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.ButtonHexLines0 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_BDE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.DefaultClip = __FUNC_BDE_
	local function __FUNC_C3E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.Active = __FUNC_C3E_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

