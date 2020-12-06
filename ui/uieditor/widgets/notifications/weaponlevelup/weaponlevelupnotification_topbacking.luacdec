-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponLevelUpNotification_TopBacking = registerVal1
function CoD.WeaponLevelUpNotification_TopBacking.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponLevelUpNotification_TopBacking)
	registerVal2.id = "WeaponLevelUpNotification_TopBacking"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 408.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -204.000000, -4.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_weaponlevel_top_left"))
	registerVal3:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.TopLeft = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 4.000000, 204.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.600000)
	registerVal4:setYRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_weaponlevel_top_left"))
	registerVal4:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.TopRight = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6AD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TopLeft:setLeftRight(false, false, -204.000000, -4.000000)
		registerVal2.TopLeft:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.TopLeft:setAlpha(0.600000)
		registerVal2.TopLeft:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TopRight:setLeftRight(false, false, 4.000000, 204.000000)
		registerVal2.TopRight:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.TopRight:setAlpha(0.600000)
		registerVal2.TopRight:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_6AD_
	local function __FUNC_93A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.TimeUp = __FUNC_93A_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

