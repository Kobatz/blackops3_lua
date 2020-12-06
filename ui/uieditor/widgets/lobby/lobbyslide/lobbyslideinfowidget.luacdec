-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_ImageA")
require("ui.uieditor.widgets.Lobby.Common.FE_SlideSubHeader")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeader")
require("ui.uieditor.widgets.Prestige.Prestige_MasterTierWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideInfoWidget = registerVal1
function CoD.LobbySlideInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideInfoWidget)
	registerVal2.id = "LobbySlideInfoWidget"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -1.000000, 94.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_buttonpanelfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.126316, 0.127660, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(12.000000, 12.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 313.000000, 349.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 2.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.pixelA = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 313.000000, 349.000000)
	registerVal5:setTopBottom(true, false, 89.000000, 92.500000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.pixelA0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 92.000000, 328.000000)
	registerVal6:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.LineT = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 92.000000, 328.000000)
	registerVal7:setTopBottom(true, false, 89.000000, 93.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.LineB = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -2.000000, 94.000000)
	registerVal8:setTopBottom(true, false, -2.000000, 94.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_slidex"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_1609_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setAlpha(HideIfNotEmptyString(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_1609_)
	registerVal2:addElement(registerVal8)
	registerVal2.ImageX = registerVal8
	local registerVal9 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 92.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 91.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.ImageBorder = registerVal9
	local registerVal10 = CoD.FE_ImageA.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 4.000000, 88.000000)
	registerVal10:setTopBottom(true, false, 3.000000, 87.000000)
	local function __FUNC_16C3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_16C3_)
	local function __FUNC_1778_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.imgSolid:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_1778_)
	local function __FUNC_186C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.imgAdd:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_186C_)
	registerVal2:addElement(registerVal10)
	registerVal2.rankIcon = registerVal10
	local registerVal11 = CoD.FE_SlideSubHeader.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 99.900000, 229.900000)
	registerVal11:setTopBottom(true, false, 34.000000, 70.000000)
	local function __FUNC_195E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "rank", true, __FUNC_195E_)
	local function __FUNC_1A14_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.FELabelSubHeadingD0.Label0:setRGB(SetToParagonColorIfPrestigeMasterByRank(148.000000, 162.000000, 165.000000, registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "rank", true, __FUNC_1A14_)
	local function __FUNC_1B40_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.FELabelSubHeadingD0.Label0:setText(Engine.Localize(PrependLocalizedStringWithSeparator("MENU_LEVEL_CAPS", " ", registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "rank", true, __FUNC_1B40_)
	registerVal2:addElement(registerVal11)
	registerVal2.rankText = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -6.000000, 10.000000)
	registerVal12:setTopBottom(true, false, -16.000000, -4.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_buttonsseparate"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image0 = registerVal12
	local registerVal13 = CoD.FE_ListHeader.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 100.000000, 305.000000)
	registerVal13:setTopBottom(true, false, 1.880000, 29.880000)
	registerVal13:setAlpha(HideIfEmptyString(1.000000))
	registerVal13.btnDisplayTextStroke:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal13.btnDisplayTextStroke:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal13.btnDisplayTextStroke:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal13.btnDisplayTextStroke:setLetterSpacing(0.500000)
	local function __FUNC_1CA0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "rankString", true, __FUNC_1CA0_)
	registerVal2:addElement(registerVal13)
	registerVal2.ListHeader0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -349.000000, -313.000000)
	registerVal14:setTopBottom(false, false, -46.750000, -43.250000)
	registerVal14:setZRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.pixelU0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, true, -349.000000, -313.000000)
	registerVal15:setTopBottom(false, false, 44.000000, 47.500000)
	registerVal15:setZRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image1 = registerVal15
	local registerVal16 = CoD.Prestige_MasterTierWidget.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 99.900000, 305.000000)
	registerVal16:setTopBottom(true, false, 72.000000, 97.000000)
	local function __FUNC_1D84_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_1D84_)
	local function __FUNC_1DD6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.ParagonStars:setHorizontalCount(GetPrestigeMasterTierCountByRank(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "rank", true, __FUNC_1DD6_)
	local function __FUNC_1EC7_(arg0)
		UpdateElementState(registerVal2, "PrestigeMasterTierWidget", arg1)
	end

	registerVal16:linkToElementModel(registerVal2, "rank", true, __FUNC_1EC7_)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Visible"
	local function __FUNC_1F46_(arg0, arg2, arg3)
		local registerVal3 = IsInParagonCapableGameMode()
		if registerVal3 then
			registerVal3 = IsPrestigeMasterFromRankModel(arg2, arg1, "rank")
		end
		return registerVal3
	end

	registerVal20.condition = __FUNC_1F46_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_1FF1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rank"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "rank", true, __FUNC_1FF1_)
	registerVal2:addElement(registerVal16)
	registerVal2.PrestigeMasterTierWidget = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_210A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal11:completeAnimation()
		registerVal2.rankText:setLeftRight(true, false, 99.900000, 229.900000)
		registerVal2.rankText:setTopBottom(true, false, 34.000000, 70.000000)
		registerVal2.rankText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.DefaultClip = __FUNC_210A_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_2299_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal11:completeAnimation()
		registerVal2.rankText:setLeftRight(true, false, 99.900000, 305.000000)
		registerVal2.rankText:setTopBottom(true, false, 39.000000, 75.000000)
		registerVal2.rankText:setRGB(0.920000, 0.640000, 0.150000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.DefaultClip = __FUNC_2299_
	registerVal17.OverLevel55 = registerVal18
	registerVal2.clipsPerState = registerVal17
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.stateName = "OverLevel55"
	local function __FUNC_2438_(arg0, arg2, arg3)
		return IsSelfModelRankValueGreaterThan(arg2, arg1, 55.000000)
	end

	registerVal20.condition = __FUNC_2438_
	registerVal19 = {registerVal20}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_24AA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rank"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rank", true, __FUNC_24AA_)
	local function __FUNC_25C2_(arg0)
		arg0.ImageBorder:close()
		arg0.rankIcon:close()
		arg0.rankText:close()
		arg0.ListHeader0:close()
		arg0.PrestigeMasterTierWidget:close()
		arg0.ImageX:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_25C2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

