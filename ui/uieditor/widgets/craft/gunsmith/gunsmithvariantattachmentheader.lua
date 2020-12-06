-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithVariantAttachmentHeader = registerVal1
function CoD.GunsmithVariantAttachmentHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithVariantAttachmentHeader)
	registerVal2.id = "GunsmithVariantAttachmentHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal3:setText(Engine.Localize("MPUI_PRIMARY_CAPS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.text = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_69D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_69D_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7C7_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7C7_
	registerVal4.Focus = registerVal5
	registerVal5 = {}
	local function __FUNC_8C1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.text:setRGB(0.510000, 0.490000, 0.490000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8C1_
	registerVal4.NotFocus = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

