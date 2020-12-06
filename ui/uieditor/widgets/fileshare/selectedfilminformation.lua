-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.SelectedFilmSummaryInformation")
require("ui.uieditor.widgets.FileShare.FileshareBookmarkedItem")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Theater.Theater_TitleLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SelectedFilmInformation = registerVal1
function CoD.SelectedFilmInformation.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SelectedFilmInformation)
	registerVal2.id = "SelectedFilmInformation"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 417.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 538.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 417.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 234.560000)
	local function __FUNC_1589_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "mapName", true, __FUNC_1589_)
	registerVal2:addElement(registerVal3)
	registerVal2.MapImage = registerVal3
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(true, false, 0.000000, 417.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 234.560000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_165F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_THUMBNAIL", registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "fileId", true, __FUNC_165F_)
	registerVal2:addElement(registerVal4)
	registerVal2.Thumbnail = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 314.200000, 405.200000)
	registerVal5:setTopBottom(true, false, 10.000000, 101.000000)
	local function __FUNC_1749_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "gameTypeImage", true, __FUNC_1749_)
	registerVal2:addElement(registerVal5)
	registerVal2.GameTypeImage = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 11.800000, 417.200000)
	registerVal6:setTopBottom(false, true, -218.000000, -194.000000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.040000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_17FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "fileAuthorName", true, __FUNC_17FC_)
	registerVal2:addElement(registerVal6)
	registerVal2.AuthorName = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 11.800000, 417.200000)
	registerVal7:setTopBottom(false, true, -194.000000, -174.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1890_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "fileCreateTime", true, __FUNC_1890_)
	registerVal2:addElement(registerVal7)
	registerVal2.CreateTime = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 11.800000, 417.200000)
	registerVal8:setTopBottom(false, true, -172.470000, -152.470000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_194A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(LocalizeString(FileshareGetMatchmakingMode(registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "matchmakingMode", true, __FUNC_194A_)
	registerVal2:addElement(registerVal8)
	registerVal2.MatchType = registerVal8
	local registerVal9 = CoD.SelectedFilmSummaryInformation.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 417.000000)
	registerVal9:setTopBottom(false, true, -145.000000, -29.000000)
	local function __FUNC_1A29_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "summary", false, __FUNC_1A29_)
	local function __FUNC_1A7A_(arg0, arg2)
		FileshareHandleDownloadSummary(registerVal2, arg0, arg1, arg2)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("fileshare_summary_downloaded", __FUNC_1A7A_)
	registerVal2:addElement(registerVal9)
	registerVal2.SelectedFilmSummaryInformation = registerVal9
	local registerVal10 = CoD.FileshareBookmarkedItem.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 0.000000, 129.500000)
	registerVal10:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_1B25_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1B25_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "IconOnly"
	local function __FUNC_1B76_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_1B76_
	local registerVal15 = {}
	registerVal15.stateName = "IconWithText"
	local function __FUNC_1BC1_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBookmarked")
	end

	registerVal15.condition = __FUNC_1BC1_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_1C38_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBookmarked"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "isBookmarked", true, __FUNC_1C38_)
	registerVal2:addElement(registerVal10)
	registerVal2.BookmarkedItem = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 11.800000, 417.200000)
	registerVal11:setTopBottom(false, true, -254.000000, -234.000000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1D5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "fileDescription", true, __FUNC_1D5A_)
	registerVal2:addElement(registerVal11)
	registerVal2.GametypeOnMapName = registerVal11
	local registerVal12 = CoD.TextWithBg.new(arg0, arg1)
	registerVal12:setLeftRight(false, true, -42.750000, -3.250000)
	registerVal12:setTopBottom(true, false, 212.000000, 232.000000)
	registerVal12.Bg:setAlpha(0.600000)
	registerVal12.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1E12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.Text:setText(Engine.Localize(FileshareGetDurationString(registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "duration", true, __FUNC_1E12_)
	registerVal2:addElement(registerVal12)
	registerVal2.Duration = registerVal12
	registerVal13 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal13:setTopBottom(true, true, -2.000000, -301.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.StartMenuframenoBG0 = registerVal13
	registerVal14 = CoD.Theater_TitleLabel.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 2.800000, 399.200000)
	registerVal14:setTopBottom(true, false, 245.000000, 280.000000)
	local function __FUNC_1F10_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.ScorestreaksLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "fileName", true, __FUNC_1F10_)
	registerVal2:addElement(registerVal14)
	registerVal2.TheaterTitleLabel = registerVal14
	registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1FF1_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Thumbnail:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AuthorName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.MatchType:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal16.DefaultClip = __FUNC_1FF1_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_22B2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Thumbnail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AuthorName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.MatchType:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal16.DefaultClip = __FUNC_22B2_
	registerVal15.Film = registerVal16
	registerVal16 = {}
	local function __FUNC_2572_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Thumbnail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AuthorName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.MatchType:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal16.DefaultClip = __FUNC_2572_
	registerVal15.FilmNoAuthor = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Film"
	local function __FUNC_2832_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEitherValue(arg2, arg1, "fileCategory", "film", "recentgames")
		if registerVal3 then
			registerVal3 = FileshareIsPublicOrLeagueMatch(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_2832_
	local registerVal19 = {}
	registerVal19.stateName = "FilmNoAuthor"
	local function __FUNC_2925_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEitherValue(arg2, arg1, "fileCategory", "film", "recentgames")
		if registerVal3 then
			registerVal3 = FileshareIsPublicOrLeagueMatch(arg2, arg1)
		end
		return registerVal3
	end

	registerVal19.condition = __FUNC_2925_
	registerVal17 = {registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_2A15_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileCategory"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "fileCategory", true, __FUNC_2A15_)
	local function __FUNC_2B36_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "matchMakingMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "matchMakingMode", true, __FUNC_2B36_)
	local function __FUNC_2C59_(arg0)
		arg0.SelectedFilmSummaryInformation:close()
		arg0.BookmarkedItem:close()
		arg0.Duration:close()
		arg0.StartMenuframenoBG0:close()
		arg0.TheaterTitleLabel:close()
		arg0.MapImage:close()
		arg0.Thumbnail:close()
		arg0.GameTypeImage:close()
		arg0.AuthorName:close()
		arg0.CreateTime:close()
		arg0.MatchType:close()
		arg0.GametypeOnMapName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2C59_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

