-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MP.MatchSettings.Playlist_SpecialEventItem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Playlist_SpecialEventWidget = registerVal1
function CoD.Playlist_SpecialEventWidget.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Playlist_SpecialEventWidget)
	registerVal2.id = "Playlist_SpecialEventWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 102.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.Playlist_SpecialEventItem.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 34.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3.PlaylistSpecialEventIcon.XpSmall:setImage(RegisterImage("uie_t7_hud_mp_notifications_2xp_reward"))
	registerVal2:addElement(registerVal3)
	registerVal2.PlaylistSpecialEvent2XP = registerVal3
	local registerVal4 = CoD.Playlist_SpecialEventItem.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 34.000000, 68.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.PlaylistSpecialEvent2XPWeapon = registerVal4
	local registerVal5 = CoD.Playlist_SpecialEventItem.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 68.000000, 102.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5.PlaylistSpecialEventIcon.XpSmall:setImage(RegisterImage("uie_t7_icon_blackmarket_doubleloot_small"))
	registerVal5.PlaylistSpecialEventIcon.XPLabel:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.PlaylistSpecialEvent2xCrypto = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B0F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XPWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PlaylistSpecialEvent2xCrypto:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B0F_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_CF0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XPWeapon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PlaylistSpecialEvent2xCrypto:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_CF0_
	registerVal6.DoubleXPWeaponXP = registerVal7
	registerVal7 = {}
	local function __FUNC_ED9_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XPWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PlaylistSpecialEvent2xCrypto:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_ED9_
	registerVal6.DoubleXP = registerVal7
	registerVal7 = {}
	local function __FUNC_10C1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XPWeapon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PlaylistSpecialEvent2xCrypto:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_10C1_
	registerVal6.DoubleWeaponXP = registerVal7
	registerVal7 = {}
	local function __FUNC_12A9_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XPWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PlaylistSpecialEvent2xCrypto:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_12A9_
	registerVal6.DoubleCryptokeys = registerVal7
	registerVal7 = {}
	local function __FUNC_1491_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XPWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PlaylistSpecialEvent2xCrypto:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1491_
	registerVal6.DoubleXPDoubleCryptokeys = registerVal7
	registerVal7 = {}
	local function __FUNC_1679_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlaylistSpecialEvent2XPWeapon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PlaylistSpecialEvent2xCrypto:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1679_
	registerVal6.WeaponXPDoubleCryptokeysCopy = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_1861_(arg0)
		arg0.PlaylistSpecialEvent2XP:close()
		arg0.PlaylistSpecialEvent2XPWeapon:close()
		arg0.PlaylistSpecialEvent2xCrypto:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1861_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

