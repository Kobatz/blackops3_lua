-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.NewBreadcrumb")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.NewBreadcrumbCount = registerVal1
function CoD.NewBreadcrumbCount.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.NewBreadcrumbCount)
	registerVal2.id = "NewBreadcrumbCount"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 18.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.NewBreadcrumb.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -9.000000, 9.000000)
	registerVal3:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.breadcrumb = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 3.000000, 18.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 17.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize("5"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal4)
	registerVal2.countText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7DE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.breadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.countText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_7DE_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_935_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.breadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.countText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_935_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A8D_(arg0)
		arg0.breadcrumb:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A8D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

