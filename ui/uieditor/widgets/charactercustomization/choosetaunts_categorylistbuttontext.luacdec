-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.NewBreadcrumb")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseTaunts_CategoryListButtonText = registerVal1
function CoD.ChooseTaunts_CategoryListButtonText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseTaunts_CategoryListButtonText)
	registerVal2.id = "ChooseTaunts_CategoryListButtonText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 188.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, true, 0.000000, -4.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_790_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "categoryName", true, __FUNC_790_)
	local function __FUNC_84A_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_84A_)
	registerVal2:addElement(registerVal3)
	registerVal2.Title = registerVal3
	local registerVal4 = CoD.NewBreadcrumb.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, 0.000000, 12.000000)
	registerVal4:setTopBottom(false, false, -5.000000, 7.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.newIcon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8A9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8A9_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9A7_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.newIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9A7_
	registerVal5.BreadcrumbVisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A9E_(arg0)
		arg0.newIcon:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A9E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

