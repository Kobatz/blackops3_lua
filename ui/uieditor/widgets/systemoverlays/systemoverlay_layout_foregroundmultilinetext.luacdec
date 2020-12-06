-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Layout_ForegroundMultilineText = registerVal1
function CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Layout_ForegroundMultilineText)
	registerVal2.id = "systemOverlay_Layout_ForegroundMultilineText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 748.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 748.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_66E_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_66E_)
	local function __FUNC_711_(arg0, arg1)
		UpdateWidgetHeightToMultilineTextWithMinimum(registerVal2, arg0, 0.000000, 60.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_711_)
	registerVal2:addElement(registerVal3)
	registerVal2.text = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

