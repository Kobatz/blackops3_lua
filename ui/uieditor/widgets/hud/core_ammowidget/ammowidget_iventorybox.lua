-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_IventoryBox = registerVal1
function CoD.AmmoWidget_IventoryBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_IventoryBox)
	registerVal2.id = "AmmoWidget_IventoryBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 39.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 35.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_inventoryboxempty"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.imgBoxLethalEmpty = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_inventorybox"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal4)
	registerVal2.imgBoxLethal = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6E6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.imgBoxLethalEmpty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.imgBoxLethal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_6E6_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_84C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.imgBoxLethalEmpty:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.imgBoxLethal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_84C_
	registerVal5.Empty = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

