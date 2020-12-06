-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreen_DoubleXPLabel = registerVal1
function CoD.LoadingScreen_DoubleXPLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreen_DoubleXPLabel)
	registerVal2.id = "LoadingScreen_DoubleXPLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 310.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleNumBrdr0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal4:setRGB(0.390000, 0.830000, 0.940000)
	registerVal4:setText(Engine.Localize("MENU_DOUBLE_XP"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setLetterSpacing(4.300000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8AA_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_8AA_)
	local function __FUNC_94D_(arg0, arg1)
		ScaleWidgetToLabelRightAligned(registerVal2, arg0, 10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_94D_)
	registerVal2:addElement(registerVal4)
	registerVal2.XPLabel = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9B9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_9B9_
	local function __FUNC_A1A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartLoading = __FUNC_A1A_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A7A_(arg0)
		arg0.FETitleNumBrdr0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A7A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

