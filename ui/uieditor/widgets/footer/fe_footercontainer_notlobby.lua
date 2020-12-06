-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.fe_NAT")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.Footer.fe_RightContainerWithoutRightBoxes")
require("ui.uieditor.widgets.Footer.fe_RightContainerWithHeroesHead")
require("ui.uieditor.widgets.PC.Utility.StarterPackWatermark")
local function __FUNC_34B_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_3A4_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_34B_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.fe_FooterContainer_NOTLobby = registerVal3
local function __FUNC_417_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_FooterContainer_NOTLobby)
	registerVal2.id = "fe_FooterContainer_NOTLobby"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.fe_NAT.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -177.000000, -62.000000)
	registerVal3:setTopBottom(false, true, -82.850000, -56.850000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.feNAT = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -123.000000, 131.500000)
	registerVal4:setTopBottom(false, true, -40.000000, 149.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.600000)
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
	local registerVal6 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 15.000000, 550.000000)
	registerVal6:setTopBottom(false, true, -48.000000, -4.000000)
	local function __FUNC_DF5_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_DF5_)
	registerVal2:addElement(registerVal6)
	registerVal2.feLeftContainer = registerVal6
	local registerVal7 = CoD.fe_RightContainerWithoutRightBoxes.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -902.000000, -32.000000)
	registerVal7:setTopBottom(false, true, -36.000000, -7.000000)
	local function __FUNC_E46_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_E46_)
	registerVal2:addElement(registerVal7)
	registerVal2.feRightContainerWithoutRightBoxes0 = registerVal7
	local registerVal8 = CoD.fe_RightContainerWithHeroesHead.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -853.000000, 17.000000)
	registerVal8:setTopBottom(false, true, -39.000000, -7.000000)
	registerVal8:setAlpha(0.000000)
	local function __FUNC_E96_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_E96_)
	registerVal2:addElement(registerVal8)
	registerVal2.feRightContainerWithHeroesHead = registerVal8
	local registerVal9 = CoD.StarterPackWatermark.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 42.000000, 342.000000)
	registerVal9:setTopBottom(false, true, -65.000000, -48.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.StarterPackWatermark = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_EE6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.feRightContainerWithoutRightBoxes0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.feRightContainerWithHeroesHead:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_EE6_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_106F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.feRightContainerWithoutRightBoxes0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.feRightContainerWithHeroesHead:setLeftRight(false, true, -694.000000, 176.000000)
		registerVal2.feRightContainerWithHeroesHead:setTopBottom(false, true, -39.000000, -7.000000)
		registerVal2.feRightContainerWithHeroesHead:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_106F_
	registerVal10.WithHeroesHead = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "WithHeroesHead"
	local function __FUNC_1287_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_1287_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_12D1_(arg0)
		arg0.feNAT:close()
		arg0.feLeftContainer:close()
		arg0.feRightContainerWithoutRightBoxes0:close()
		arg0.feRightContainerWithHeroesHead:close()
		arg0.StarterPackWatermark:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12D1_)
	if __FUNC_3A4_ then
		__FUNC_3A4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.fe_FooterContainer_NOTLobby.new = __FUNC_417_
