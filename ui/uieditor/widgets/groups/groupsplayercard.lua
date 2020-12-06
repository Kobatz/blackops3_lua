-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.Social.Social_InfoPane_Friendship")
require("ui.uieditor.widgets.Social.Social_CallingCard")
require("ui.uieditor.widgets.Social.Social_Rank")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsPlayerCard = registerVal1
function CoD.GroupsPlayerCard.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsPlayerCard)
	registerVal2.id = "GroupsPlayerCard"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 325.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 485.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Social_background.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 324.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Socialbackground0 = registerVal3
	local registerVal4 = CoD.Social_InfoPane_Friendship.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 153.000000)
	registerVal4:setTopBottom(true, false, 290.330000, 312.330000)
	registerVal4:setAlpha(0.500000)
	local function __FUNC_1182_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_1182_)
	registerVal2:addElement(registerVal4)
	registerVal2.friendship = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 0.560000, 246.560000)
	registerVal5:setTopBottom(true, false, 283.640000, 305.640000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("MENU_PRIMARY_GROUP_COLON"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.primaryGroup = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 324.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 191.000000)
	local function __FUNC_11D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "identityBadge.xuid", true, __FUNC_11D2_)
	registerVal2:addElement(registerVal6)
	registerVal2.emblem = registerVal6
	local registerVal7 = CoD.Social_CallingCard.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 12.560000, 336.000000)
	registerVal7:setTopBottom(true, false, 209.250000, 287.640000)
	registerVal7:setScale(1.070000)
	local function __FUNC_1274_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1274_)
	local function __FUNC_12C6_(arg0)
		registerVal7.CallingCardsFrameWidget:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_12C6_)
	registerVal2:addElement(registerVal7)
	registerVal2.callingCard = registerVal7
	local registerVal8 = CoD.Social_Rank.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -0.440000, 79.560000)
	registerVal8:setTopBottom(true, false, 323.000000, 438.000000)
	registerVal8.GameMode:setText(Engine.Localize("MENU_CAMPAIGN_CAPS"))
	local function __FUNC_1343_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.level:setText(Engine.Localize(RankToLevelNumber("cp", SetValueIfStringEqualTo("0", "-", registerVal1))))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "cpRank", true, __FUNC_1343_)
	local function __FUNC_148F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.rankIconAdd:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "cpRankIcon", true, __FUNC_148F_)
	local function __FUNC_1583_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.prestige.prestige:setAlpha(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "cpPrestige", true, __FUNC_1583_)
	local function __FUNC_163F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.prestige.prestige:setText(GetPrestigeTitleForPLevelAndMode("cp", registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "cpPrestige", true, __FUNC_163F_)
	registerVal2:addElement(registerVal8)
	registerVal2.rankCP = registerVal8
	local registerVal9 = CoD.Social_Rank.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 122.000000, 202.000000)
	registerVal9:setTopBottom(true, false, 323.000000, 438.000000)
	registerVal9.GameMode:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	local function __FUNC_173C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.level:setRGB(SetToParagonColorIfPrestigeMasterByPLevel("mp", 148.000000, 162.000000, 165.000000, registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "mpPrestige", true, __FUNC_173C_)
	local function __FUNC_1850_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.level:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "mpRank", true, __FUNC_1850_)
	local function __FUNC_1925_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.rankIconAdd:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "mpRankIcon", true, __FUNC_1925_)
	local function __FUNC_1A1B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.prestige.prestige:setAlpha(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "mpPrestige", true, __FUNC_1A1B_)
	local function __FUNC_1AD7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.prestige.prestige:setText(GetPrestigeTitleForPLevelAndMode("mp", registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "mpPrestige", true, __FUNC_1AD7_)
	registerVal2:addElement(registerVal9)
	registerVal2.rankMP = registerVal9
	local registerVal10 = CoD.Social_Rank.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 242.910000, 322.910000)
	registerVal10:setTopBottom(true, false, 323.000000, 438.000000)
	registerVal10.GameMode:setText(Engine.Localize("MENU_ZOMBIE_MODE_CAPS"))
	local function __FUNC_1BD4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.level:setText(Engine.Localize(RankToLevelNumber("zm", SetValueIfStringEqualTo("0", "-", registerVal1))))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "zmRank", true, __FUNC_1BD4_)
	local function __FUNC_1D23_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.rankIconAdd:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "zmRankIcon", true, __FUNC_1D23_)
	local function __FUNC_1E17_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.prestige.prestige:setAlpha(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal2, "zmPrestige", true, __FUNC_1E17_)
	local function __FUNC_1ED3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.prestige.prestige:setText(GetPrestigeTitleForPLevelAndMode("zm", registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "zmPrestige", true, __FUNC_1ED3_)
	registerVal2:addElement(registerVal10)
	registerVal2.rankZM = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1FD0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.emblem:setLeftRight(true, false, 0.000000, 324.000000)
		registerVal2.emblem:setTopBottom(true, false, 0.000000, 191.010000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.rankCP:setYRot(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.rankMP:setYRot(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_1FD0_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_21DF_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Socialbackground0:setLeftRight(true, false, 0.000000, 195.660000)
		registerVal2.Socialbackground0:setTopBottom(true, false, 0.000000, 116.050000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.friendship:setLeftRight(true, false, 203.660000, 356.660000)
		registerVal2.friendship:setTopBottom(true, false, 90.610000, 112.610000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.primaryGroup:setLeftRight(true, false, 205.370000, 451.370000)
		registerVal2.primaryGroup:setTopBottom(true, false, 68.610000, 90.610000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emblem:setLeftRight(true, false, 0.000000, 195.660000)
		registerVal2.emblem:setTopBottom(true, false, 0.000000, 116.050000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.callingCard:setLeftRight(true, false, 189.750000, 449.360000)
		registerVal2.callingCard:setTopBottom(true, false, -2.510000, 60.610000)
		registerVal2.callingCard:setScale(0.870000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.rankCP:setLeftRight(true, false, 485.900000, 565.900000)
		registerVal2.rankCP:setTopBottom(true, false, 1.550000, 116.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.rankMP:setLeftRight(true, false, 595.400000, 675.400000)
		registerVal2.rankMP:setTopBottom(true, false, 1.550000, 116.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.rankZM:setLeftRight(true, false, 704.900000, 784.500000)
		registerVal2.rankZM:setTopBottom(true, false, 1.550000, 116.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_21DF_
	registerVal11.PlayerDetails = registerVal12
	registerVal12 = {}
	local function __FUNC_2796_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Socialbackground0:setLeftRight(true, false, 0.000000, 195.660000)
		registerVal2.Socialbackground0:setTopBottom(true, false, 0.000000, 116.050000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.friendship:setLeftRight(true, false, 203.660000, 356.660000)
		registerVal2.friendship:setTopBottom(true, false, 90.610000, 112.610000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.primaryGroup:setLeftRight(true, false, 205.370000, 451.370000)
		registerVal2.primaryGroup:setTopBottom(true, false, 68.610000, 90.610000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emblem:setLeftRight(true, false, 0.000000, 195.660000)
		registerVal2.emblem:setTopBottom(true, false, 0.000000, 116.050000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.callingCard:setLeftRight(true, false, 189.750000, 449.360000)
		registerVal2.callingCard:setTopBottom(true, false, -2.510000, 60.610000)
		registerVal2.callingCard:setScale(0.870000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.rankCP:setLeftRight(true, false, 485.900000, 565.900000)
		registerVal2.rankCP:setTopBottom(true, false, 1.550000, 116.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.rankMP:setLeftRight(true, false, 595.400000, 675.400000)
		registerVal2.rankMP:setTopBottom(true, false, 1.550000, 116.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.rankZM:setLeftRight(true, false, 704.900000, 784.500000)
		registerVal2.rankZM:setTopBottom(true, false, 1.550000, 116.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2796_
	registerVal11.PlayerDetails_NotInTitle = registerVal12
	registerVal12 = {}
	local function __FUNC_2D4E_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.Socialbackground0:setLeftRight(true, false, 0.000000, 324.000000)
		registerVal2.Socialbackground0:setTopBottom(true, false, 0.000000, 190.830000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.primaryGroup:setLeftRight(true, false, 4.000000, 250.000000)
		registerVal2.primaryGroup:setTopBottom(true, false, 277.330000, 299.330000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emblem:setLeftRight(true, false, 0.000000, 324.000000)
		registerVal2.emblem:setTopBottom(true, false, 0.000000, 191.010000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.callingCard:setLeftRight(true, false, 13.000000, 341.010000)
		registerVal2.callingCard:setTopBottom(true, false, 197.730000, 277.330000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.rankCP:setLeftRight(true, false, -0.440000, 79.560000)
		registerVal2.rankCP:setTopBottom(true, false, 313.000000, 428.000000)
		registerVal2.rankCP:setYRot(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.rankMP:setLeftRight(true, false, 121.400000, 201.400000)
		registerVal2.rankMP:setTopBottom(true, false, 313.000000, 428.000000)
		registerVal2.rankMP:setYRot(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.rankZM:setLeftRight(true, false, 242.910000, 322.910000)
		registerVal2.rankZM:setTopBottom(true, false, 313.000000, 428.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2D4E_
	registerVal11.NotInTitle = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "PlayerDetails"
	local function __FUNC_3281_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_3281_
	local registerVal15 = {}
	registerVal15.stateName = "PlayerDetails_NotInTitle"
	local function __FUNC_32CD_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_32CD_
	local registerVal16 = {}
	registerVal16.stateName = "NotInTitle"
	local function __FUNC_3319_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_3319_
	registerVal13 = {registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_334C_(arg0)
		arg0.Socialbackground0:close()
		arg0.friendship:close()
		arg0.callingCard:close()
		arg0.rankCP:close()
		arg0.rankMP:close()
		arg0.rankZM:close()
		arg0.emblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_334C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

