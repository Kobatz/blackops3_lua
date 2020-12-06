-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.IconJoinable = registerVal1
function CoD.IconJoinable.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.IconJoinable)
	registerVal2.id = "IconJoinable"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal3:setTopBottom(true, false, -1.000000, 23.000000)
	registerVal3:setRGB(0.870000, 0.900000, 0.900000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconjoinable"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.Icon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, 6.000000, 42.000000)
	registerVal4:setTopBottom(false, false, -1.000000, 2.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image4 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, 16.000000, 52.000000)
	registerVal5:setTopBottom(false, false, -1.000000, 2.500000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_7C1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_7C1_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_964_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_964_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

