-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_MapWidget.MapWidget_PanelVignetteGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MapWidget_PanelVignetteLeft = registerVal1
function CoD.MapWidget_PanelVignetteLeft.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MapWidget_PanelVignetteLeft)
	registerVal2.id = "MapWidget_PanelVignetteLeft"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 570.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 414.000000)
	local registerVal3 = CoD.MapWidget_PanelVignetteGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 195.460000, 672.460000)
	registerVal3:setTopBottom(true, false, 58.500000, 399.500000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZoom(1000.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.MapWidgetPanelVignetteGlow0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 571.000000, -571.000000)
	registerVal4:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal4:setRGB(0.820000, 0.820000, 0.820000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelvignette"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal4)
	registerVal2.ImgPanelCPMap = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8BE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.MapWidgetPanelVignetteGlow0:setLeftRight(true, false, 195.460000, 672.460000)
		registerVal2.MapWidgetPanelVignetteGlow0:setTopBottom(true, false, 58.500000, 399.500000)
		registerVal2.MapWidgetPanelVignetteGlow0:setAlpha(0.000000)
		registerVal2.MapWidgetPanelVignetteGlow0:setZoom(1000.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgPanelCPMap:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.ImgPanelCPMap:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8BE_
	local function __FUNC_B25_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_C8C_(arg0, arg1)
			local function __FUNC_DE4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1120.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_DE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE4_)
		end

		registerVal3:completeAnimation()
		registerVal2.MapWidgetPanelVignetteGlow0:setAlpha(0.000000)
		__FUNC_C8C_(registerVal3, {})
		local function __FUNC_F99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.820000, 0.820000, 0.820000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgPanelCPMap:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_F99_(registerVal4, {})
	end

	registerVal6.HudStart = __FUNC_B25_
	local function __FUNC_1153_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_12BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 2400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MapWidgetPanelVignetteGlow0:setAlpha(0.000000)
		__FUNC_12BD_(registerVal3, {})
		local function __FUNC_1471_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1779.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgPanelCPMap:setRGB(0.820000, 0.820000, 0.820000)
		__FUNC_1471_(registerVal4, {})
	end

	registerVal6.HudStop = __FUNC_1153_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_162B_(arg0)
		arg0.MapWidgetPanelVignetteGlow0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_162B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

