-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithWarningWidget = registerVal1
function CoD.GunsmithWarningWidget.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 4.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithWarningWidget)
	registerVal2.id = "GunsmithWarningWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 703.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_error_overlays"))
	registerVal2:addElement(registerVal3)
	registerVal2.warningImage = registerVal3
	local registerVal4 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 28.000000, 638.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal4:setRGB(1.000000, 0.000000, 0.000000)
	registerVal4.text:setText(Engine.Localize("MENU_NEW"))
	registerVal2:addElement(registerVal4)
	registerVal2.warningMsg = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8C1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.warningImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.warningMsg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8C1_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A1C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.warningImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.warningMsg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A1C_
	registerVal5.Hide = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_B78_(arg0)
		arg0.warningMsg:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B78_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

