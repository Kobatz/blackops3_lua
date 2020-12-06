-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Theater.Theater_BottomFramePanelCont")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Theater_BottomFramePanel = registerVal1
function CoD.Theater_BottomFramePanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Theater_BottomFramePanel)
	registerVal2.id = "Theater_BottomFramePanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 494.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 62.000000)
	local registerVal3 = CoD.Theater_BottomFramePanelCont.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -21.000000, 493.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 61.750000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2_highquality"))
	registerVal3:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.TheaterBottomFramePanelCont0 = registerVal3
	local function __FUNC_62A_(arg0)
		arg0.TheaterBottomFramePanelCont0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_62A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

