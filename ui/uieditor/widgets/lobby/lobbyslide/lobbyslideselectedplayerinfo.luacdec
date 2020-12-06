-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideArenaWidget")
require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideInfoWidget")
require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideGamerCardWidget")
require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideEmblemWidget")
require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideMissingMapsWidget")
require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideCommonGroupsWidget")
require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideSocialInfoWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideSelectedPlayerInfo = registerVal1
function CoD.LobbySlideSelectedPlayerInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideSelectedPlayerInfo)
	registerVal2.id = "LobbySlideSelectedPlayerInfo"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 543.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LobbySlideArenaWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -321.000000, -1.000000)
	registerVal3:setTopBottom(true, false, 457.500000, 547.500000)
	registerVal3:setYRot(-25.000000)
	local function __FUNC_131E_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_131E_)
	registerVal2:addElement(registerVal3)
	registerVal2.LobbySlideArenaWidget0 = registerVal3
	local registerVal4 = CoD.LobbySlideInfoWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -320.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 343.500000, 433.500000)
	registerVal4:setAlpha(0.940000)
	registerVal4:setYRot(-25.000000)
	local function __FUNC_136E_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_136E_)
	local function __FUNC_13BE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.rankIcon.imgSolid:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_13BE_)
	registerVal2:addElement(registerVal4)
	registerVal2.rank = registerVal4
	local registerVal5 = CoD.LobbySlideGamerCardWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -320.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 241.500000, 321.500000)
	registerVal5:setYRot(-25.000000)
	local function __FUNC_14CE_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_14CE_)
	local function __FUNC_151E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.FELabelSubHeadingE0:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "clanTag", true, __FUNC_151E_)
	local function __FUNC_15FD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.FELabelSubHeadingE0.Label0:setText(StringAsClanTag(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "clanTag", true, __FUNC_15FD_)
	local function __FUNC_16F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.FELabelSubHeadingE1.Label0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "gamertag", true, __FUNC_16F6_)
	registerVal2:addElement(registerVal5)
	registerVal2.playercard = registerVal5
	local registerVal6 = CoD.LobbySlideEmblemWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal6:setTopBottom(true, false, 37.000000, 233.000000)
	registerVal6:setYRot(-25.000000)
	local function __FUNC_17F3_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_17F3_)
	local function __FUNC_1842_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.EmblemAdd.emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "xuid", true, __FUNC_1842_)
	registerVal2:addElement(registerVal6)
	registerVal2.LobbySlideEmblemWidget = registerVal6
	local registerVal7 = CoD.LobbySlideMissingMapsWidget.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -321.000000, -1.000000)
	registerVal7:setTopBottom(true, false, 579.820000, 639.820000)
	registerVal7:setYRot(-25.000000)
	local function __FUNC_191F_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_191F_)
	registerVal2:addElement(registerVal7)
	registerVal2.LobbySlideMissingMapsWidget = registerVal7
	local registerVal8 = CoD.LobbySlideCommonGroupsWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -1.000000, 319.000000)
	registerVal8:setTopBottom(true, false, 647.820000, 754.820000)
	registerVal8:setYRot(-25.000000)
	local function __FUNC_196E_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_196E_)
	registerVal2:addElement(registerVal8)
	registerVal2.LobbySlideCommonGroupsWidget = registerVal8
	local registerVal9 = CoD.LobbySlideSocialInfoWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, -1.000000, 319.000000)
	registerVal9:setTopBottom(true, false, 577.820000, 667.820000)
	registerVal9:setYRot(-25.000000)
	local function __FUNC_19BE_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_19BE_)
	local function __FUNC_1A0E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.presence:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "partyActivityString", true, __FUNC_1A0E_)
	registerVal2:addElement(registerVal9)
	registerVal2.LobbySlideSocialInfoWidget = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1AE4_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbySlideArenaWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbySlideMissingMapsWidget:setLeftRight(false, true, -321.000000, -1.000000)
		registerVal2.LobbySlideMissingMapsWidget:setTopBottom(true, false, 457.500000, 517.500000)
		registerVal2.LobbySlideMissingMapsWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbySlideCommonGroupsWidget:setLeftRight(true, false, -1.000000, 319.000000)
		registerVal2.LobbySlideCommonGroupsWidget:setTopBottom(true, false, 523.500000, 599.500000)
		registerVal2.LobbySlideCommonGroupsWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbySlideSocialInfoWidget:setLeftRight(true, false, 0.000000, 320.000000)
		registerVal2.LobbySlideSocialInfoWidget:setTopBottom(true, false, 453.500000, 543.500000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1AE4_
	local function __FUNC_1F72_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2106_(arg0, arg1)
			local function __FUNC_225C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_225C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_225C_)
		end

		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		__FUNC_2106_(registerVal4, {})
		local function __FUNC_2411_(arg0, arg1)
			local function __FUNC_2568_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2568_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2568_)
		end

		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(0.000000)
		__FUNC_2411_(registerVal5, {})
		local function __FUNC_271D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(0.000000)
		__FUNC_271D_(registerVal6, {})
	end

	registerVal11.Intro = __FUNC_1F72_
	local function __FUNC_28D1_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2A66_(arg0, arg1)
			local function __FUNC_2BBC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2BBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BBC_)
		end

		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(1.000000)
		__FUNC_2A66_(registerVal4, {})
		local function __FUNC_2D71_(arg0, arg1)
			local function __FUNC_2EC8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2EC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EC8_)
		end

		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(1.000000)
		__FUNC_2D71_(registerVal5, {})
		local function __FUNC_307D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(1.000000)
		__FUNC_307D_(registerVal6, {})
	end

	registerVal11.Outro = __FUNC_28D1_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_3231_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbySlideArenaWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbySlideMissingMapsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbySlideCommonGroupsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbySlideSocialInfoWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_3231_
	registerVal10.Hidden = registerVal11
	registerVal11 = {}
	local function __FUNC_3587_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbySlideArenaWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbySlideMissingMapsWidget:setLeftRight(false, true, -321.000000, -1.000000)
		registerVal2.LobbySlideMissingMapsWidget:setTopBottom(true, false, 579.820000, 642.820000)
		registerVal2.LobbySlideMissingMapsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbySlideCommonGroupsWidget:setLeftRight(true, false, 0.000000, 320.000000)
		registerVal2.LobbySlideCommonGroupsWidget:setTopBottom(true, false, 391.820000, 556.820000)
		registerVal2.LobbySlideCommonGroupsWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbySlideSocialInfoWidget:setLeftRight(true, false, 0.000000, 320.000000)
		registerVal2.LobbySlideSocialInfoWidget:setTopBottom(true, false, 323.820000, 413.820000)
		registerVal2.LobbySlideSocialInfoWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_3587_
	registerVal10.RankInfoHidden = registerVal11
	registerVal11 = {}
	local function __FUNC_3A29_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbySlideArenaWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbySlideMissingMapsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbySlideCommonGroupsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbySlideSocialInfoWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_3A29_
	registerVal10.Lan = registerVal11
	registerVal11 = {}
	local function __FUNC_3D84_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbySlideArenaWidget0:setLeftRight(false, true, -321.000000, -1.000000)
		registerVal2.LobbySlideArenaWidget0:setTopBottom(true, false, 458.000000, 548.000000)
		registerVal2.LobbySlideArenaWidget0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbySlideMissingMapsWidget:setLeftRight(false, true, -321.000000, -1.000000)
		registerVal2.LobbySlideMissingMapsWidget:setTopBottom(true, false, 564.820000, 624.820000)
		registerVal2.LobbySlideMissingMapsWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbySlideCommonGroupsWidget:setLeftRight(true, false, 0.000000, 320.000000)
		registerVal2.LobbySlideCommonGroupsWidget:setTopBottom(true, false, 645.820000, 743.820000)
		registerVal2.LobbySlideCommonGroupsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbySlideSocialInfoWidget:setLeftRight(true, false, -1.000000, 319.000000)
		registerVal2.LobbySlideSocialInfoWidget:setTopBottom(true, false, 561.820000, 651.820000)
		registerVal2.LobbySlideSocialInfoWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_3D84_
	local function __FUNC_4288_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_4509_(arg0, arg1)
			local function __FUNC_4660_(arg0, arg1)
				local function __FUNC_47DB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, true, -320.000000, 0.000000)
					arg0:setTopBottom(true, false, 444.500000, 534.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_47DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47DB_)
			end

			if arg1.interrupted then
				__FUNC_4660_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4660_)
		end

		registerVal3:completeAnimation()
		registerVal2.LobbySlideArenaWidget0:setLeftRight(false, true, -320.000000, 0.000000)
		registerVal2.LobbySlideArenaWidget0:setTopBottom(true, false, 444.500000, 534.500000)
		registerVal2.LobbySlideArenaWidget0:setAlpha(0.000000)
		__FUNC_4509_(registerVal3, {})
		local function __FUNC_49FD_(arg0, arg1)
			local function __FUNC_4B54_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4B54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B54_)
		end

		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		__FUNC_49FD_(registerVal4, {})
		local function __FUNC_4D09_(arg0, arg1)
			local function __FUNC_4E60_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4E60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E60_)
		end

		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(0.000000)
		__FUNC_4D09_(registerVal5, {})
		local function __FUNC_5015_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(0.000000)
		__FUNC_5015_(registerVal6, {})
	end

	registerVal11.Intro = __FUNC_4288_
	registerVal10.Arena = registerVal11
	registerVal11 = {}
	local function __FUNC_51C9_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbySlideArenaWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbySlideMissingMapsWidget:setLeftRight(false, true, -321.000000, -1.000000)
		registerVal2.LobbySlideMissingMapsWidget:setTopBottom(true, false, 343.500000, 403.500000)
		registerVal2.LobbySlideMissingMapsWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbySlideCommonGroupsWidget:setLeftRight(true, false, -1.000000, 319.000000)
		registerVal2.LobbySlideCommonGroupsWidget:setTopBottom(true, false, 420.000000, 585.000000)
		registerVal2.LobbySlideCommonGroupsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbySlideSocialInfoWidget:setLeftRight(true, false, -1.000000, 319.000000)
		registerVal2.LobbySlideSocialInfoWidget:setTopBottom(true, false, 340.500000, 430.500000)
		registerVal2.LobbySlideSocialInfoWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_51C9_
	registerVal10.Custom = registerVal11
	registerVal11 = {}
	local function __FUNC_566D_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbySlideArenaWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbySlideMissingMapsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbySlideCommonGroupsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbySlideSocialInfoWidget:setLeftRight(true, false, -1.000000, 319.000000)
		registerVal2.LobbySlideSocialInfoWidget:setTopBottom(true, false, 342.500000, 432.500000)
		registerVal2.LobbySlideSocialInfoWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_566D_
	registerVal10.FreeRun = registerVal11
	registerVal11 = {}
	local function __FUNC_5A58_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbySlideArenaWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.playercard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbySlideEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbySlideMissingMapsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbySlideCommonGroupsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbySlideSocialInfoWidget:setLeftRight(true, false, -1.000000, 319.000000)
		registerVal2.LobbySlideSocialInfoWidget:setTopBottom(true, false, 342.500000, 432.500000)
		registerVal2.LobbySlideSocialInfoWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_5A58_
	registerVal10.Theater = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Hidden"
	local function __FUNC_5E44_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_5E44_
	local registerVal14 = {}
	registerVal14.stateName = "RankInfoHidden"
	local function __FUNC_5E91_(arg0, arg1, arg2)
		return IsMainModeInvalid()
	end

	registerVal14.condition = __FUNC_5E91_
	local registerVal15 = {}
	registerVal15.stateName = "Lan"
	local function __FUNC_5EE3_(arg0, arg1, arg2)
		local registerVal3 = IsLive()
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_5EE3_
	local registerVal16 = {}
	registerVal16.stateName = "Arena"
	local function __FUNC_5F2C_(arg0, arg1, arg2)
		return IsArenaMode()
	end

	registerVal16.condition = __FUNC_5F2C_
	local registerVal17 = {}
	registerVal17.stateName = "Custom"
	local function __FUNC_5F79_(arg0, arg1, arg2)
		return IsCustomLobby()
	end

	registerVal17.condition = __FUNC_5F79_
	local registerVal18 = {}
	registerVal18.stateName = "FreeRun"
	local function __FUNC_5FC7_(arg0, arg1, arg2)
		return IsFreeRunLobby()
	end

	registerVal18.condition = __FUNC_5FC7_
	local registerVal19 = {}
	registerVal19.stateName = "Theater"
	local function __FUNC_6014_(arg0, arg1, arg2)
		return LobbyModeTheater()
	end

	registerVal19.condition = __FUNC_6014_
	registerVal12 = {registerVal13, registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyMainMode")
	local function __FUNC_6066_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyMainMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_6066_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNav")
	local function __FUNC_6191_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_6191_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_62B8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_62B8_)
	registerVal3.id = "LobbySlideArenaWidget0"
	local function __FUNC_63E8_(arg0, arg1)
		local registerVal2 = arg0.LobbySlideArenaWidget0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_63E8_)
	local function __FUNC_64FA_(arg0)
		arg0.LobbySlideArenaWidget0:close()
		arg0.rank:close()
		arg0.playercard:close()
		arg0.LobbySlideEmblemWidget:close()
		arg0.LobbySlideMissingMapsWidget:close()
		arg0.LobbySlideCommonGroupsWidget:close()
		arg0.LobbySlideSocialInfoWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_64FA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

