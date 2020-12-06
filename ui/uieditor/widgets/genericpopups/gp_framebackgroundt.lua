-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GP_FrameBackgroundt = registerVal1
function CoD.GP_FrameBackgroundt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GP_FrameBackgroundt)
	registerVal2.id = "GP_FrameBackgroundt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 349.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 29.000000, -28.000000)
	registerVal3:setTopBottom(true, true, 1.000000, -2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 29.000000, -28.000000)
	registerVal4:setTopBottom(true, true, 1.000000, -2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETitleNumBrdr0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setYRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Pixel201000 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal6:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setYRot(-180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Pixel2010000 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -36.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Pixel2010001 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -36.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Pixel20100000 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_B8F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_B8F_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_BEE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_BEE_
	registerVal9.Content = registerVal10
	registerVal10 = {}
	local function __FUNC_C4E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_C4E_
	registerVal9.LootBonusDecal = registerVal10
	registerVal10 = {}
	local function __FUNC_CAE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_CAE_
	registerVal9.LootBonusCallingCard = registerVal10
	registerVal10 = {}
	local function __FUNC_D0E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_D0E_
	registerVal9.RecentGameBookmarked = registerVal10
	registerVal10 = {}
	local function __FUNC_D6E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_D6E_
	registerVal9.Fileshare = registerVal10
	registerVal10 = {}
	local function __FUNC_DCE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_DCE_
	registerVal9.InvitePopup = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_E2E_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.FETitleNumBrdr0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E2E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

