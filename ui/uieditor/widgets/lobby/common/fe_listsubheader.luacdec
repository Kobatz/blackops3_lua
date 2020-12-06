-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListSubHeaderPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_ListSubHeaderGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_ListSubHeader = registerVal1
function CoD.FE_ListSubHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ListSubHeader)
	registerVal2.id = "FE_ListSubHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	local registerVal3 = CoD.FE_ListSubHeaderPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 60.000000, 408.000000)
	registerVal3:setTopBottom(true, false, 1.500000, 24.500000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setZoom(5.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEListSubHeaderPanelShaderContainer0 = registerVal3
	local registerVal4 = CoD.FE_ListSubHeaderGlow.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 60.000000, 408.000000)
	registerVal4:setTopBottom(true, false, 1.500000, 24.500000)
	registerVal4:setZoom(5.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEListSubHeaderGlow0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 65.000000, 376.330000)
	registerVal5:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setZoom(5.000000)
	registerVal5:setText(Engine.Localize("3 Playing | 18 Max"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(0.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.StringA = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 406.000000, 434.000000)
	registerVal6:setTopBottom(false, false, -13.500000, -9.500000)
	registerVal6:setYRot(-180.000000)
	registerVal6:setZoom(5.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image3 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -459.000000, -423.000000)
	registerVal7:setTopBottom(false, false, -13.250000, -9.750000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setYRot(180.000000)
	registerVal7:setZoom(5.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image4 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_CAB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListSubHeaderPanelShaderContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.StringA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_CAB_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_E7B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListSubHeaderPanelShaderContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.StringA:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_E7B_
	registerVal8.PlayerCountState = registerVal9
	registerVal9 = {}
	local function __FUNC_104B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListSubHeaderPanelShaderContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.StringA:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_104B_
	registerVal8.GroupCountState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_121B_(arg0)
		arg0.FEListSubHeaderPanelShaderContainer0:close()
		arg0.FEListSubHeaderGlow0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_121B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

