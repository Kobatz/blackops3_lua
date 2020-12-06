-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBacking")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingFooter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LeaderboardRow = registerVal1
function CoD.LeaderboardRow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LeaderboardRow)
	registerVal2.id = "LeaderboardRow"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 780.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 1.000000, -1.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBox = registerVal3
	local registerVal4 = CoD.LobbyMemberBackingMask.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.LobbyMemberBackingMask0 = registerVal4
	local registerVal5 = CoD.LobbyMemberBacking.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.LobbyMemberBacking0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 3.000000, 84.000000)
	registerVal6:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1A55_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "rowColor", true, __FUNC_1A55_)
	local function __FUNC_1AE7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "positionUI", true, __FUNC_1AE7_)
	local function __FUNC_1B9E_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_1B9E_)
	registerVal2:addElement(registerVal6)
	registerVal2.Position = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 74.000000, 108.720000)
	registerVal7:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1C41_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "rank", true, __FUNC_1C41_)
	local function __FUNC_1CFA_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_1CFA_)
	registerVal2:addElement(registerVal7)
	registerVal2.Rank = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 111.720000, 131.720000)
	registerVal8:setTopBottom(true, false, 2.500000, 22.500000)
	local function __FUNC_1D9D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_1D9D_)
	registerVal2:addElement(registerVal8)
	registerVal2.RankIcon = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 138.000000, 308.000000)
	registerVal9:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1E50_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setRGB(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "rowColor", true, __FUNC_1E50_)
	local function __FUNC_1EE3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "name", true, __FUNC_1EE3_)
	local function __FUNC_1F74_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_1F74_)
	registerVal2:addElement(registerVal9)
	registerVal2.Name = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 308.000000, 401.500000)
	registerVal10:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2019_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setRGB(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal2, "column0color", true, __FUNC_2019_)
	local function __FUNC_20AB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "column0", true, __FUNC_20AB_)
	registerVal2:addElement(registerVal10)
	registerVal2.Column0 = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 401.500000, 495.000000)
	registerVal11:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2162_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "column1color", true, __FUNC_2162_)
	local function __FUNC_21F3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "column1", true, __FUNC_21F3_)
	registerVal2:addElement(registerVal11)
	registerVal2.Column1 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 495.000000, 588.500000)
	registerVal12:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_22AA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setRGB(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal2, "column2color", true, __FUNC_22AA_)
	local function __FUNC_233B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "column2", true, __FUNC_233B_)
	registerVal2:addElement(registerVal12)
	registerVal2.Column2 = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 588.500000, 682.000000)
	registerVal13:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_23F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setRGB(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal2, "column3color", true, __FUNC_23F2_)
	local function __FUNC_2483_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "column3", true, __FUNC_2483_)
	registerVal2:addElement(registerVal13)
	registerVal2.Column3 = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 682.000000, 779.000000)
	local registerVal19 = LanguageOverrideNumber("traditionalchinese", 4.000000, 2.500000)
	registerVal14:setTopBottom(true, false, registerVal19, LanguageOverrideNumber("traditionalchinese", 20.000000, 22.500000))
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_253A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setRGB(registerVal1)
		end
	end

	registerVal14:linkToElementModel(registerVal2, "column4color", true, __FUNC_253A_)
	local function __FUNC_25CB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "column4", true, __FUNC_25CB_)
	registerVal2:addElement(registerVal14)
	registerVal2.Column4 = registerVal14
	local registerVal15 = CoD.LobbyMemberBackingFooter.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal15:setTopBottom(false, false, 10.000000, 13.000000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.LobbyMemberBackingFooter0 = registerVal15
	local registerVal16 = CoD.LobbyMemberBackingFooter.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal16:setTopBottom(false, false, -14.000000, -10.900000)
	registerVal16:setAlpha(0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.LobbyMemberBackingFooter00 = registerVal16
	local function __FUNC_2682_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal2.Rank:linkToElementModel(registerVal2, "rankColor", true, __FUNC_2682_)
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_2713_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setAlpha(1.000000)
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setAlpha(1.000000)
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setAlpha(1.000000)
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setAlpha(1.000000)
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setAlpha(1.000000)
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setAlpha(1.000000)
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setAlpha(1.000000)
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_2713_
	local function __FUNC_2D76_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter00:setTopBottom(false, false, -14.000000, -11.000000)
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Focus = __FUNC_2D76_
	local function __FUNC_33A2_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_3964_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.000000)
		__FUNC_3964_(registerVal4, {})
		local function __FUNC_3B19_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(0.000000)
		__FUNC_3B19_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_3CCD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 1.000000, 1.000000)
			arg0:setTopBottom(false, false, 11.000000, 14.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		__FUNC_3CCD_(registerVal15, {})
		local function __FUNC_3EE7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(0.000000)
		__FUNC_3EE7_(registerVal16, {})
	end

	registerVal18.GainFocus = __FUNC_33A2_
	local function __FUNC_4099_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_465C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		__FUNC_465C_(registerVal4, {})
		local function __FUNC_4811_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		__FUNC_4811_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_49C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 1.000000, 1.000000)
			arg0:setTopBottom(false, false, 11.000000, 14.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		__FUNC_49C5_(registerVal15, {})
		local function __FUNC_4BE4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		__FUNC_4BE4_(registerVal16, {})
	end

	registerVal18.LoseFocus = __FUNC_4099_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_4D99_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setAlpha(1.000000)
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setAlpha(0.000000)
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 99.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 4.500000, 20.500000)
		registerVal2.Name:setAlpha(1.000000)
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setAlpha(1.000000)
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setAlpha(1.000000)
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setAlpha(1.000000)
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setAlpha(1.000000)
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setAlpha(1.000000)
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_4D99_
	local function __FUNC_545E_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setAlpha(0.000000)
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 99.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 4.500000, 20.500000)
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter00:setTopBottom(false, false, -14.000000, -11.000000)
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Focus = __FUNC_545E_
	local function __FUNC_5B7A_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_613C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.000000)
		__FUNC_613C_(registerVal4, {})
		local function __FUNC_62F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(0.000000)
		__FUNC_62F1_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_64A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 1.000000, 1.000000)
			arg0:setTopBottom(false, false, 11.000000, 14.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		__FUNC_64A5_(registerVal15, {})
		local function __FUNC_66BF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(0.000000)
		__FUNC_66BF_(registerVal16, {})
	end

	registerVal18.GainFocus = __FUNC_5B7A_
	local function __FUNC_6871_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_6E34_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		__FUNC_6E34_(registerVal4, {})
		local function __FUNC_6FE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		__FUNC_6FE9_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_719D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 1.000000, 1.000000)
			arg0:setTopBottom(false, false, 11.000000, 14.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		__FUNC_719D_(registerVal15, {})
		local function __FUNC_73BC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		__FUNC_73BC_(registerVal16, {})
	end

	registerVal18.LoseFocus = __FUNC_6871_
	registerVal17.Freerun = registerVal18
	registerVal18 = {}
	local function __FUNC_7571_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setAlpha(1.000000)
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setAlpha(0.000000)
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 99.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 4.500000, 20.500000)
		registerVal2.Name:setAlpha(1.000000)
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setAlpha(1.000000)
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setAlpha(1.000000)
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setAlpha(1.000000)
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setAlpha(1.000000)
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setAlpha(1.000000)
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_7571_
	local function __FUNC_7C36_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setAlpha(0.000000)
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 99.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 4.500000, 20.500000)
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter00:setTopBottom(false, false, -14.000000, -11.000000)
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Focus = __FUNC_7C36_
	local function __FUNC_8352_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_8914_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.000000)
		__FUNC_8914_(registerVal4, {})
		local function __FUNC_8AC9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(0.000000)
		__FUNC_8AC9_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_8C7D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 1.000000, 1.000000)
			arg0:setTopBottom(false, false, 11.000000, 14.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		__FUNC_8C7D_(registerVal15, {})
		local function __FUNC_8E97_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(0.000000)
		__FUNC_8E97_(registerVal16, {})
	end

	registerVal18.GainFocus = __FUNC_8352_
	local function __FUNC_9049_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_960C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		__FUNC_960C_(registerVal4, {})
		local function __FUNC_97C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		__FUNC_97C1_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_9975_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 1.000000, 1.000000)
			arg0:setTopBottom(false, false, 11.000000, 14.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		__FUNC_9975_(registerVal15, {})
		local function __FUNC_9B94_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		__FUNC_9B94_(registerVal16, {})
	end

	registerVal18.LoseFocus = __FUNC_9049_
	registerVal17.DOA = registerVal18
	registerVal18 = {}
	local function __FUNC_9D49_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setAlpha(1.000000)
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setAlpha(0.000000)
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 99.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 4.500000, 20.500000)
		registerVal2.Name:setAlpha(1.000000)
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setAlpha(1.000000)
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setAlpha(1.000000)
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setAlpha(1.000000)
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setAlpha(1.000000)
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setAlpha(1.000000)
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_9D49_
	local function __FUNC_A40E_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setAlpha(0.000000)
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 99.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 4.500000, 20.500000)
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter00:setTopBottom(false, false, -14.000000, -11.000000)
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Focus = __FUNC_A40E_
	local function __FUNC_AB2A_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_B0EC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.000000)
		__FUNC_B0EC_(registerVal4, {})
		local function __FUNC_B2A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(0.000000)
		__FUNC_B2A1_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_B455_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 1.000000, 1.000000)
			arg0:setTopBottom(false, false, 11.000000, 14.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		__FUNC_B455_(registerVal15, {})
		local function __FUNC_B66F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(0.000000)
		__FUNC_B66F_(registerVal16, {})
	end

	registerVal18.GainFocus = __FUNC_AB2A_
	local function __FUNC_B821_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_BDE4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		__FUNC_BDE4_(registerVal4, {})
		local function __FUNC_BF99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		__FUNC_BF99_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Position:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Rank:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Name:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Column0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Column1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Column2:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Column3:setZoom(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Column4:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_C14D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 1.000000, 1.000000)
			arg0:setTopBottom(false, false, 11.000000, 14.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, 1.000000, 1.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		__FUNC_C14D_(registerVal15, {})
		local function __FUNC_C36C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		__FUNC_C36C_(registerVal16, {})
	end

	registerVal18.LoseFocus = __FUNC_B821_
	registerVal17.Rankless = registerVal18
	registerVal2.clipsPerState = registerVal17
	registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Freerun"
	local function __FUNC_C521_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_C521_
	local registerVal21 = {}
	registerVal21.stateName = "DOA"
	local function __FUNC_C56D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_C56D_
	local registerVal22 = {}
	registerVal22.stateName = "Rankless"
	local function __FUNC_C5B9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal22.condition = __FUNC_C5B9_
	registerVal19 = {registerVal20, registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_C605_(arg0)
		arg0.LobbyMemberBackingMask0:close()
		arg0.LobbyMemberBacking0:close()
		arg0.LobbyMemberBackingFooter0:close()
		arg0.LobbyMemberBackingFooter00:close()
		arg0.Position:close()
		arg0.Rank:close()
		arg0.RankIcon:close()
		arg0.Name:close()
		arg0.Column0:close()
		arg0.Column1:close()
		arg0.Column2:close()
		arg0.Column3:close()
		arg0.Column4:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C605_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

