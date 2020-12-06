-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_GridDotsHostR = registerVal1
function CoD.vhud_ms_GridDotsHostR.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_GridDotsHostR)
	registerVal2.id = "vhud_ms_GridDotsHostR"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 119.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 119.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setZoom(40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_sidedotsgridhost"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.msGridDotsHostR = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.100000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_sidedotsgridhost"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6F3_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_6F3_
	local function __FUNC_752_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartUp = __FUNC_752_
	local function __FUNC_7B2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Zoom = __FUNC_7B2_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_812_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_812_
	local function __FUNC_872_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultState = __FUNC_872_
	registerVal5.Zoom = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

