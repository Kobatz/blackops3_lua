-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.Social.Social_InfoPane_Presence_NotInTitle")
require("ui.uieditor.widgets.Social.Social_InfoPane_Presence")
require("ui.uieditor.widgets.Social.Social_InfoPane_Friendship")
require("ui.uieditor.widgets.horizontalScrollingTextBoxGroups")
require("ui.uieditor.widgets.Social.Social_CallingCard")
require("ui.uieditor.widgets.Social.Social_Rank")
require("ui.uieditor.widgets.Social.Social_InfoPane_Party")
local function __FUNC_452_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "SocialRoot.recentPlayers.update")
	local function __FUNC_57C_(arg0)
		DataSources.SocialPlayerInfo.getModel(arg1)
	end

	arg0:subscribeToGlobalModel(arg1, "SocialRoot", "recentPlayers.update", __FUNC_57C_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Social_InfoPane = registerVal2
local function __FUNC_60D_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_InfoPane)
	registerVal2.id = "Social_InfoPane"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 786.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 485.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 362.000000, 664.000000)
	registerVal3:setTopBottom(true, false, 192.000000, 450.000000)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 363.000000, 663.000000)
	registerVal4:setTopBottom(true, false, 37.000000, 192.250000)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuframenoBG00 = registerVal4
	local registerVal5 = CoD.Social_background.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 10.000000, 334.000000)
	registerVal5:setTopBottom(true, false, -1.170000, 189.830000)
	registerVal2:addElement(registerVal5)
	registerVal2.Socialbackground0 = registerVal5
	local registerVal6 = CoD.Social_InfoPane_Presence_NotInTitle.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 364.000000, 662.000000)
	registerVal6:setTopBottom(true, false, -2.000000, 70.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_1D60_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1D60_)
	registerVal2:addElement(registerVal6)
	registerVal2.notInTitle = registerVal6
	local registerVal7 = CoD.Social_InfoPane_Presence.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 364.000000, 662.000000)
	registerVal7:setTopBottom(true, false, -2.000000, 189.830000)
	registerVal2:addElement(registerVal7)
	registerVal2.presence = registerVal7
	local registerVal8 = CoD.Social_InfoPane_Friendship.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 10.000000, 163.000000)
	registerVal8:setTopBottom(true, false, 280.330000, 302.330000)
	registerVal8:setAlpha(0.500000)
	local function __FUNC_1DB2_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1DB2_)
	registerVal2:addElement(registerVal8)
	registerVal2.friendship = registerVal8
	local registerVal9 = CoD.horizontalScrollingTextBoxGroups.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 12.560000, 332.910000)
	registerVal9:setTopBottom(true, false, 278.330000, 300.330000)
	registerVal9.textBox:setTTF("fonts/default.ttf")
	registerVal9.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1E02_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "primaryGroup", true, __FUNC_1E02_)
	local function __FUNC_1EB8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "primaryGroup", true, __FUNC_1EB8_)
	registerVal2:addElement(registerVal9)
	registerVal2.primaryGroup = registerVal9
	local registerVal10 = CoD.Social_CallingCard.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 22.280000, 324.750000)
	registerVal10:setTopBottom(true, false, 199.730000, 279.330000)
	registerVal10:setScale(1.070000)
	local function __FUNC_1F8F_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "identityBadge", false, __FUNC_1F8F_)
	local function __FUNC_1FDE_(arg0)
		registerVal10.CallingCardsFrameWidget:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1FDE_)
	registerVal2:addElement(registerVal10)
	registerVal2.callingCard = registerVal10
	local registerVal11 = CoD.Social_Rank.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 9.560000, 89.560000)
	registerVal11:setTopBottom(true, false, 312.000000, 427.000000)
	registerVal11.GameMode:setText(Engine.Localize("MENU_CAMPAIGN_CAPS"))
	local function __FUNC_205B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.level:setText(Engine.Localize(RankToLevelNumber("cp", SetValueIfStringEqualTo("0", "-", registerVal1))))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "cpRank", true, __FUNC_205B_)
	local function __FUNC_21A7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.rankIconAdd:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "cpRankIcon", true, __FUNC_21A7_)
	local function __FUNC_229B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.prestige.prestige:setAlpha(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "cpPrestige", true, __FUNC_229B_)
	local function __FUNC_2357_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.prestige.prestige:setText(GetPrestigeTitleForPLevelAndMode("cp", registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "cpPrestige", true, __FUNC_2357_)
	registerVal2:addElement(registerVal11)
	registerVal2.rankCP = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 13.000000, 333.000000)
	registerVal12:setTopBottom(true, false, 1.250000, 188.000000)
	local function __FUNC_2454_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal2, "identityBadge.xuid", true, __FUNC_2454_)
	registerVal2:addElement(registerVal12)
	registerVal2.emblem = registerVal12
	local registerVal13 = CoD.Social_Rank.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 132.000000, 212.000000)
	registerVal13:setTopBottom(true, false, 312.000000, 427.000000)
	registerVal13.GameMode:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	local function __FUNC_24F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.level:setRGB(SetToParagonColorIfPrestigeMasterByPLevel("mp", 148.000000, 162.000000, 165.000000, registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "mpPrestige", true, __FUNC_24F8_)
	local function __FUNC_260C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.level:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "mpRank", true, __FUNC_260C_)
	local function __FUNC_26E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.rankIconAdd:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "mpRankIcon", true, __FUNC_26E1_)
	local function __FUNC_27D7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.prestige.prestige:setAlpha(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal2, "mpPrestige", true, __FUNC_27D7_)
	local function __FUNC_2893_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.prestige.prestige:setText(GetPrestigeTitleForPLevelAndMode("mp", registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "mpPrestige", true, __FUNC_2893_)
	registerVal2:addElement(registerVal13)
	registerVal2.rankMP = registerVal13
	local registerVal14 = CoD.Social_Rank.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 252.910000, 332.910000)
	registerVal14:setTopBottom(true, false, 312.000000, 427.000000)
	registerVal14.GameMode:setText(Engine.Localize("MENU_ZOMBIE_MODE_CAPS"))
	local function __FUNC_2990_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.level:setRGB(SetToParagonColorIfPrestigeMasterByPLevel("zm", 148.000000, 162.000000, 165.000000, registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "zmPrestige", true, __FUNC_2990_)
	local function __FUNC_2AA4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.level:setText(Engine.Localize(SetValueIfStringEqualTo("0", "-", registerVal1)))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "zmRank", true, __FUNC_2AA4_)
	local function __FUNC_2BC0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.rankIconAdd:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "zmRankIcon", true, __FUNC_2BC0_)
	local function __FUNC_2CB7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.prestige.prestige:setAlpha(registerVal1)
		end
	end

	registerVal14:linkToElementModel(registerVal2, "zmPrestige", true, __FUNC_2CB7_)
	local function __FUNC_2D73_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.prestige.prestige:setText(GetPrestigeTitleForPLevelAndMode("zm", registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "zmPrestige", true, __FUNC_2D73_)
	registerVal2:addElement(registerVal14)
	registerVal2.rankZM = registerVal14
	local registerVal15 = CoD.Social_InfoPane_Party.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 363.000000, 662.000000)
	registerVal15:setTopBottom(true, false, 192.250000, 479.750000)
	local function __FUNC_2E70_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setAlpha(SocialShowPartyHeader(registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "partySize", true, __FUNC_2E70_)
	local function __FUNC_2F2C_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_2F2C_)
	registerVal2:addElement(registerVal15)
	registerVal2.party = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, true, -779.690000, -771.190000)
	registerVal16:setTopBottom(true, false, -3.000000, 5.500000)
	registerVal16:setAlpha(0.150000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal16)
	registerVal2.pixel1 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, true, -779.690000, -771.190000)
	registerVal17:setTopBottom(false, true, -301.250000, -292.750000)
	registerVal17:setAlpha(0.150000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal17)
	registerVal2.pixel00 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, true, -457.250000, -448.750000)
	registerVal18:setTopBottom(true, false, -3.000000, 5.500000)
	registerVal18:setAlpha(0.150000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal18)
	registerVal2.pixel10 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, true, -457.250000, -448.750000)
	registerVal19:setTopBottom(false, true, -301.500000, -293.000000)
	registerVal19:setAlpha(0.150000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal19)
	registerVal2.pixel000 = registerVal19
	local registerVal20 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 10.000000, 335.000000)
	registerVal20:setTopBottom(true, false, -2.000000, 190.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.StartMenuframenoBG000 = registerVal20
	local registerVal21 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 10.560000, 335.000000)
	registerVal21:setTopBottom(true, false, 196.330000, 280.330000)
	registerVal2:addElement(registerVal21)
	registerVal2.StartMenuframenoBG0000 = registerVal21
	local registerVal22 = {}
	local registerVal23 = {}
	local function __FUNC_2F7E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.notInTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.presence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.primaryGroup:setLeftRight(true, false, 12.560000, 332.910000)
		registerVal2.primaryGroup:setTopBottom(true, false, 278.330000, 300.330000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.rankCP:setYRot(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.rankMP:setYRot(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal23.DefaultClip = __FUNC_2F7E_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_32C2_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, -20.910000, 472.000000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, 143.000000, 355.000000)
		registerVal2.StartMenuframenoBG0:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StartMenuframenoBG00:setLeftRight(true, false, 484.900000, 786.900000)
		registerVal2.StartMenuframenoBG00:setTopBottom(true, false, 143.000000, 355.000000)
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Socialbackground0:setLeftRight(true, false, -30.910000, 164.750000)
		registerVal2.Socialbackground0:setTopBottom(true, false, -5.000000, 111.050000)
		registerVal2.Socialbackground0:setScale(0.900000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.notInTitle:setLeftRight(true, false, 117.090000, 606.000000)
		registerVal2.notInTitle:setTopBottom(true, false, -51.980000, 158.020000)
		registerVal2.notInTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.presence:setLeftRight(true, false, -20.910000, 470.000000)
		registerVal2.presence:setTopBottom(true, false, 143.000000, 290.000000)
		registerVal2.presence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.friendship:setLeftRight(true, false, 163.150000, 316.150000)
		registerVal2.friendship:setTopBottom(true, false, 76.610000, 98.610000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.primaryGroup:setLeftRight(true, false, 164.750000, 468.000000)
		registerVal2.primaryGroup:setTopBottom(true, false, 74.610000, 96.610000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.callingCard:setLeftRight(true, false, 166.330000, 471.180000)
		registerVal2.callingCard:setTopBottom(true, false, 0.000000, 74.120000)
		registerVal2.callingCard:setScale(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rankCP:setLeftRight(true, false, 491.900000, 565.900000)
		registerVal2.rankCP:setTopBottom(true, false, -0.450000, 114.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.emblem:setLeftRight(true, false, -29.910000, 165.750000)
		registerVal2.emblem:setTopBottom(true, false, -6.000000, 110.800000)
		registerVal2.emblem:setScale(0.900000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.prestige.prestige:completeAnimation()
		registerVal2.rankMP:setLeftRight(true, false, 595.400000, 675.400000)
		registerVal2.rankMP:setTopBottom(true, false, -0.450000, 114.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.rankZM:setLeftRight(true, false, 704.900000, 784.500000)
		registerVal2.rankZM:setTopBottom(true, false, -0.450000, 114.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.party:setLeftRight(true, false, 486.900000, 786.900000)
		registerVal2.party:setTopBottom(true, false, 143.000000, 431.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal20:completeAnimation()
		registerVal2.StartMenuframenoBG000:setLeftRight(true, false, -23.910000, 156.580000)
		registerVal2.StartMenuframenoBG000:setTopBottom(true, false, -2.000000, 106.670000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.StartMenuframenoBG0000:setLeftRight(true, false, 163.150000, 470.000000)
		registerVal2.StartMenuframenoBG0000:setTopBottom(true, false, -2.000000, 76.610000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_32C2_
	registerVal22.PlayerDetails = registerVal23
	registerVal23 = {}
	local function __FUNC_3DDE_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, -20.910000, 472.000000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, 143.000000, 355.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StartMenuframenoBG00:setLeftRight(true, false, 484.000000, 786.000000)
		registerVal2.StartMenuframenoBG00:setTopBottom(true, false, 143.000000, 355.000000)
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Socialbackground0:setLeftRight(true, false, -20.910000, 156.580000)
		registerVal2.Socialbackground0:setTopBottom(true, false, 0.000000, 106.670000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.notInTitle:setLeftRight(true, false, -20.910000, 470.000000)
		registerVal2.notInTitle:setTopBottom(true, false, 142.000000, 354.000000)
		registerVal2.notInTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.presence:setLeftRight(true, false, -18.910000, 472.000000)
		registerVal2.presence:setTopBottom(true, false, 143.000000, 290.000000)
		registerVal2.presence:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.friendship:setLeftRight(true, false, 163.150000, 316.150000)
		registerVal2.friendship:setTopBottom(true, false, 76.610000, 98.610000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.primaryGroup:setLeftRight(true, false, 164.750000, 468.000000)
		registerVal2.primaryGroup:setTopBottom(true, false, 74.610000, 96.610000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.callingCard:setLeftRight(true, false, 166.320000, 471.170000)
		registerVal2.callingCard:setTopBottom(true, false, 0.550000, 74.120000)
		registerVal2.callingCard:setScale(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rankCP:setLeftRight(true, false, 485.900000, 565.900000)
		registerVal2.rankCP:setTopBottom(true, false, 1.550000, 116.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.emblem:setLeftRight(true, false, -29.910000, 165.750000)
		registerVal2.emblem:setTopBottom(true, false, -5.000000, 111.800000)
		registerVal2.emblem:setScale(0.900000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rankMP:setLeftRight(true, false, 595.400000, 675.400000)
		registerVal2.rankMP:setTopBottom(true, false, 1.550000, 116.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.rankZM:setLeftRight(true, false, 704.900000, 784.500000)
		registerVal2.rankZM:setTopBottom(true, false, 1.550000, 116.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.party:setLeftRight(true, false, 485.900000, 784.500000)
		registerVal2.party:setTopBottom(true, false, 143.000000, 431.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal20:completeAnimation()
		registerVal2.StartMenuframenoBG000:setLeftRight(true, false, -20.910000, 156.580000)
		registerVal2.StartMenuframenoBG000:setTopBottom(true, false, 0.000000, 106.670000)
		registerVal2.StartMenuframenoBG000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.StartMenuframenoBG0000:setLeftRight(true, false, 163.150000, 470.000000)
		registerVal2.StartMenuframenoBG0000:setTopBottom(true, false, 0.000000, 76.610000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_3DDE_
	registerVal22.PlayerDetails_NotInTitle = registerVal23
	registerVal23 = {}
	local function __FUNC_4885_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, 363.000000, 664.000000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, 37.000000, 450.000000)
		registerVal2.StartMenuframenoBG0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.notInTitle:setLeftRight(true, false, 354.000000, 656.000000)
		registerVal2.notInTitle:setTopBottom(true, false, 200.730000, 71.000000)
		registerVal2.notInTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.presence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.primaryGroup:setLeftRight(true, false, 12.560000, 332.910000)
		registerVal2.primaryGroup:setTopBottom(true, false, 278.330000, 300.330000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.rankCP:setYRot(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.emblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rankMP:setYRot(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal20:completeAnimation()
		registerVal2.StartMenuframenoBG000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_4885_
	registerVal22.NotInTitle = registerVal23
	registerVal2.clipsPerState = registerVal22
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "PlayerDetails"
	local function __FUNC_4DAF_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal25.condition = __FUNC_4DAF_
	local registerVal26 = {}
	registerVal26.stateName = "PlayerDetails_NotInTitle"
	local function __FUNC_4DF9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal26.condition = __FUNC_4DF9_
	local registerVal27 = {}
	registerVal27.stateName = "NotInTitle"
	local function __FUNC_4E45_(arg0, arg1, arg2)
		return true
	end

	registerVal27.condition = __FUNC_4E45_
	registerVal24 = {registerVal25, registerVal26, registerVal27}
	registerVal2:mergeStateConditions(registerVal24)
	registerVal15.id = "party"
	local function __FUNC_4E78_(arg0, arg1)
		local registerVal2 = arg0.party:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4E78_)
	local function __FUNC_4F79_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG00:close()
		arg0.Socialbackground0:close()
		arg0.notInTitle:close()
		arg0.presence:close()
		arg0.friendship:close()
		arg0.primaryGroup:close()
		arg0.callingCard:close()
		arg0.rankCP:close()
		arg0.rankMP:close()
		arg0.rankZM:close()
		arg0.party:close()
		arg0.StartMenuframenoBG000:close()
		arg0.StartMenuframenoBG0000:close()
		arg0.emblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4F79_)
	if __FUNC_452_ then
		__FUNC_452_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Social_InfoPane.new = __FUNC_60D_
