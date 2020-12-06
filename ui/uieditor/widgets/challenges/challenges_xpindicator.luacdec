-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_XPIndicator = registerVal1
function CoD.Challenges_XPIndicator.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_XPIndicator)
	registerVal2.id = "Challenges_XPIndicator"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 91.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_mp_notifications_xp"))
	registerVal2:addElement(registerVal3)
	registerVal2.XPIcon = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 36.000000, 91.000000)
	registerVal4:setTopBottom(true, false, 6.000000, 26.000000)
	registerVal4:setText(Engine.Localize("MENU_NEW"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.XPText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_678_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.XPIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XPText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_678_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_7CA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.XPIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XPText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_7CA_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

