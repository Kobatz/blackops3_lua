-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.NewBreadcrumb")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CategoryHeader = registerVal1
function CoD.CategoryHeader.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 3.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CategoryHeader)
	registerVal2.id = "CategoryHeader"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 68.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal3:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal3:setRGB(0.570000, 0.590000, 0.660000)
	registerVal3:setText(Engine.Localize("MPUI_PRIMARY_CAPS"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.header = registerVal3
	local registerVal4 = CoD.NewBreadcrumb.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 53.000000, 65.000000)
	registerVal4:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.newIcon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8B8_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8B8_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9B7_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.newIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9B7_
	registerVal5.BreadcrumbVisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_AAE_(arg0)
		arg0.newIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AAE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

