-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MP.MatchSettings.matchSettingsTitle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Arena_MatchSettingInfo = registerVal1
function CoD.Arena_MatchSettingInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Arena_MatchSettingInfo)
	registerVal2.id = "Arena_MatchSettingInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 460.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -6.000000, 460.000000)
	registerVal3:setTopBottom(true, false, -3.000000, 198.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 454.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 195.000000)
	registerVal4:setAlpha(0.430000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.008811, 0.020513, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Border = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 111.380000, 342.630000)
	registerVal5:setTopBottom(true, false, -14.000000, 217.250000)
	local function __FUNC_C7A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_C7A_)
	registerVal2:addElement(registerVal5)
	registerVal2.image = registerVal5
	local registerVal6 = CoD.matchSettingsTitle.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 4.000000, 522.000000)
	registerVal6:setTopBottom(false, true, -346.000000, -311.000000)
	local function __FUNC_D2C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.TitleBox.ScorestreaksLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "text", true, __FUNC_D2C_)
	registerVal2:addElement(registerVal6)
	registerVal2.TitleBox = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 4.000000, 460.000000)
	registerVal7:setTopBottom(false, true, -307.000000, -285.000000)
	registerVal7:setRGB(0.740000, 0.740000, 0.740000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setLineSpacing(0.500000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E2B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "description", true, __FUNC_E2B_)
	registerVal2:addElement(registerVal7)
	registerVal2.Description = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 1.000000, 446.000000)
	registerVal8:setTopBottom(true, false, -22.000000, -2.000000)
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_EE2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "playlistCount", true, __FUNC_EE2_)
	registerVal2:addElement(registerVal8)
	registerVal2.playlistCount = registerVal8
	local function __FUNC_F9A_(arg0)
		arg0.TitleBox:close()
		arg0.image:close()
		arg0.Description:close()
		arg0.playlistCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F9A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

