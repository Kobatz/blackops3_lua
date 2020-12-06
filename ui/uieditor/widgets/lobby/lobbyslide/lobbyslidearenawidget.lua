-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Arena.ArenaRankSmall")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeader")
require("ui.uieditor.widgets.Arena.ArenaStar")
require("ui.uieditor.widgets.Lobby.Common.FE_SlideSubHeader")
require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideArenaMasterPowerRating")
local function __FUNC_3D7_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "Arena")
	registerVal3 = Engine.CreateModel(registerVal2, "selectedPlayerPoints")
	local registerVal4 = Engine.CreateModel(registerVal2, "selectedPlayerSkill")
	Engine.SetModelValue(registerVal3, 0.000000)
	Engine.SetModelValue(registerVal4, 0.000000)
end

local function __FUNC_53F_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "Arena")
	registerVal4 = Engine.CreateModel(registerVal3, "selectedPlayerPoints")
	local registerVal5 = Engine.CreateModel(registerVal3, "selectedPlayerSkill")
	local function __FUNC_6F7_(arg0)
		if arg0 then
			local registerVal1 = Engine.GetModelValue(arg0)
			Engine.SetModelValue(registerVal4, registerVal1)
		end
	end

	arg0.Stars:linkToElementModel(arg0, "arenaPoints", true, __FUNC_6F7_)
	local function __FUNC_79A_(arg0)
		if arg0 then
			local registerVal1 = Engine.GetModelValue(arg0)
			Engine.SetModelValue(registerVal5, registerVal1)
		end
	end

	arg0.Stars:linkToElementModel(arg0, "arenaSkill", true, __FUNC_79A_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.LobbySlideArenaWidget = registerVal3
local function __FUNC_83E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_3D7_ then
		__FUNC_3D7_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideArenaWidget)
	registerVal2.id = "LobbySlideArenaWidget"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 92.000000)
	registerVal3:setTopBottom(true, false, 11.000000, 102.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setZoom(-10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ImagePanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 313.000000, 349.000000)
	registerVal4:setTopBottom(true, false, 10.000000, 13.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.TickTR = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 313.000000, 349.000000)
	registerVal5:setTopBottom(true, false, 100.000000, 103.500000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.TickBR = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 92.000000, 328.000000)
	registerVal6:setTopBottom(true, false, 10.000000, 14.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.LineT = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 92.000000, 328.000000)
	registerVal7:setTopBottom(true, false, 100.000000, 104.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.LineB = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -2.000000, 94.000000)
	registerVal8:setTopBottom(true, false, 9.000000, 105.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_slidex"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.ImageX = registerVal8
	local registerVal9 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 92.000000)
	registerVal9:setTopBottom(true, false, 11.000000, 102.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.ImageBorder = registerVal9
	local registerVal10 = CoD.ArenaRankSmall.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 6.000000, 86.000000)
	registerVal10:setTopBottom(true, false, 16.000000, 96.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.300000)
	registerVal10:setZoom(-5.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.ArenaRankSolid = registerVal10
	local registerVal11 = CoD.ArenaRankSmall.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 6.000000, 86.000000)
	registerVal11:setTopBottom(true, false, 16.000000, 96.000000)
	registerVal11:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal11:setShaderVector(0.000000, 0.050000, 0.500000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1BEB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.rankIcon:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "arenaPoints", true, __FUNC_1BEB_)
	registerVal2:addElement(registerVal11)
	registerVal2.ArenaRankAdd = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -6.000000, 10.000000)
	registerVal12:setTopBottom(true, false, -5.000000, 7.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_buttonsseparate"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.TickTL = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -349.000000, -313.000000)
	registerVal13:setTopBottom(false, false, -35.750000, -32.250000)
	registerVal13:setZRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.pixelU0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -349.000000, -313.000000)
	registerVal14:setTopBottom(false, false, 55.000000, 58.500000)
	registerVal14:setZRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image1 = registerVal14
	local registerVal15 = CoD.FE_ListHeader.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 101.900000, 269.900000)
	registerVal15:setTopBottom(true, false, 16.000000, 44.000000)
	registerVal15.btnDisplayTextStroke:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal15.btnDisplayTextStroke:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal15.btnDisplayTextStroke:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1CDE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "LobbyPlaylistName", "name", __FUNC_1CDE_)
	registerVal2:addElement(registerVal15)
	registerVal2.ListHeader = registerVal15
	local registerVal16 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal16:makeFocusable()
	registerVal16:setLeftRight(true, false, 98.900000, 252.900000)
	registerVal16:setTopBottom(true, false, 77.120000, 101.120000)
	registerVal16:setWidgetType(CoD.ArenaStar)
	registerVal16:setHorizontalCount(6.000000)
	registerVal16:setDataSource("ArenaInspectionStars")
	registerVal2:addElement(registerVal16)
	registerVal2.Stars = registerVal16
	local registerVal17 = CoD.FE_SlideSubHeader.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 101.900000, 249.000000)
	registerVal17:setTopBottom(true, false, 47.000000, 79.120000)
	local function __FUNC_1DC0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "rank", true, __FUNC_1DC0_)
	local function __FUNC_1E78_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.FELabelSubHeadingD0.Label0:setText(LocalizeToUpperString(GetArenaRankName(registerVal1)))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "arenaPoints", true, __FUNC_1E78_)
	registerVal2:addElement(registerVal17)
	registerVal2.rankText = registerVal17
	local registerVal18 = CoD.LobbySlideArenaMasterPowerRating.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 101.900000, 320.000000)
	registerVal18:setTopBottom(true, false, 79.000000, 103.000000)
	local function __FUNC_1F9A_(arg0)
		registerVal18:setModel(arg0, arg1)
	end

	registerVal18:linkToElementModel(registerVal2, nil, false, __FUNC_1F9A_)
	registerVal2:addElement(registerVal18)
	registerVal2.LobbySlideArenaMasterPowerRating = registerVal18
	local function __FUNC_1FEA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.rankIcon:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal2.ArenaRankSolid:linkToElementModel(registerVal2, "arenaPoints", true, __FUNC_1FEA_)
	registerVal16.id = "Stars"
	local function __FUNC_20DE_(arg0, arg1)
		local registerVal2 = arg0.Stars:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_20DE_)
	local function __FUNC_21DD_(arg0)
		arg0.ImagePanel:close()
		arg0.ImageBorder:close()
		arg0.ArenaRankSolid:close()
		arg0.ArenaRankAdd:close()
		arg0.ListHeader:close()
		arg0.Stars:close()
		arg0.rankText:close()
		arg0.LobbySlideArenaMasterPowerRating:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_21DD_)
	if __FUNC_53F_ then
		__FUNC_53F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LobbySlideArenaWidget.new = __FUNC_83E_
