-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterLoadoutItemBackground")
require("ui.uieditor.widgets.CodCaster.CodCasterLoadoutItemBackgroundAngle")
require("ui.uieditor.widgets.CodCaster.CodCasterLoadoutListContainerContainer")
require("ui.uieditor.widgets.HUD.DeadSpectate.DeadSpectate_SpectatingBar")
require("ui.uieditor.widgets.HUD.DeadSpectate.DeadSpectate_SpectatingBarPC")
local function __FUNC_382_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal3, "deadSpectator")
	local registerVal5 = Engine.CreateModel(registerVal4, "playerIndex")
	local registerVal6 = Engine.CreateModel(registerVal4, "playerTeam")
	local function __FUNC_568_(arg2)
		local registerVal1 = Engine.GetModelValue(registerVal5)
		if registerVal1 then
			arg0.teamName:setText(Engine.Localize(TeamStringFromPlayerIndex(arg1, registerVal1)))
			arg0.teamColor:setRGB(TeamColorFromPlayerIndex(arg1, registerVal1))
			arg0.teamColorArrow:setRGB(TeamColorFromPlayerIndex(arg1, registerVal1))
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_568_, false)
	local function __FUNC_71C_(arg2)
		local registerVal1 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_qs_playercard", 1.000000)
		if not registerVal1 then
			return 
		end
		registerVal1 = Engine.GetModelValue(arg2)
		arg0:playClip("SelectionChanged")
		local function __FUNC_884_(arg2, arg3)
			arg0.playerName:setText(GetClientNameAndClanTag(arg1, registerVal1))
			arg0:playClip("SelectionChangedEnd")
			arg0:registerEventHandler("clip_over", LUI.UIElement.clipOver)
		end

		arg0:registerEventHandler("clip_over", __FUNC_884_)
	end

	arg0:subscribeToModel(registerVal5, __FUNC_71C_, true)
	local registerVal7 = Engine.GetModel(registerVal3, "profile.colorblindMode")
	if registerVal7 then
		local function __FUNC_9EC_(arg2)
			local registerVal1 = Engine.GetModelValue(registerVal5)
			if registerVal1 then
				arg0.teamColor:setRGB(TeamColorFromPlayerIndex(arg1, registerVal1))
				arg0.teamColorArrow:setRGB(TeamColorFromPlayerIndex(arg1, registerVal1))
			end
		end

		arg0:subscribeToModel(registerVal7, __FUNC_9EC_, false)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CodCasterSpectate = registerVal2
local function __FUNC_B0C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterSpectate)
	registerVal2.id = "CodCasterSpectate"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 279.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CodCasterLoadoutItemBackground.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 148.000000, 285.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 73.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = CoD.CodCasterLoadoutItemBackgroundAngle.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 210.000000, 296.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 73.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BG1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 212.000000)
	registerVal5:setTopBottom(true, false, 2.000000, 73.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_23E7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(TeamColorFromPlayerIndex(arg1, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "DeadSpectate", "playerIndex", __FUNC_23E7_)
	registerVal2:addElement(registerVal5)
	registerVal2.WhiteBG = registerVal5
	local registerVal6 = CoD.CodCasterLoadoutListContainerContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 284.000000, 1365.000000)
	registerVal6:setTopBottom(true, false, -19.000000, 53.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.CodCasterLoadoutListContainerContainer = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -3.300000, 230.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal7:setAlpha(0.600000)
	registerVal7:setImage(RegisterImage("uie_t7_codcaster_colorarrowbackingwhite"))
	local function __FUNC_24A5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(TeamColorFromPlayerIndex(arg1, registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "DeadSpectate", "playerIndex", __FUNC_24A5_)
	registerVal2:addElement(registerVal7)
	registerVal2.playerNameBGAccent = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -3.300000, 230.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal8:setAlpha(0.800000)
	registerVal8:setImage(RegisterImage("uie_t7_codcaster_colorarrowbackingwhite"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal8:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 1.500000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_2565_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(TeamColorFromPlayerIndex(arg1, registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "DeadSpectate", "playerIndex", __FUNC_2565_)
	registerVal2:addElement(registerVal8)
	registerVal2.playerNameBG = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 228.000000)
	registerVal9:setTopBottom(true, false, 2.000000, 44.000000)
	registerVal9:setAlpha(0.850000)
	registerVal9:setImage(RegisterImage("uie_t7_codcaster_colorarrowbacking"))
	registerVal2:addElement(registerVal9)
	registerVal2.teamNameBG = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -3.940000, 181.700000)
	registerVal10:setTopBottom(true, false, 3.000000, 44.000000)
	registerVal10:setImage(RegisterImage("uie_t7_codcaster_colorarrow"))
	local function __FUNC_2625_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setRGB(TeamColorFromPlayerIndex(arg1, registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "DeadSpectate", "playerIndex", __FUNC_2625_)
	registerVal2:addElement(registerVal10)
	registerVal2.teamColorArrow = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -4.000000, 230.000000)
	registerVal11:setTopBottom(true, false, -1.000000, 6.000000)
	registerVal11:setImage(RegisterImage("uie_t7_codcaster_teamcolorbar"))
	local function __FUNC_26E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(TeamColorFromPlayerIndex(arg1, registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "DeadSpectate", "playerIndex", __FUNC_26E5_)
	registerVal2:addElement(registerVal11)
	registerVal2.teamColor = registerVal11
	local registerVal12 = CoD.DeadSpectate_SpectatingBar.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -6.000000, -84.090000)
	registerVal12:setTopBottom(true, false, -26.500000, -1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.spectatingBar = registerVal12
	local registerVal13 = CoD.DeadSpectate_SpectatingBarPC.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 60.950000, 127.950000)
	registerVal13:setTopBottom(true, false, -26.500000, -1.500000)
	registerVal2:addElement(registerVal13)
	registerVal2.DeadSpectateSpectatingBarPC = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -3.300000, 21.300000)
	registerVal14:setTopBottom(true, false, 3.000000, 44.000000)
	registerVal14:setImage(RegisterImage("uie_t7_codcaster_whitearrow"))
	registerVal2:addElement(registerVal14)
	registerVal2.arrow = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(false, false, -127.650000, 77.000000)
	registerVal15:setTopBottom(true, false, 14.000000, 34.000000)
	registerVal15:setRGB(ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b)
	registerVal15:setText(Engine.Localize(""))
	registerVal15:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.playerName = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(false, false, -128.650000, 68.550000)
	registerVal16:setTopBottom(true, false, 51.000000, 67.000000)
	registerVal16:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_27A5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setText(TeamStringFromPlayerIndex(arg1, registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "DeadSpectate", "playerIndex", __FUNC_27A5_)
	registerVal2:addElement(registerVal16)
	registerVal2.teamName = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, false, 4.000000, 43.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.TransitionBar = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 224.060000, 296.000000)
	registerVal18:setTopBottom(true, false, 1.000000, 71.000000)
	local function __FUNC_2867_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setupCharacterExtraCamRenderForHeroIndex(GetHeroIndexForClientNum(arg1, registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "DeadSpectate", "playerIndex", __FUNC_2867_)
	registerVal2:addElement(registerVal18)
	registerVal2.HeroExtraCamRenderByIndex = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 100.450000, 155.450000)
	registerVal19:setTopBottom(true, false, -169.480000, 219.480000)
	registerVal19:setZRot(-90.000000)
	registerVal19:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.GlowWhiteOver = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, -147.000000, 97.000000)
	registerVal20:setTopBottom(true, false, -139.300000, 189.300000)
	registerVal20:setAlpha(0.900000)
	registerVal20:setZRot(-90.000000)
	registerVal20:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.GlowWhiteOver0 = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_2947_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WhiteBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterLoadoutListContainerContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.playerNameBGAccent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.playerNameBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.teamNameBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.teamColorArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.teamColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.spectatingBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DeadSpectateSpectatingBarPC:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.playerName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.teamName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.teamName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.HeroExtraCamRenderByIndex:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.GlowWhiteOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.GlowWhiteOver0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_2947_
	local function __FUNC_3034_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.playerNameBGAccent:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.playerNameBG:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_3533_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 205.180000, 390.820000)
			arg0:setTopBottom(true, false, 3.000000, 44.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.teamColorArrow:setLeftRight(true, false, -3.940000, 181.700000)
		registerVal2.teamColorArrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.teamColorArrow:setAlpha(1.000000)
		__FUNC_3533_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.teamColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_3755_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 202.400000, 227.000000)
			arg0:setTopBottom(true, false, 3.000000, 44.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, -3.300000, 21.300000)
		registerVal2.arrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.arrow:setAlpha(1.000000)
		__FUNC_3755_(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.teamName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_3979_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 206.180000)
			arg0:setTopBottom(true, false, 4.000000, 43.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.TransitionBar:setLeftRight(true, false, 0.000000, 0.000000)
		registerVal2.TransitionBar:setTopBottom(true, false, 4.000000, 43.000000)
		__FUNC_3979_(registerVal17, {})
	end

	registerVal22.SelectionChanged = __FUNC_3034_
	local function __FUNC_3B7A_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.playerNameBGAccent:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.playerNameBG:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_402C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -3.940000, 181.700000)
			arg0:setTopBottom(true, false, 3.000000, 44.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.teamColorArrow:setLeftRight(true, false, 205.180000, 390.820000)
		registerVal2.teamColorArrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.teamColorArrow:setAlpha(1.000000)
		__FUNC_402C_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.teamColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_4251_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -3.300000, 21.300000)
			arg0:setTopBottom(true, false, 3.000000, 44.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 202.400000, 227.000000)
		registerVal2.arrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.arrow:setAlpha(1.000000)
		__FUNC_4251_(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.teamName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_4475_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 0.000000)
			arg0:setTopBottom(true, false, 4.000000, 43.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.TransitionBar:setLeftRight(true, false, 0.000000, 206.180000)
		registerVal2.TransitionBar:setTopBottom(true, false, 4.000000, 43.000000)
		__FUNC_4475_(registerVal17, {})
	end

	registerVal22.SelectionChangedEnd = __FUNC_3B7A_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_4671_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setLeftRight(true, false, 159.000000, 296.000000)
		registerVal2.bg:setTopBottom(true, false, 1.000000, 73.000000)
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WhiteBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterLoadoutListContainerContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.playerNameBGAccent:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.playerNameBG:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.teamNameBG:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.teamColorArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.teamColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.spectatingBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DeadSpectateSpectatingBarPC:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.playerName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.teamName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.teamName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.HeroExtraCamRenderByIndex:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.GlowWhiteOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.GlowWhiteOver0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_4671_
	local function __FUNC_4DFF_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.playerNameBGAccent:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.playerNameBG:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.teamColorArrow:setLeftRight(true, false, -3.940000, 181.700000)
		registerVal2.teamColorArrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.teamColorArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.teamColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, -3.300000, 21.300000)
		registerVal2.arrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.teamName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TransitionBar:setLeftRight(true, false, 0.000000, 0.000000)
		registerVal2.TransitionBar:setTopBottom(true, false, 4.000000, 43.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_53F8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 100.450000, 155.450000)
			arg0:setTopBottom(true, false, -169.480000, 219.480000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.GlowWhiteOver:setLeftRight(true, false, 100.450000, 155.450000)
		registerVal2.GlowWhiteOver:setTopBottom(true, false, -169.480000, 219.480000)
		registerVal2.GlowWhiteOver:setAlpha(0.000000)
		registerVal2.GlowWhiteOver:setScale(1.000000)
		__FUNC_53F8_(registerVal19, {})
		local function __FUNC_563B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.GlowWhiteOver0:setAlpha(0.000000)
		__FUNC_563B_(registerVal20, {})
	end

	registerVal22.SelectionChanged = __FUNC_4DFF_
	local function __FUNC_57ED_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.playerNameBGAccent:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.playerNameBG:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.teamColorArrow:setLeftRight(true, false, -3.940000, 181.700000)
		registerVal2.teamColorArrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.teamColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, -3.300000, 21.300000)
		registerVal2.arrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.teamName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TransitionBar:setLeftRight(true, false, 0.000000, 0.000000)
		registerVal2.TransitionBar:setTopBottom(true, false, 4.000000, 43.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_5DB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 100.450000, 155.450000)
			arg0:setTopBottom(true, false, -169.480000, 219.480000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.GlowWhiteOver:setLeftRight(true, false, 100.450000, 155.450000)
		registerVal2.GlowWhiteOver:setTopBottom(true, false, -169.480000, 219.480000)
		registerVal2.GlowWhiteOver:setAlpha(1.000000)
		__FUNC_5DB5_(registerVal19, {})
		local function __FUNC_5FD9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.GlowWhiteOver0:setAlpha(0.900000)
		registerVal2.GlowWhiteOver0:setScale(1.000000)
		__FUNC_5FD9_(registerVal20, {})
	end

	registerVal22.SelectionChangedEnd = __FUNC_57ED_
	registerVal21.ShowWithSpecialist = registerVal22
	registerVal22 = {}
	local function __FUNC_61B0_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WhiteBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterLoadoutListContainerContainer:setLeftRight(true, false, 226.000000, 1308.000000)
		registerVal2.CodCasterLoadoutListContainerContainer:setTopBottom(true, false, -19.000000, 53.000000)
		registerVal2.CodCasterLoadoutListContainerContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.playerNameBG:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.teamNameBG:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.teamColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.spectatingBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DeadSpectateSpectatingBarPC:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.playerName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.teamName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.teamName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.HeroExtraCamRenderByIndex:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal22.DefaultClip = __FUNC_61B0_
	local function __FUNC_67CC_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.playerNameBGAccent:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.playerNameBG:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.teamColorArrow:setLeftRight(true, false, -3.940000, 181.700000)
		registerVal2.teamColorArrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.teamColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, -3.300000, 21.300000)
		registerVal2.arrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.teamName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TransitionBar:setLeftRight(true, false, 0.000000, 0.000000)
		registerVal2.TransitionBar:setTopBottom(true, false, 4.000000, 43.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_6DAC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 100.450000, 155.450000)
			arg0:setTopBottom(true, false, -169.480000, 219.480000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.GlowWhiteOver:setLeftRight(true, false, 100.450000, 155.450000)
		registerVal2.GlowWhiteOver:setTopBottom(true, false, -169.480000, 219.480000)
		registerVal2.GlowWhiteOver:setAlpha(0.000000)
		registerVal2.GlowWhiteOver:setScale(1.000000)
		__FUNC_6DAC_(registerVal19, {})
		local function __FUNC_6FEF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.GlowWhiteOver0:setAlpha(0.000000)
		__FUNC_6FEF_(registerVal20, {})
	end

	registerVal22.SelectionChanged = __FUNC_67CC_
	local function __FUNC_71A1_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.playerNameBGAccent:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.playerNameBG:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.teamColorArrow:setLeftRight(true, false, -3.940000, 181.700000)
		registerVal2.teamColorArrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.teamColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, -3.300000, 21.300000)
		registerVal2.arrow:setTopBottom(true, false, 3.000000, 44.000000)
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.teamName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TransitionBar:setLeftRight(true, false, 0.000000, 0.000000)
		registerVal2.TransitionBar:setTopBottom(true, false, 4.000000, 43.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_7785_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 100.450000, 155.450000)
			arg0:setTopBottom(true, false, -169.480000, 219.480000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.GlowWhiteOver:setLeftRight(true, false, 100.450000, 155.450000)
		registerVal2.GlowWhiteOver:setTopBottom(true, false, -169.480000, 219.480000)
		registerVal2.GlowWhiteOver:setAlpha(1.000000)
		__FUNC_7785_(registerVal19, {})
		local function __FUNC_79A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.GlowWhiteOver0:setAlpha(0.900000)
		registerVal2.GlowWhiteOver0:setScale(1.000000)
		__FUNC_79A9_(registerVal20, {})
	end

	registerVal22.SelectionChangedEnd = __FUNC_71A1_
	registerVal21.ShowWithoutSpecialist = registerVal22
	registerVal2.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "ShowWithSpecialist"
	local function __FUNC_7B80_(arg0, arg2, arg3)
		local registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_lo_specialist", 1.000000)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			if not registerVal3 then
				registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_qs_playercard", 1.000000)
			else
			end
		end
		return true
	end

	registerVal24.condition = __FUNC_7B80_
	local registerVal25 = {}
	registerVal25.stateName = "ShowWithoutSpecialist"
	local function __FUNC_7D0B_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		if not registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_qs_playercard", 1.000000)
		else
		end
		return true
	end

	registerVal25.condition = __FUNC_7D0B_
	registerVal23 = {registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal23)
	registerVal24 = Engine.GetModelForController(arg1)
	registerVal23 = Engine.GetModel(registerVal24, "CodCaster.profileSettingsUpdated")
	local function __FUNC_7E54_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal23, __FUNC_7E54_)
	registerVal24 = Engine.GetModelForController(arg1)
	registerVal23 = Engine.GetModel(registerVal24, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_7F8A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal23, __FUNC_7F8A_)
	local function __FUNC_8116_(arg0)
		arg0.bg:close()
		arg0.BG1:close()
		arg0.CodCasterLoadoutListContainerContainer:close()
		arg0.spectatingBar:close()
		arg0.DeadSpectateSpectatingBarPC:close()
		arg0.WhiteBG:close()
		arg0.playerNameBGAccent:close()
		arg0.playerNameBG:close()
		arg0.teamColorArrow:close()
		arg0.teamColor:close()
		arg0.teamName:close()
		arg0.HeroExtraCamRenderByIndex:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8116_)
	if __FUNC_382_ then
		__FUNC_382_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterSpectate.new = __FUNC_B0C_
