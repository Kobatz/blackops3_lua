-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Heroes.chooseCharacterVignette")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizeCharacterCarouselItem_InfoPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizeCharacterCarouselItem_Internal = registerVal1
function CoD.PersonalizeCharacterCarouselItem_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.PersonalizeCharacterCarouselItem_Internal)
	registerVal2.id = "PersonalizeCharacterCarouselItem_Internal"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 816.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1283_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "background", true, __FUNC_1283_)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.chooseCharacterVignette.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.bottomRight:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4.topRight:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.chooseCharacterVignette = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -46.000000, 46.000000)
	registerVal5:setTopBottom(false, false, -250.000000, 250.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_1334_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "personalizeRender", true, __FUNC_1334_)
	registerVal2:addElement(registerVal5)
	registerVal2.apeRender = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -408.000000, 408.000000)
	registerVal6:setTopBottom(false, false, -250.000000, 250.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("extracam_2"))
	registerVal6:setShaderVector(0.000000, 0.000000, 0.000000, 1.000000, 1.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ExtraCamLiveFeed = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 30.750000, 312.000000)
	registerVal7:setTopBottom(false, false, -241.140000, 241.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_mp_hero_tempimage"))
	registerVal2:addElement(registerVal7)
	registerVal2.Silhouette = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -133.250000, 148.000000)
	registerVal8:setTopBottom(false, false, -241.140000, 241.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_mp_hero_tempimage"))
	registerVal2:addElement(registerVal8)
	registerVal2.CenteredSilhouette = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -45.000000, 771.000000)
	registerVal9:setTopBottom(false, true, -30.000000, -10.000000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_13E8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "count", true, __FUNC_13E8_)
	registerVal2:addElement(registerVal9)
	registerVal2.heroNumber = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal10:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_cac_lock_64"))
	registerVal2:addElement(registerVal10)
	registerVal2.lockImage = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 741.000000, -14.000000)
	registerVal13:setTopBottom(false, false, 219.000000, 241.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FETitleNumBrdr00 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 702.000000, 738.000000)
	registerVal14:setTopBottom(false, false, 218.000000, 221.500000)
	registerVal14:setZRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image2 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 702.000000, 738.000000)
	registerVal15:setTopBottom(false, false, 238.250000, 241.750000)
	registerVal15:setZRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image1 = registerVal15
	local registerVal16 = CoD.PersonalizeCharacterCarouselItem_InfoPanel.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 10.000000, 291.000000)
	registerVal16:setTopBottom(true, false, 10.000000, 485.750000)
	local function __FUNC_147C_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_147C_)
	registerVal2:addElement(registerVal16)
	registerVal2.infoPanel = registerVal16
	local function __FUNC_14CE_(arg0)
		arg0.chooseCharacterVignette:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FETitleNumBrdr00:close()
		arg0.infoPanel:close()
		arg0.background:close()
		arg0.apeRender:close()
		arg0.heroNumber:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_14CE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

