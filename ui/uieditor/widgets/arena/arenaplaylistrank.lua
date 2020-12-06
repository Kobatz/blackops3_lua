-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeader")
require("ui.uieditor.widgets.Arena.ArenaRankSmall")
require("ui.uieditor.widgets.Arena.ArenaStar")
require("ui.uieditor.widgets.Lobby.Common.FE_SlideSubHeader")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ArenaPlaylistRank = registerVal1
function CoD.ArenaPlaylistRank.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ArenaPlaylistRank)
	registerVal2.id = "ArenaPlaylistRank"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 92.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 91.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setZoom(-10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ImagePanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 315.000000, 351.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 2.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.TickTR = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 315.000000, 351.000000)
	registerVal5:setTopBottom(true, false, 89.000000, 92.500000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.TickBR = registerVal5
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
	registerVal2:addElement(registerVal8)
	registerVal2.ImageX = registerVal8
	local registerVal9 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 92.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 91.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.ImageBorder = registerVal9
	local registerVal10 = CoD.FE_ListHeader.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 107.900000, 275.900000)
	registerVal10:setTopBottom(true, false, 6.000000, 34.000000)
	registerVal10.btnDisplayTextStroke:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal10.btnDisplayTextStroke:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal10.btnDisplayTextStroke:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_14D9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "text", true, __FUNC_14D9_)
	registerVal2:addElement(registerVal10)
	registerVal2.ListHeader = registerVal10
	local registerVal11 = CoD.ArenaRankSmall.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 6.000000, 86.000000)
	registerVal11:setTopBottom(true, false, 8.000000, 88.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.300000)
	registerVal11:setZoom(-5.000000)
	local function __FUNC_15BC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.rankIcon:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "arenaPoints", true, __FUNC_15BC_)
	registerVal2:addElement(registerVal11)
	registerVal2.ArenaRankSolid = registerVal11
	local registerVal12 = CoD.ArenaRankSmall.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 6.000000, 86.000000)
	registerVal12:setTopBottom(true, false, 8.000000, 88.000000)
	registerVal12:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal12:setShaderVector(0.000000, 0.050000, 0.500000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_16B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.rankIcon:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "arenaPoints", true, __FUNC_16B2_)
	registerVal2:addElement(registerVal12)
	registerVal2.ArenaRankAdd = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -6.000000, 10.000000)
	registerVal13:setTopBottom(true, false, -16.000000, -4.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_buttonsseparate"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.TickTL = registerVal13
	local registerVal14 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal14:makeFocusable()
	registerVal14:setLeftRight(true, false, 104.900000, 258.900000)
	registerVal14:setTopBottom(true, false, 67.000000, 91.000000)
	registerVal14:setWidgetType(CoD.ArenaStar)
	registerVal14:setHorizontalCount(6.000000)
	local function __FUNC_17A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setDataSource(registerVal1)
		end
	end

	registerVal14:linkToElementModel(registerVal2, "starsDatasource", true, __FUNC_17A6_)
	registerVal2:addElement(registerVal14)
	registerVal2.Stars = registerVal14
	local registerVal15 = CoD.FE_SlideSubHeader.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 107.900000, 261.900000)
	registerVal15:setTopBottom(true, false, 36.880000, 69.000000)
	local function __FUNC_183E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "rank", true, __FUNC_183E_)
	local function __FUNC_18F4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.FELabelSubHeadingD0.Label0:setText(Engine.Localize(LocalizeToUpperString(GetArenaRankName(registerVal1))))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "arenaPoints", true, __FUNC_18F4_)
	registerVal2:addElement(registerVal15)
	registerVal2.rankText = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1A3C_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal8:completeAnimation()
		registerVal2.ImageX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.ListHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ArenaRankSolid:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ArenaRankAdd:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.Stars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal17.DefaultClip = __FUNC_1A3C_
	registerVal16.DefaultState = registerVal17
	registerVal2.clipsPerState = registerVal16
	registerVal14.id = "Stars"
	local function __FUNC_1CA5_(arg0, arg1)
		local registerVal2 = arg0.Stars:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1CA5_)
	local function __FUNC_1DA5_(arg0)
		arg0.ImagePanel:close()
		arg0.ImageBorder:close()
		arg0.ListHeader:close()
		arg0.ArenaRankSolid:close()
		arg0.ArenaRankAdd:close()
		arg0.Stars:close()
		arg0.rankText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1DA5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

