-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.KillcamWidgetFctnPnlInternal = registerVal1
function CoD.KillcamWidgetFctnPnlInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamWidgetFctnPnlInternal)
	registerVal2.id = "KillcamWidgetFctnPnlInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_characterpanel"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5F9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_5F9_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

