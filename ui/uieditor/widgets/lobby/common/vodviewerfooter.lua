-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VoDViewerFooter = registerVal1
function CoD.VoDViewerFooter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VoDViewerFooter)
	registerVal2.id = "VoDViewerFooter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -123.000000, 131.500000)
	registerVal3:setTopBottom(false, true, -40.000000, 149.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.blackleftBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -123.000000, 131.500000)
	registerVal4:setTopBottom(false, true, -41.850000, -37.850000)
	registerVal4:setAlpha(0.550000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.LineLeft = registerVal4
	local registerVal5 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 15.000000, 550.000000)
	registerVal5:setTopBottom(false, true, -48.000000, -4.000000)
	local function __FUNC_837_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_837_)
	registerVal2:addElement(registerVal5)
	registerVal2.feLeftContainer = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_886_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_886_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_8E6_(arg0)
		arg0.feLeftContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8E6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

