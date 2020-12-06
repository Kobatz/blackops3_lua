-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsNoConentDetail = registerVal1
function CoD.GroupsNoConentDetail.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsNoConentDetail)
	registerVal2.id = "GroupsNoConentDetail"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 270.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.040000, 0.040000, 0.050000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.Bkgd = registerVal3
	local registerVal4 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, true, -1.000000, 2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedSolid = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 12.000000, -12.000000)
	registerVal5:setTopBottom(true, true, 11.500000, -11.500000)
	registerVal5:setAlpha(0.100000)
	registerVal2:addElement(registerVal5)
	registerVal2.DescFrame = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 12.000000, -12.000000)
	registerVal6:setTopBottom(true, false, 12.000000, 34.000000)
	registerVal6:setRGB(0.500000, 0.670000, 0.240000)
	registerVal6:setAlpha(0.700000)
	registerVal2:addElement(registerVal6)
	registerVal2.HeaderBkgd = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 12.500000, 34.500000)
	registerVal7:setTopBottom(true, false, 12.000000, 34.000000)
	registerVal7:setRGB(0.030000, 0.030000, 0.030000)
	registerVal7:setImage(RegisterImage("uie_t7_icon_menu_simple_publish"))
	registerVal2:addElement(registerVal7)
	registerVal2.HeaderIcon = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 37.000000, 248.000000)
	registerVal8:setTopBottom(true, false, 8.000000, 36.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setText(Engine.Localize("GROUPS_FIND_GROUPS_CAPS"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.Header = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, true, 18.000000, -18.000000)
	registerVal9:setTopBottom(true, false, 40.000000, 62.000000)
	registerVal9:setRGB(0.550000, 0.550000, 0.550000)
	registerVal9:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_DESCRIPTION"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.Desc = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -87.720000, 91.720000)
	registerVal10:setTopBottom(true, false, -41.210000, 87.210000)
	registerVal10:setRGB(0.040000, 1.000000, 0.000000)
	registerVal10:setAlpha(0.800000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Glow2 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_D66_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Bkgd:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DescFrame:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HeaderBkgd:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Desc:setRGB(0.550000, 0.550000, 0.550000)
		registerVal2.Desc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_D66_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1101_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Bkgd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DescFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HeaderBkgd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HeaderIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Header:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1101_
	registerVal11.Hidden = registerVal12
	registerVal2.clipsPerState = registerVal11
	local function __FUNC_145A_(arg0)
		arg0.BorderBakedSolid:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_145A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

