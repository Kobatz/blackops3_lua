-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
require("ui.uieditor.widgets.Lobby.Common.FE_SlideSubHeader")
require("ui.uieditor.widgets.Arena.ArenaStarbig")
require("ui.uieditor.widgets.Arena.ArenaRankSmall")
require("ui.uieditor.widgets.Arena.LoopingstarAnimationTest")
local function __FUNC_36B_(arg0, arg1, arg2)
	local function __FUNC_48A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
		end
	end

	arg0:linkToElementModel(arg0, "newSeasonPoints", true, __FUNC_48A_)
	local function __FUNC_4FF_(arg1, arg2)
		if arg1.currentState ~= "DefaultState" then
			if 0.000000 < 0.000000 then
				arg0.starcounts:setText(tostring((0.000000 + 1.000000)))
			end
			if arg1.currentState == "StopAnimation" then
				if false then
					local registerVal4 = {}
					registerVal4.name = "bonus_stars_clip_over"
					arg0:dispatchEventToParent(registerVal4)
				else
					arg1:playClip("FadeOut")
				else
					if ((0.000000 + 1.000000) + 1.000000) < 0.000000 then
						if arg1.currentState == "StarLoop" then
							arg1:playClip("DefaultClip")
						else
							arg1:setState("StarLoop")
						else
							arg1:setState("StopAnimation")
						end
					end
				end
			end
		end
	end

	arg0.LoopingstarAnimationTest0:registerEventHandler("clip_over", __FUNC_4FF_)
	local function __FUNC_747_(arg1, arg2)
		if arg1.nextClip then
			arg1:playClip(arg1.nextClip)
		end
		if arg1.currentState == "BonusStars" then
			if arg1.currentClipIsTransitionClip then
				local registerVal5 = {}
				registerVal5.name = "bonus_stars_clip_start"
				arg1:dispatchEventToParent(registerVal5)
			else
				arg0.LoopingstarAnimationTest0:setState("StarIntro")
			end
		end
	end

	arg0:registerEventHandler("clip_over", __FUNC_747_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ArenaResultWidget = registerVal2
local function __FUNC_8F8_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ArenaResultWidget)
	registerVal2.id = "ArenaResultWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 219.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 225.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -85.250000, 86.250000)
	registerVal3:setTopBottom(false, false, -122.630000, 48.880000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -79.000000, 78.000000)
	registerVal4:setTopBottom(false, false, -113.380000, 48.880000)
	registerVal2:addElement(registerVal4)
	registerVal2.RankImageBorder = registerVal4
	local registerVal5 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -79.000000, 78.000000)
	registerVal5:setTopBottom(false, false, 56.130000, 75.130000)
	registerVal2:addElement(registerVal5)
	registerVal2.PlayListBG = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -78.000000, 77.000000)
	registerVal6:setTopBottom(false, false, 77.130000, 96.630000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.800000)
	registerVal2:addElement(registerVal6)
	registerVal2.Backing = registerVal6
	local registerVal7 = CoD.FE_SlideSubHeader.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -79.000000, 78.000000)
	registerVal7:setTopBottom(false, false, 76.630000, 98.630000)
	registerVal7.FELabelSubHeadingD0.Label0:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal7)
	registerVal2.RankFrame = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -79.000000, 78.000000)
	registerVal8:setTopBottom(false, false, 56.130000, 75.130000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.PlayListName = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -79.000000, 78.000000)
	registerVal9:setTopBottom(false, false, 72.630000, 98.630000)
	registerVal9:setRGB(0.760000, 0.830000, 0.850000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(Engine.Localize("--"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal9:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setLetterSpacing(1.000000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.HiddenRankText = registerVal9
	local registerVal10 = LUI.UIList.new(arg0, arg1, 1.000000, 0.000000, nil, false, false, 0.000000, -14.000000, false, false)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(false, false, -122.500000, 122.500000)
	registerVal10:setTopBottom(false, false, 107.630000, 133.630000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setScale(0.700000)
	registerVal10:setWidgetType(CoD.ArenaStarbig)
	registerVal10:setHorizontalCount(6.000000)
	registerVal10:setSpacing(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.CurrentStars = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, -79.000000, 78.000000)
	registerVal11:setTopBottom(false, false, 77.130000, 96.130000)
	registerVal11:setRGB(0.760000, 0.830000, 0.850000)
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal11:setShaderVector(0.000000, 0.050000, 1.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setLetterSpacing(1.000000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.CurrentRankText = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -58.500000, 58.500000)
	registerVal12:setTopBottom(false, false, -109.880000, 3.130000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZRot(108.000000)
	registerVal12:setScale(2.590000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.highlight1 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -58.500000, 58.500000)
	registerVal13:setTopBottom(false, false, -109.880000, 3.130000)
	registerVal13:setRGB(0.620000, 0.490000, 0.050000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZRot(221.000000)
	registerVal13:setScale(1.890000)
	registerVal13:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.highlight00 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -58.500000, 58.500000)
	registerVal14:setTopBottom(false, false, -109.880000, 3.130000)
	registerVal14:setRGB(0.620000, 0.490000, 0.050000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZRot(325.000000)
	registerVal14:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.highlight0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -58.500000, 58.500000)
	registerVal15:setTopBottom(false, false, -109.880000, 3.130000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZRot(108.000000)
	registerVal15:setScale(3.300000)
	registerVal15:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.highlight = registerVal15
	local registerVal16 = CoD.ArenaRankSmall.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, -74.000000, 74.000000)
	registerVal16:setTopBottom(false, false, -106.380000, 41.630000)
	registerVal2:addElement(registerVal16)
	registerVal2.CurrentRank = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -74.000000, 74.000000)
	registerVal17:setTopBottom(false, false, -106.380000, 41.630000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal17:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.CurrentRankADD = registerVal17
	local registerVal18 = LUI.UIList.new(arg0, arg1, 1.000000, 0.000000, nil, false, false, 0.000000, -9.000000, false, false)
	registerVal18:makeFocusable()
	registerVal18:setLeftRight(false, false, -122.500000, 122.500000)
	registerVal18:setTopBottom(false, false, 103.130000, 134.130000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setScale(0.700000)
	registerVal18:setWidgetType(CoD.ArenaStarbig)
	registerVal18:setHorizontalCount(6.000000)
	registerVal18:setSpacing(1.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.PreviousStars = registerVal18
	local registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(false, false, -79.000000, 78.000000)
	registerVal19:setTopBottom(false, false, 77.130000, 96.130000)
	registerVal19:setRGB(0.760000, 0.830000, 0.850000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setTTF("fonts/escom.ttf")
	registerVal19:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal19:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal19:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal19:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal19:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal19:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal19:setLetterSpacing(1.000000)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal19)
	registerVal2.PreviousRankText = registerVal19
	local registerVal20 = CoD.ArenaRankSmall.new(arg0, arg1)
	registerVal20:setLeftRight(false, false, -74.000000, 74.000000)
	registerVal20:setTopBottom(false, false, -106.380000, 41.630000)
	registerVal20:setAlpha(0.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.PreviousRankAdd = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, false, 74.000000, 222.000000)
	registerVal21:setTopBottom(false, false, -106.380000, 41.630000)
	registerVal21:setRGB(0.490000, 0.000000, 0.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setScale(2.000000)
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal21:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.CurrentRankR1 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, false, -227.000000, -79.000000)
	registerVal22:setTopBottom(false, false, -117.380000, 30.630000)
	registerVal22:setRGB(0.060000, 0.580000, 0.000000)
	registerVal22:setAlpha(0.000000)
	registerVal22:setScale(2.000000)
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal22:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal22)
	registerVal2.CurrentRankL1 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(false, false, -74.000000, 74.000000)
	registerVal23:setTopBottom(false, false, -106.380000, 41.630000)
	registerVal23:setRGB(0.000000, 0.030000, 0.490000)
	registerVal23:setAlpha(0.000000)
	registerVal23:setScale(2.000000)
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal23:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal23)
	registerVal2.CurrentRankC1 = registerVal23
	local registerVal24 = CoD.ArenaRankSmall.new(arg0, arg1)
	registerVal24:setLeftRight(false, false, -74.000000, 74.000000)
	registerVal24:setTopBottom(false, false, -106.380000, 41.630000)
	registerVal24:setRGB(1.000000, 0.800000, 0.000000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setRFTMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal24:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.CurrentRankglint = registerVal24
	local registerVal25 = CoD.LoopingstarAnimationTest.new(arg0, arg1)
	registerVal25:setLeftRight(false, false, -79.000000, 78.000000)
	registerVal25:setTopBottom(false, false, -113.380000, 48.880000)
	registerVal2:addElement(registerVal25)
	registerVal2.LoopingstarAnimationTest0 = registerVal25
	local registerVal26 = LUI.UIText.new()
	registerVal26:setLeftRight(false, false, -44.500000, 43.500000)
	registerVal26:setTopBottom(false, false, -56.380000, 18.630000)
	registerVal26:setText(Engine.Localize("0"))
	registerVal26:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal26)
	registerVal2.starcounts = registerVal26
	local function __FUNC_2D87_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.PlayListName:linkToElementModel(registerVal2, "playlistName", true, __FUNC_2D87_)
	local function __FUNC_2E3E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setDataSource(registerVal1)
		end
	end

	registerVal2.CurrentStars:linkToElementModel(registerVal2, "newStarsDatasource", true, __FUNC_2E3E_)
	local function __FUNC_2ED6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(LocalizeToUpperString(GetArenaRankName(registerVal1)))
		end
	end

	registerVal2.CurrentRankText:linkToElementModel(registerVal2, "newSeasonPoints", true, __FUNC_2ED6_)
	local function __FUNC_2FB1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.rankIcon:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal2.CurrentRank:linkToElementModel(registerVal2, "newSeasonPoints", true, __FUNC_2FB1_)
	local function __FUNC_30A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal2.CurrentRankADD:linkToElementModel(registerVal2, "newSeasonPoints", true, __FUNC_30A6_)
	local function __FUNC_317C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setDataSource(registerVal1)
		end
	end

	registerVal2.PreviousStars:linkToElementModel(registerVal2, "previousStarsDatasource", true, __FUNC_317C_)
	local function __FUNC_3216_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setText(LocalizeToUpperString(GetArenaRankName(registerVal1)))
		end
	end

	registerVal2.PreviousRankText:linkToElementModel(registerVal2, "previousSeasonPoints", true, __FUNC_3216_)
	local function __FUNC_32F1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.rankIcon:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal2.PreviousRankAdd:linkToElementModel(registerVal2, "previousSeasonPoints", true, __FUNC_32F1_)
	local function __FUNC_33E6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal2.CurrentRankR1:linkToElementModel(registerVal2, "newSeasonPoints", true, __FUNC_33E6_)
	local function __FUNC_34BC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal2.CurrentRankL1:linkToElementModel(registerVal2, "newSeasonPoints", true, __FUNC_34BC_)
	local function __FUNC_3594_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal2.CurrentRankC1:linkToElementModel(registerVal2, "newSeasonPoints", true, __FUNC_3594_)
	local function __FUNC_366C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24.rankIcon:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal2.CurrentRankglint:linkToElementModel(registerVal2, "newSeasonPoints", true, __FUNC_366C_)
	local registerVal27 = {}
	registerVal27.up = registerVal18
	registerVal10.navigation = registerVal27
	registerVal27 = {}
	registerVal27.down = registerVal10
	registerVal18.navigation = registerVal27
	registerVal27 = {}
	local registerVal28 = {}
	local function __FUNC_3762_()
		registerVal2:setupElementClipCounter(23.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RankImageBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PlayListBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RankFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PlayListName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.CurrentStars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CurrentRankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.highlight1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.highlight00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.highlight0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CurrentRank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CurrentRankADD:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.PreviousStars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.PreviousRankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.PreviousRankAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.CurrentRankR1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.CurrentRankL1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.CurrentRankC1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.CurrentRankglint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.LoopingstarAnimationTest0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.starcounts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal28.DefaultClip = __FUNC_3762_
	registerVal27.DefaultState = registerVal28
	registerVal28 = {}
	local function __FUNC_4033_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_455A_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.RankImageBorder:setAlpha(0.000000)
		__FUNC_455A_(registerVal4, {})
		local function __FUNC_470D_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.PlayListBG:setAlpha(0.000000)
		__FUNC_470D_(registerVal5, {})
		local function __FUNC_48C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		__FUNC_48C1_(registerVal6, {})
		local function __FUNC_4A75_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.RankFrame:setAlpha(0.000000)
		__FUNC_4A75_(registerVal7, {})
		local function __FUNC_4C29_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.PlayListName:setAlpha(0.000000)
		__FUNC_4C29_(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.CurrentStars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CurrentRankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal16:completeAnimation()
		registerVal2.CurrentRank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_4DDD_(arg0, arg1)
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

		registerVal18:completeAnimation()
		registerVal2.PreviousStars:setAlpha(0.000000)
		__FUNC_4DDD_(registerVal18, {})
		local function __FUNC_4F91_(arg0, arg1)
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

		registerVal19:completeAnimation()
		registerVal2.PreviousRankText:setAlpha(0.000000)
		__FUNC_4F91_(registerVal19, {})
		local function __FUNC_5145_(arg0, arg1)
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

		registerVal20:completeAnimation()
		registerVal2.PreviousRankAdd:setAlpha(0.000000)
		__FUNC_5145_(registerVal20, {})
		registerVal25:completeAnimation()
		registerVal2.LoopingstarAnimationTest0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.starcounts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal28.DefaultClip = __FUNC_4033_
	local function __FUNC_52F9_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_572A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.PlayListBG:setAlpha(0.690000)
		__FUNC_572A_(registerVal5, {})
		local function __FUNC_58DD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.RankFrame:setAlpha(1.000000)
		__FUNC_58DD_(registerVal7, {})
		local function __FUNC_5A91_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.PlayListName:setAlpha(1.000000)
		__FUNC_5A91_(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.CurrentStars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CurrentRankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal16:completeAnimation()
		registerVal2.CurrentRank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_5C45_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.PreviousStars:setAlpha(1.000000)
		__FUNC_5C45_(registerVal18, {})
		local function __FUNC_5DF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.PreviousRankText:setAlpha(1.000000)
		__FUNC_5DF9_(registerVal19, {})
		local function __FUNC_5FAD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.PreviousRankAdd:setAlpha(1.000000)
		__FUNC_5FAD_(registerVal20, {})
		registerVal25:completeAnimation()
		registerVal2.LoopingstarAnimationTest0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal28.BonusStars = __FUNC_52F9_
	registerVal27.SeasonFinale = registerVal28
	registerVal28 = {}
	local function __FUNC_6161_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_65CC_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.RankImageBorder:setAlpha(0.000000)
		__FUNC_65CC_(registerVal4, {})
		local function __FUNC_6781_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.PlayListBG:setAlpha(0.000000)
		__FUNC_6781_(registerVal5, {})
		local function __FUNC_6935_(arg0, arg1)
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
		registerVal2.Backing:setAlpha(0.000000)
		__FUNC_6935_(registerVal6, {})
		local function __FUNC_6AE9_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.RankFrame:setAlpha(0.000000)
		__FUNC_6AE9_(registerVal7, {})
		local function __FUNC_6C9D_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.PlayListName:setAlpha(0.000000)
		__FUNC_6C9D_(registerVal8, {})
		local function __FUNC_6E51_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.HiddenRankText:setAlpha(0.000000)
		__FUNC_6E51_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CurrentStars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CurrentRankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_7005_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.CurrentRank:setAlpha(0.000000)
		__FUNC_7005_(registerVal16, {})
		local function __FUNC_71B9_(arg0, arg1)
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

		registerVal25:completeAnimation()
		registerVal2.LoopingstarAnimationTest0:setAlpha(0.000000)
		__FUNC_71B9_(registerVal25, {})
		local function __FUNC_736D_(arg0, arg1)
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

		registerVal26:completeAnimation()
		registerVal2.starcounts:setAlpha(0.000000)
		__FUNC_736D_(registerVal26, {})
	end

	registerVal28.DefaultClip = __FUNC_6161_
	local function __FUNC_7521_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_79A0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RankImageBorder:setAlpha(1.000000)
		__FUNC_79A0_(registerVal4, {})
		local function __FUNC_7B55_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.PlayListBG:setAlpha(0.690000)
		__FUNC_7B55_(registerVal5, {})
		local function __FUNC_7D09_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Backing:setAlpha(0.800000)
		__FUNC_7D09_(registerVal6, {})
		local function __FUNC_7EBD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.RankFrame:setAlpha(1.000000)
		__FUNC_7EBD_(registerVal7, {})
		local function __FUNC_8071_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.PlayListName:setAlpha(1.000000)
		__FUNC_8071_(registerVal8, {})
		local function __FUNC_8225_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.HiddenRankText:setAlpha(0.750000)
		__FUNC_8225_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CurrentStars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CurrentRankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_83D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.CurrentRank:setAlpha(0.000000)
		__FUNC_83D9_(registerVal16, {})
		local function __FUNC_858D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.LoopingstarAnimationTest0:setAlpha(1.000000)
		__FUNC_858D_(registerVal25, {})
		local function __FUNC_8741_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.starcounts:setAlpha(1.000000)
		__FUNC_8741_(registerVal26, {})
	end

	registerVal28.SeasonStart = __FUNC_7521_
	registerVal27.BonusStars = registerVal28
	registerVal28 = {}
	local function __FUNC_88F5_()
		registerVal2:setupElementClipCounter(19.000000)
		local function __FUNC_9514_(arg0, arg1)
			local function __FUNC_966C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_966C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_966C_)
		end

		registerVal4:completeAnimation()
		registerVal2.RankImageBorder:setAlpha(0.000000)
		__FUNC_9514_(registerVal4, {})
		local function __FUNC_9821_(arg0, arg1)
			local function __FUNC_9978_(arg0, arg1)
				local function __FUNC_9AF3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_9AF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 380.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9AF3_)
			end

			if arg1.interrupted then
				__FUNC_9978_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9978_)
		end

		registerVal5:completeAnimation()
		registerVal2.PlayListBG:setAlpha(0.000000)
		__FUNC_9821_(registerVal5, {})
		local function __FUNC_9CA5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_9CA5_)
		local function __FUNC_9E59_(arg0, arg1)
			local function __FUNC_9FB0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 380.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9FB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FB0_)
		end

		registerVal7:completeAnimation()
		registerVal2.RankFrame:setAlpha(0.000000)
		__FUNC_9E59_(registerVal7, {})
		local function __FUNC_A165_(arg0, arg1)
			local function __FUNC_A2BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 380.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A2BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2BC_)
		end

		registerVal8:completeAnimation()
		registerVal2.PlayListName:setAlpha(0.000000)
		__FUNC_A165_(registerVal8, {})
		local function __FUNC_A471_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 380.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_A471_)
		local function __FUNC_A625_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_A625_)
		local function __FUNC_A7D9_(arg0, arg1)
			local function __FUNC_A998_(arg0, arg1)
				local function __FUNC_AB58_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 919.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setZRot(325.000000)
					arg0:setScale(2.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_AB58_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.780000)
				arg0:setZRot(208.000000)
				arg0:setScale(2.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB58_)
			end

			if arg1.interrupted then
				__FUNC_A998_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.380000)
			arg0:setZRot(180.000000)
			arg0:setScale(1.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A998_)
		end

		registerVal12:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:setZRot(0.000000)
		registerVal12:setScale(1.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_A7D9_)
		local function __FUNC_AD52_(arg0, arg1)
			local function __FUNC_AF10_(arg0, arg1)
				local function __FUNC_B0D0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 919.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setZRot(350.000000)
					arg0:setScale(2.100000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B0D0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.330000)
				arg0:setZRot(201.050000)
				arg0:setScale(2.100000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0D0_)
			end

			if arg1.interrupted then
				__FUNC_AF10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.380000)
			arg0:setZRot(180.000000)
			arg0:setScale(1.720000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF10_)
		end

		registerVal13:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setAlpha(0.000000)
		registerVal13:setZRot(0.000000)
		registerVal13:setScale(1.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_AD52_)
		local function __FUNC_B2CA_(arg0, arg1)
			local function __FUNC_B488_(arg0, arg1)
				local function __FUNC_B648_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 919.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setZRot(325.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B648_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.780000)
				arg0:setZRot(208.000000)
				arg0:setScale(2.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B648_)
			end

			if arg1.interrupted then
				__FUNC_B488_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.380000)
			arg0:setZRot(108.000000)
			arg0:setScale(1.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B488_)
		end

		registerVal14:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:setZRot(0.000000)
		registerVal14:setScale(1.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_B2CA_)
		local function __FUNC_B842_(arg0, arg1)
			local function __FUNC_B9BB_(arg0, arg1)
				local function __FUNC_BB78_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 919.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setZRot(108.000000)
					arg0:setScale(3.300000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_BB78_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.380000)
				arg0:setZRot(108.000000)
				arg0:setScale(2.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB78_)
			end

			if arg1.interrupted then
				__FUNC_B9BB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.720000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9BB_)
		end

		registerVal15:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(0.000000)
		registerVal15:setZRot(0.000000)
		registerVal15:setScale(1.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_B842_)
		local function __FUNC_BD72_(arg0, arg1)
			local function __FUNC_BEC8_(arg0, arg1)
				local function __FUNC_C043_(arg0, arg1)
					local function __FUNC_C198_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C198_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C198_)
				end

				if arg1.interrupted then
					__FUNC_C043_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C043_)
			end

			if arg1.interrupted then
				__FUNC_BEC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEC8_)
		end

		registerVal16:completeAnimation()
		registerVal2.CurrentRank:setAlpha(0.000000)
		__FUNC_BD72_(registerVal16, {})
		local function __FUNC_C34D_(arg0, arg1)
			local function __FUNC_C4C7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
				arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C4C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C4C7_)
		end

		registerVal17:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
		registerVal17:setAlpha(0.000000)
		registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal17:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal17:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal17:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		registerVal17:registerEventHandler("transition_complete_keyframe", __FUNC_C34D_)
		local function __FUNC_C78A_(arg0, arg1)
			local function __FUNC_C996_(arg0, arg1)
				local function __FUNC_CBA2_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -74.000000, 74.000000)
					arg0:setTopBottom(false, false, -81.000000, 67.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_CBA2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -74.000000, 74.000000)
				arg0:setTopBottom(false, false, -81.000000, 67.000000)
				arg0:setAlpha(0.540000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBA2_)
			end

			if arg1.interrupted then
				__FUNC_C996_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 5.000000, 143.000000)
			arg0:setTopBottom(false, false, -75.000000, 73.000000)
			arg0:setAlpha(0.750000)
			arg0:setScale(1.470000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C996_)
		end

		registerVal21:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal21:setLeftRight(false, false, 74.000000, 222.000000)
		registerVal21:setTopBottom(false, false, -73.000000, 75.000000)
		registerVal21:setAlpha(0.000000)
		registerVal21:setScale(2.000000)
		registerVal21:registerEventHandler("transition_complete_keyframe", __FUNC_C78A_)
		local function __FUNC_CDE8_(arg0, arg1)
			local function __FUNC_CFF6_(arg0, arg1)
				local function __FUNC_D202_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -74.000000, 74.000000)
					arg0:setTopBottom(false, false, -81.000000, 67.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D202_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -74.000000, 74.000000)
				arg0:setTopBottom(false, false, -81.000000, 67.000000)
				arg0:setAlpha(0.540000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D202_)
			end

			if arg1.interrupted then
				__FUNC_CFF6_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -143.000000, 5.000000)
			arg0:setTopBottom(false, false, -75.000000, 73.000000)
			arg0:setAlpha(0.750000)
			arg0:setScale(1.470000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFF6_)
		end

		registerVal22:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal22:setLeftRight(false, false, -222.000000, -74.000000)
		registerVal22:setTopBottom(false, false, -73.000000, 75.000000)
		registerVal22:setAlpha(0.000000)
		registerVal22:setScale(2.000000)
		registerVal22:registerEventHandler("transition_complete_keyframe", __FUNC_CDE8_)
		local function __FUNC_D448_(arg0, arg1)
			local function __FUNC_D61E_(arg0, arg1)
				local function __FUNC_D7F2_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -74.000000, 74.000000)
					arg0:setTopBottom(false, false, -81.000000, 67.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D7F2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, -81.000000, 67.000000)
				arg0:setAlpha(0.540000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D7F2_)
			end

			if arg1.interrupted then
				__FUNC_D61E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, -75.000000, 73.000000)
			arg0:setAlpha(0.750000)
			arg0:setScale(1.470000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D61E_)
		end

		registerVal23:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal23:setLeftRight(false, false, -74.000000, 74.000000)
		registerVal23:setTopBottom(false, false, -73.000000, 75.000000)
		registerVal23:setAlpha(0.000000)
		registerVal23:setScale(2.000000)
		registerVal23:registerEventHandler("transition_complete_keyframe", __FUNC_D448_)
		local function __FUNC_DA38_(arg0, arg1)
			local function __FUNC_DBB3_(arg0, arg1)
				local function __FUNC_DD08_(arg0, arg1)
					local function __FUNC_DE9F_(arg0, arg1)
						local function __FUNC_E033_(arg0, arg1)
							local function __FUNC_E1EA_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.800000, 0.000000)
								arg0:setAlpha(0.000000)
								arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
								arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_E1EA_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.110000)
							arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1EA_)
						end

						if arg1.interrupted then
							__FUNC_E033_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
						arg0:setShaderVector(0.000000, 0.461539, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E033_)
					end

					if arg1.interrupted then
						__FUNC_DE9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setShaderVector(0.000000, 0.051282, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE9F_)
				end

				if arg1.interrupted then
					__FUNC_DD08_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD08_)
			end

			if arg1.interrupted then
				__FUNC_DBB3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBB3_)
		end

		registerVal24:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
		registerVal24:setRGB(1.000000, 0.800000, 0.000000)
		registerVal24:setAlpha(0.000000)
		registerVal24:setRFTMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal24:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal24:registerEventHandler("transition_complete_keyframe", __FUNC_DA38_)
		registerVal25:completeAnimation()
		registerVal2.LoopingstarAnimationTest0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.starcounts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal28.DefaultClip = __FUNC_88F5_
	registerVal27.SeasonStart = registerVal28
	registerVal2.clipsPerState = registerVal27
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal10.id = "CurrentStars"
	registerVal18.id = "PreviousStars"
	local function __FUNC_E4A2_(arg0)
		arg0.RankImageBorder:close()
		arg0.PlayListBG:close()
		arg0.RankFrame:close()
		arg0.CurrentStars:close()
		arg0.CurrentRank:close()
		arg0.PreviousStars:close()
		arg0.PreviousRankAdd:close()
		arg0.CurrentRankglint:close()
		arg0.LoopingstarAnimationTest0:close()
		arg0.PlayListName:close()
		arg0.CurrentRankText:close()
		arg0.CurrentRankADD:close()
		arg0.PreviousRankText:close()
		arg0.CurrentRankR1:close()
		arg0.CurrentRankL1:close()
		arg0.CurrentRankC1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E4A2_)
	if __FUNC_36B_ then
		__FUNC_36B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ArenaResultWidget.new = __FUNC_8F8_
