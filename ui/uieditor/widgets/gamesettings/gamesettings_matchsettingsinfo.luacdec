-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_titlesecbox")
require("ui.uieditor.widgets.GameSettings.GameSettings_texbox")
local function __FUNC_279_(arg0, arg1, arg2)
	local registerVal3 = Dvar.ui_gametype:get()
	local registerVal4 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal3, "image")
	local registerVal5 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal3, "name_ref_caps")
	local registerVal6 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal3, "description")
	arg0.image:setImage(RegisterImage(registerVal4))
	arg0.GameSettingstexbox.TextBox:setText(Engine.Localize(registerVal6))
	arg0.GameSettingstitlesecbox.Textbox:setText(Engine.Localize(registerVal5))
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GameSettings_MatchSettingsInfo = registerVal2
local function __FUNC_562_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_MatchSettingsInfo)
	registerVal2.id = "GameSettings_MatchSettingsInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 489.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 321.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -3.000000, 296.380000)
	registerVal3:setTopBottom(true, false, 15.450000, 213.730000)
	registerVal3:setAlpha(0.250000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 293.380000)
	registerVal4:setTopBottom(true, false, 18.450000, 211.730000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.030000, 0.030000, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Border = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 61.690000, 231.690000)
	registerVal5:setTopBottom(true, false, 30.090000, 200.090000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_mp_icons_gamemode_graphic_groundwar"))
	registerVal2:addElement(registerVal5)
	registerVal2.image = registerVal5
	local registerVal6 = CoD.GameSettings_titlesecbox.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal6:setTopBottom(true, false, 224.000000, 252.000000)
	local function __FUNC_DB7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Textbox:setText(Engine.Localize(LocalizeToUpperString(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "GametypeSettings", "gametype", __FUNC_DB7_)
	registerVal2:addElement(registerVal6)
	registerVal2.GameSettingstitlesecbox = registerVal6
	local registerVal7 = CoD.GameSettings_texbox.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 489.000000)
	registerVal7:setTopBottom(true, false, 253.000000, 278.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.GameSettingstexbox = registerVal7
	local function __FUNC_EB2_(arg0)
		arg0.GameSettingstitlesecbox:close()
		arg0.GameSettingstexbox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EB2_)
	if __FUNC_279_ then
		__FUNC_279_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GameSettings_MatchSettingsInfo.new = __FUNC_562_
