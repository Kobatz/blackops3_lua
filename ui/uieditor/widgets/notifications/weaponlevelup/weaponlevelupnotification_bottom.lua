-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.WeaponLevelUp.WeaponLevelUpNotification_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponLevelUpNotification_Bottom = registerVal1
function CoD.WeaponLevelUpNotification_Bottom.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponLevelUpNotification_Bottom)
	registerVal2.id = "WeaponLevelUpNotification_Bottom"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 408.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 160.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -204.000000, 204.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_weaponlevel_bottom_main"))
	registerVal3:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BottomMain = registerVal3
	local registerVal4 = CoD.WeaponLevelUpNotification_Title.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -204.000000, 204.000000)
	registerVal4:setTopBottom(true, false, 120.000000, 160.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.WeaponLevelUpNotificationTitle = registerVal4
	local function __FUNC_7B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.WeaponLevelUpNotificationTitle:linkToElementModel(registerVal2, "title", true, __FUNC_7B2_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_884_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BottomMain:setLeftRight(false, false, -204.000000, 204.000000)
		registerVal2.BottomMain:setTopBottom(true, false, 7.000000, 127.000000)
		registerVal2.BottomMain:setAlpha(1.000000)
		registerVal2.BottomMain:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WeaponLevelUpNotificationTitle:setLeftRight(false, false, -204.000000, 204.000000)
		registerVal2.WeaponLevelUpNotificationTitle:setTopBottom(true, false, 127.000000, 167.000000)
		registerVal2.WeaponLevelUpNotificationTitle:setAlpha(1.000000)
		registerVal2.WeaponLevelUpNotificationTitle:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_884_
	local function __FUNC_B21_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.TimeUp = __FUNC_B21_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_B82_(arg0)
		arg0.WeaponLevelUpNotificationTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B82_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

