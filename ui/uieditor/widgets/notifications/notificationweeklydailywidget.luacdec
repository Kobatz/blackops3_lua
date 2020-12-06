-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.NotificationWeeklyDailyTextWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.NotificationWeeklyDailyWidget = registerVal1
function CoD.NotificationWeeklyDailyWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.NotificationWeeklyDailyWidget)
	registerVal2.id = "NotificationWeeklyDailyWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 197.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 39.000000, -41.000000)
	registerVal3:setTopBottom(false, true, -30.000000, 0.000000)
	registerVal3:setRGB(0.240000, 0.240000, 0.240000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notif_bm_weeklydaily_backer"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.282051, 0.500000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(33.000000, 15.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.weeklydailybacker = registerVal3
	local registerVal4 = CoD.NotificationWeeklyDailyTextWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -98.500000, 98.500000)
	registerVal4:setTopBottom(false, true, -16.920000, 2.080000)
	registerVal4:setScale(0.760000)
	registerVal4.WeeklyText:setText(Engine.Localize("MPUI_BM_CONTRACT_WEEKLY"))
	local function __FUNC_900_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_900_)
	registerVal2:addElement(registerVal4)
	registerVal2.NotificationWeeklyDailyTextWidget = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_969_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.weeklydailybacker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_969_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A6C_(arg0)
		arg0.NotificationWeeklyDailyTextWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A6C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

