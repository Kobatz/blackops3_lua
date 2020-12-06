-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Theater.Theater_TopFramePanelCont")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Theater_TopFramePanel = registerVal1
function CoD.Theater_TopFramePanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Theater_TopFramePanel)
	registerVal2.id = "Theater_TopFramePanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 536.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 62.000000)
	local registerVal3 = CoD.Theater_TopFramePanelCont.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 575.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 61.750000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2_highquality"))
	registerVal3:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.TheaterTopFramePanelCont0 = registerVal3
	local function __FUNC_614_(arg0)
		arg0.TheaterTopFramePanelCont0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_614_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

