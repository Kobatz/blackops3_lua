-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.fe_NAT")
require("ui.uieditor.widgets.Footer.fe_RightContainer")
require("ui.uieditor.widgets.Footer.fe_LeftContainer")
require("ui.uieditor.widgets.Footer.fe_InspectionViewButton")
require("ui.uieditor.widgets.PC.Utility.StarterPackWatermark")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.fe_FooterContainer = registerVal1
function CoD.fe_FooterContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_FooterContainer)
	registerVal2.id = "fe_FooterContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.fe_NAT.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 764.000000, -312.000000)
	registerVal3:setTopBottom(false, true, -74.000000, -48.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.feNAT = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -123.000000, 131.500000)
	registerVal4:setTopBottom(false, true, -40.000000, 149.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.650000)
	registerVal2:addElement(registerVal4)
	registerVal2.blackleftBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -123.000000, 131.500000)
	registerVal5:setTopBottom(false, true, -41.850000, -37.850000)
	registerVal5:setAlpha(0.550000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.LineLeft = registerVal5
	local registerVal6 = CoD.fe_RightContainer.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -930.000000, -48.000000)
	registerVal6:setTopBottom(false, true, -65.000000, -4.000000)
	local function __FUNC_BE0_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_BE0_)
	registerVal2:addElement(registerVal6)
	registerVal2.feRightContainer = registerVal6
	local registerVal7 = CoD.fe_LeftContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 15.000000, 342.000000)
	registerVal7:setTopBottom(false, true, -36.000000, 8.000000)
	local function __FUNC_C32_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_C32_)
	registerVal2:addElement(registerVal7)
	registerVal2.feLeftContainer = registerVal7
	local registerVal8 = CoD.fe_InspectionViewButton.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -43.000000, -13.000000)
	registerVal8:setTopBottom(false, true, -35.000000, -5.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.feInspectionViewButton = registerVal8
	local registerVal9 = CoD.StarterPackWatermark.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 42.000000, 342.000000)
	registerVal9:setTopBottom(false, true, -65.000000, -48.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.StarterPackWatermark = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_C82_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_C82_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_CE2_(arg0)
		arg0.feNAT:close()
		arg0.feRightContainer:close()
		arg0.feLeftContainer:close()
		arg0.feInspectionViewButton:close()
		arg0.StarterPackWatermark:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CE2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

