-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.XPbarFrame = registerVal1
function CoD.XPbarFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.XPbarFrame)
	registerVal2.id = "XPbarFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 966.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -5.500000, 2.500000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.LoadingLine20 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal4:setTopBottom(true, false, -2.500000, 5.500000)
	registerVal4:setRGB(0.900000, 0.900000, 0.900000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.LoadingLine2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -5.000000, 7.000000)
	registerVal5:setTopBottom(true, false, -5.000000, 8.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setScale(0.400000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixel"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Pixel2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -5.000000, 7.000000)
	registerVal6:setTopBottom(false, true, -8.000000, 5.000000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setScale(0.400000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixel"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Pixel20 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -7.000000, 5.000000)
	registerVal7:setTopBottom(true, false, -5.000000, 8.000000)
	registerVal7:setAlpha(0.800000)
	registerVal7:setScale(0.400000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixel"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Pixel21 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -7.000000, 5.000000)
	registerVal8:setTopBottom(false, true, -8.000000, 5.000000)
	registerVal8:setAlpha(0.800000)
	registerVal8:setScale(0.400000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixel"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Pixel200 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_A20_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_A20_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

