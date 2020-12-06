-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Connect_Lines")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Connect_Lines2")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Connect_Looping = registerVal1
function CoD.systemOverlay_Connect_Looping.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Connect_Looping)
	registerVal2.id = "systemOverlay_Connect_Looping"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 376.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 376.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_connect_overlays_bkg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal4 = CoD.systemOverlay_Connect_Lines.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 376.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.systemOverlayConnectLines = registerVal4
	local registerVal5 = CoD.systemOverlay_Connect_Lines2.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 376.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.systemOverlayConnectLines2 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_868_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.Image:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.systemOverlayConnectLines:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_868_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_AB1_(arg0)
		arg0.systemOverlayConnectLines:close()
		arg0.systemOverlayConnectLines2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AB1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

