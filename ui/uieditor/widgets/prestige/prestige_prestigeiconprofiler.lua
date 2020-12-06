-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Prestige.Prestige_MasterTierWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Prestige_PrestigeIconProfiler = registerVal1
function CoD.Prestige_PrestigeIconProfiler.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Prestige_PrestigeIconProfiler)
	registerVal2.id = "Prestige_PrestigeIconProfiler"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 300.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -31.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -31.500000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.400000)
	registerVal2:addElement(registerVal4)
	registerVal2.TitleBG = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 8.000000, 150.000000)
	registerVal5:setTopBottom(false, true, -30.000000, 0.000000)
	registerVal5:setText(Engine.Localize("MPUI_PRESTIGE_N"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.IconTitle = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, 0.000000, 142.000000)
	registerVal6:setTopBottom(false, true, -27.750000, -3.750000)
	registerVal6:setRGB(0.920000, 0.800000, 0.310000)
	registerVal6:setText(Engine.Localize("MPUI_ALLIES_SHORT"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.GameTitle = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 8.000000, -8.000000)
	registerVal7:setTopBottom(false, true, 3.000000, 22.000000)
	registerVal7:setText(Engine.Localize("PERKS_UNLOCKED_AT_LV"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Description = registerVal7
	local registerVal8 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -85.000000, 90.000000)
	registerVal8:setTopBottom(true, false, 178.000000, 206.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.PrestigeMasterBG = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -85.000000, 90.000000)
	registerVal9:setTopBottom(true, false, 181.000000, 203.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setText(Engine.Localize("MENU_MASTER"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal9:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setLetterSpacing(1.000000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_147B_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal9, "setText", __FUNC_147B_)
	registerVal2:addElement(registerVal9)
	registerVal2.PrestigeMasterText = registerVal9
	local registerVal10 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -85.000000, 90.000000)
	registerVal10:setTopBottom(true, false, 208.000000, 242.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.RankTextBorder = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, -81.000000, 90.000000)
	registerVal11:setTopBottom(true, false, 208.000000, 242.000000)
	registerVal11:setRGB(0.580000, 0.640000, 0.650000)
	registerVal11:setText(Engine.Localize("LEVEL 1000"))
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.RankText = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -77.000000, 83.000000)
	registerVal12:setTopBottom(true, false, 16.000000, 176.000000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.LockBG = registerVal12
	local registerVal13 = CoD.cac_lock.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -61.000000, 67.000000)
	registerVal13:setTopBottom(true, false, 32.000000, 160.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13.lockedIcon:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.LockIcon = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -77.000000, 83.000000)
	registerVal14:setTopBottom(true, false, 16.000000, 176.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.PrestigeIcon = registerVal14
	local registerVal15 = CoD.Prestige_MasterTierWidget.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -95.000000, 100.000000)
	registerVal15:setTopBottom(true, false, 241.000000, 265.000000)
	registerVal15:setScale(0.900000)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Visible"
	local function __FUNC_14D9_(arg0, arg2, arg3)
		return IsMaxPrestigeLevel(arg1)
	end

	registerVal19.condition = __FUNC_14D9_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal2:addElement(registerVal15)
	registerVal2.PrestigeMasterTierWidget = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1530_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal12:completeAnimation()
		registerVal2.LockBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.PrestigeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal17.DefaultClip = __FUNC_1530_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_16E3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal12:completeAnimation()
		registerVal2.LockBG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LockIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.PrestigeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal17.DefaultClip = __FUNC_16E3_
	registerVal16.Locked = registerVal17
	registerVal2.clipsPerState = registerVal16
	local function __FUNC_1893_(arg0)
		arg0.PrestigeMasterBG:close()
		arg0.RankTextBorder:close()
		arg0.LockIcon:close()
		arg0.PrestigeMasterTierWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1893_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

