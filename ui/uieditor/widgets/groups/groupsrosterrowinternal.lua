-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Social.Social_PlayersListButton_Presence")
require("ui.uieditor.widgets.Social.Social_PlayersListButton_Joinable")
require("ui.uieditor.widgets.Social.Social_PartyLeaderIconLarge")
require("ui.uieditor.widgets.Social.Social_PartyMemberIconLarge")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsRosterRowInternal = registerVal1
function CoD.GroupsRosterRowInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsRosterRowInternal)
	registerVal2.id = "GroupsRosterRowInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Social_background.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 97.470000, 374.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Socialbackground00 = registerVal3
	local registerVal4 = CoD.Social_background.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 59.750000)
	registerVal2:addElement(registerVal4)
	registerVal2.Socialbackground000 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1611_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "xuid", true, __FUNC_1611_)
	registerVal2:addElement(registerVal5)
	registerVal2.emblem = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 109.000000, 334.000000)
	registerVal6:setTopBottom(false, false, -20.000000, 0.000000)
	registerVal6:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_16B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "gamertag", true, __FUNC_16B4_)
	registerVal2:addElement(registerVal6)
	registerVal2.gamertag = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal7:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarT = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal8:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB = registerVal8
	local registerVal9 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal9:setRGB(1.000000, 0.300000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBorder = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal10:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal10:setRGB(1.000000, 0.090000, 0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.glitch = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal11:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal11:setRGB(1.000000, 0.150000, 0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch2 = registerVal11
	local registerVal12 = CoD.Social_PlayersListButton_Presence.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 107.000000, 371.000000)
	registerVal12:setTopBottom(true, false, 32.000000, 57.000000)
	registerVal12.lastMet:setText(Engine.Localize(""))
	local function __FUNC_1748_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_1748_)
	local function __FUNC_179A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.platformPresenceScroller.textBox:setText(Engine.Localize(PlatformPresenceToLocalizedString(registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "presence", true, __FUNC_179A_)
	local function __FUNC_18D0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.titlePresenceScroller.textBox:setText(Engine.Localize(PresenceActivityToModeString(registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "presence", true, __FUNC_18D0_)
	registerVal2:addElement(registerVal12)
	registerVal2.presence = registerVal12
	local registerVal13 = CoD.Social_PlayersListButton_Joinable.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, 163.000000, 179.000000)
	registerVal13:setTopBottom(true, false, 4.500000, 28.500000)
	local function __FUNC_1A00_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_1A00_)
	registerVal2:addElement(registerVal13)
	registerVal2.joinable = registerVal13
	local registerVal14 = CoD.Social_PartyLeaderIconLarge.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 376.000000, 400.000000)
	registerVal14:setTopBottom(true, false, 0.250000, 59.750000)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Invisible"
	local function __FUNC_1A52_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_1A52_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal2:addElement(registerVal14)
	registerVal2.SocialPartyLeaderIconLarge0 = registerVal14
	local registerVal15 = CoD.Social_PartyMemberIconLarge.new(arg0, arg1)
	registerVal15:setLeftRight(false, true, 3.000000, 9.000000)
	registerVal15:setTopBottom(true, true, 1.000000, -1.250000)
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "PartyMember"
	local function __FUNC_1A9D_(arg0, arg1, arg2)
		local registerVal3 = ParentPropertyIsTrue(registerVal2, "isPartyMember")
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal19.condition = __FUNC_1A9D_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal2:addElement(registerVal15)
	registerVal2.SocialPartyMemberIconLarge0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, true, -5.000000, 3.500000)
	registerVal16:setTopBottom(true, false, -3.000000, 5.500000)
	registerVal16:setAlpha(0.150000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal16)
	registerVal2.pixel = registerVal16
	registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, true, -5.000000, 3.500000)
	registerVal17:setTopBottom(false, true, -5.500000, 3.000000)
	registerVal17:setAlpha(0.150000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal17)
	registerVal2.pixel0 = registerVal17
	registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, true, -378.250000, -369.750000)
	registerVal18:setTopBottom(true, false, -4.000000, 4.500000)
	registerVal18:setAlpha(0.150000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal18)
	registerVal2.pixel1 = registerVal18
	registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, true, -378.250000, -369.750000)
	registerVal19:setTopBottom(false, true, -4.500000, 4.000000)
	registerVal19:setAlpha(0.150000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal19)
	registerVal2.pixel00 = registerVal19
	local function __FUNC_1B36_(arg0)
		arg0.Socialbackground00:close()
		arg0.Socialbackground000:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.presence:close()
		arg0.joinable:close()
		arg0.SocialPartyLeaderIconLarge0:close()
		arg0.SocialPartyMemberIconLarge0:close()
		arg0.emblem:close()
		arg0.gamertag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1B36_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

