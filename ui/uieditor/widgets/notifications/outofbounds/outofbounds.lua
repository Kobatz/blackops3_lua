-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.OutOfBounds.outofbounds_VignetteContainer")
require("ui.uieditor.widgets.MPHudWidgets.OutOfBounds.outofbounds_scrollbarwidget")
require("ui.uieditor.widgets.MPHudWidgets.OutOfBounds.outofbounds_arrowswidget")
require("ui.uieditor.widgets.MPHudWidgets.OutOfBounds.outofbounds_sidebar")
require("ui.uieditor.widgets.MPHudWidgets.OutOfBounds.outofbounds_timerwidget")
require("ui.uieditor.widgets.MPHudWidgets.OutOfBounds.outofbounds_timerframedots")
require("ui.uieditor.widgets.MPHudWidgets.OutOfBounds.outofbounds_warningboxwidget")
require("ui.uieditor.widgets.MPHudWidgets.OutOfBounds.outofbounds_dotblinkwidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.OutOfBounds = registerVal1
function CoD.OutOfBounds.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.OutOfBounds)
	registerVal2.id = "OutOfBounds"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.outofbounds_VignetteContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 2.500000, 2.500000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setScale(1.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.outofboundsVignetteContainer = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -51.500000, 55.500000)
	registerVal4:setTopBottom(false, false, -108.000000, -60.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1622_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupEndTimer(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "HUDItems", "outOfBoundsEndTime", __FUNC_1622_)
	registerVal2:addElement(registerVal4)
	registerVal2.Timer = registerVal4
	local registerVal5 = CoD.outofbounds_scrollbarwidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 54.500000, 302.880000)
	registerVal5:setTopBottom(false, false, -101.060000, -61.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.outofboundsscrollbarwidget = registerVal5
	local registerVal6 = CoD.outofbounds_scrollbarwidget.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -300.880000, -52.500000)
	registerVal6:setTopBottom(false, false, -101.060000, -61.000000)
	registerVal6:setYRot(180.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.outofboundsscrollbarwidget0 = registerVal6
	local registerVal7 = CoD.outofbounds_scrollbarwidget.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, 53.500000, 301.880000)
	registerVal7:setTopBottom(false, false, 55.940000, 96.000000)
	registerVal7:setYRot(180.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.outofboundsscrollbarwidget1 = registerVal7
	local registerVal8 = CoD.outofbounds_scrollbarwidget.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -299.880000, -51.500000)
	registerVal8:setTopBottom(false, false, 55.940000, 96.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.outofboundsscrollbarwidget2 = registerVal8
	local registerVal9 = CoD.outofbounds_arrowswidget.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, 295.880000, 415.100000)
	registerVal9:setTopBottom(false, false, -113.000000, 105.000000)
	registerVal9:setAlpha(0.400000)
	registerVal9:setZoom(-30.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.outofboundsarrowswidget1 = registerVal9
	local registerVal10 = CoD.outofbounds_arrowswidget.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, 295.880000, 415.100000)
	registerVal10:setTopBottom(false, false, -113.000000, 105.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.outofboundsarrowswidget = registerVal10
	local registerVal11 = CoD.outofbounds_arrowswidget.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -411.930000, -292.720000)
	registerVal11:setTopBottom(false, false, -113.000000, 105.000000)
	registerVal11:setAlpha(0.400000)
	registerVal11:setYRot(180.000000)
	registerVal11:setZoom(-30.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.outofboundsarrowswidget00 = registerVal11
	local registerVal12 = CoD.outofbounds_arrowswidget.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -411.930000, -292.720000)
	registerVal12:setTopBottom(false, false, -113.000000, 105.000000)
	registerVal12:setYRot(180.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.outofboundsarrowswidget0 = registerVal12
	local registerVal13 = CoD.outofbounds_sidebar.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, 391.580000, 654.830000)
	registerVal13:setTopBottom(false, false, -17.310000, 13.500000)
	registerVal2:addElement(registerVal13)
	registerVal2.outofboundssidebar = registerVal13
	local registerVal14 = CoD.outofbounds_sidebar.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -649.670000, -386.420000)
	registerVal14:setTopBottom(false, false, -17.310000, 13.500000)
	registerVal2:addElement(registerVal14)
	registerVal2.outofboundssidebar0 = registerVal14
	local registerVal15 = CoD.outofbounds_timerwidget.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -51.500000, 55.500000)
	registerVal15:setTopBottom(false, false, -108.000000, -60.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.outofboundstimerwidget = registerVal15
	local registerVal16 = CoD.outofbounds_timerframedots.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, -53.500000, 58.500000)
	registerVal16:setTopBottom(false, false, -108.000000, -63.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.outofboundstimerframedots = registerVal16
	local registerVal17 = CoD.outofbounds_warningboxwidget.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -331.380000, 333.380000)
	registerVal17:setTopBottom(false, false, -97.230000, 92.230000)
	registerVal2:addElement(registerVal17)
	registerVal2.outofboundswarningboxwidget = registerVal17
	local registerVal18 = CoD.outofbounds_dotblinkwidget.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -2.500000, 5.500000)
	registerVal18:setTopBottom(false, false, -172.000000, -164.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.outofboundsdotblinkwidget = registerVal18
	local registerVal19 = CoD.outofbounds_dotblinkwidget.new(arg0, arg1)
	registerVal19:setLeftRight(false, false, -2.500000, 5.500000)
	registerVal19:setTopBottom(false, false, 137.000000, 145.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.outofboundsdotblinkwidget0 = registerVal19
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_16BA_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.outofboundsVignetteContainer:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.outofboundsVignetteContainer:setAlpha(0.000000)
		registerVal2.outofboundsVignetteContainer:setScale(1.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Timer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.outofboundsscrollbarwidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.outofboundsscrollbarwidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.outofboundsscrollbarwidget1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.outofboundsscrollbarwidget2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.outofboundsarrowswidget1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.outofboundsarrowswidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.outofboundsarrowswidget00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.outofboundsarrowswidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.outofboundssidebar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.outofboundssidebar0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.outofboundstimerwidget:setLeftRight(false, false, -51.500000, 55.500000)
		registerVal2.outofboundstimerwidget:setTopBottom(false, false, -108.000000, -60.000000)
		registerVal2.outofboundstimerwidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.outofboundstimerframedots:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.outofboundswarningboxwidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.outofboundsdotblinkwidget:setLeftRight(false, false, -2.500000, 5.500000)
		registerVal2.outofboundsdotblinkwidget:setTopBottom(false, false, -172.000000, -164.000000)
		registerVal2.outofboundsdotblinkwidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.outofboundsdotblinkwidget0:setLeftRight(false, false, -2.500000, 5.500000)
		registerVal2.outofboundsdotblinkwidget0:setTopBottom(false, false, 137.000000, 145.000000)
		registerVal2.outofboundsdotblinkwidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_16BA_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_1FD3_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.outofboundsVignetteContainer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.outofboundsVignetteContainer:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.outofboundsVignetteContainer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.outofboundsVignetteContainer:setAlpha(1.000000)
		registerVal2.outofboundsVignetteContainer:setScale(1.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Timer:setLeftRight(false, false, -51.500000, 55.500000)
		registerVal2.Timer:setTopBottom(false, false, -108.000000, -60.000000)
		registerVal2.Timer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.outofboundsscrollbarwidget:setLeftRight(false, false, 54.500000, 302.880000)
		registerVal2.outofboundsscrollbarwidget:setTopBottom(false, false, -101.060000, -61.000000)
		registerVal2.outofboundsscrollbarwidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.outofboundsscrollbarwidget0:setLeftRight(false, false, -300.880000, -52.500000)
		registerVal2.outofboundsscrollbarwidget0:setTopBottom(false, false, -101.060000, -61.000000)
		registerVal2.outofboundsscrollbarwidget0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.outofboundsscrollbarwidget1:setLeftRight(false, false, 53.500000, 301.880000)
		registerVal2.outofboundsscrollbarwidget1:setTopBottom(false, false, 55.940000, 96.000000)
		registerVal2.outofboundsscrollbarwidget1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.outofboundsscrollbarwidget2:setLeftRight(false, false, -299.880000, -51.500000)
		registerVal2.outofboundsscrollbarwidget2:setTopBottom(false, false, 55.940000, 96.000000)
		registerVal2.outofboundsscrollbarwidget2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.outofboundsarrowswidget1:setLeftRight(false, false, 295.880000, 415.100000)
		registerVal2.outofboundsarrowswidget1:setTopBottom(false, false, -113.000000, 105.000000)
		registerVal2.outofboundsarrowswidget1:setAlpha(0.400000)
		registerVal2.outofboundsarrowswidget1:setZoom(-30.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.outofboundsarrowswidget:setLeftRight(false, false, 295.880000, 415.100000)
		registerVal2.outofboundsarrowswidget:setTopBottom(false, false, -113.000000, 105.000000)
		registerVal2.outofboundsarrowswidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.outofboundsarrowswidget00:setLeftRight(false, false, -411.930000, -292.720000)
		registerVal2.outofboundsarrowswidget00:setTopBottom(false, false, -113.000000, 105.000000)
		registerVal2.outofboundsarrowswidget00:setAlpha(0.400000)
		registerVal2.outofboundsarrowswidget00:setZoom(-30.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.outofboundsarrowswidget0:setLeftRight(false, false, -411.930000, -292.720000)
		registerVal2.outofboundsarrowswidget0:setTopBottom(false, false, -113.000000, 105.000000)
		registerVal2.outofboundsarrowswidget0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.outofboundssidebar:setLeftRight(false, false, 391.580000, 654.830000)
		registerVal2.outofboundssidebar:setTopBottom(false, false, -17.310000, 13.500000)
		registerVal2.outofboundssidebar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.outofboundssidebar0:setLeftRight(false, false, -649.670000, -386.420000)
		registerVal2.outofboundssidebar0:setTopBottom(false, false, -17.310000, 13.500000)
		registerVal2.outofboundssidebar0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.outofboundstimerwidget:setLeftRight(false, false, -51.500000, 55.500000)
		registerVal2.outofboundstimerwidget:setTopBottom(false, false, -108.000000, -60.000000)
		registerVal2.outofboundstimerwidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.outofboundstimerframedots:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.outofboundswarningboxwidget:setLeftRight(false, false, -331.380000, 333.380000)
		registerVal2.outofboundswarningboxwidget:setTopBottom(false, false, -97.230000, 92.230000)
		registerVal2.outofboundswarningboxwidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.outofboundsdotblinkwidget:setLeftRight(false, false, -2.500000, 5.500000)
		registerVal2.outofboundsdotblinkwidget:setTopBottom(false, false, -172.000000, -164.000000)
		registerVal2.outofboundsdotblinkwidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.outofboundsdotblinkwidget0:setLeftRight(false, false, -2.500000, 5.500000)
		registerVal2.outofboundsdotblinkwidget0:setTopBottom(false, false, 137.000000, 145.000000)
		registerVal2.outofboundsdotblinkwidget0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_1FD3_
	registerVal20.IsOutOfBounds = registerVal21
	registerVal2.clipsPerState = registerVal20
	local function __FUNC_2DDA_(arg0)
		arg0.outofboundsVignetteContainer:close()
		arg0.outofboundsscrollbarwidget:close()
		arg0.outofboundsscrollbarwidget0:close()
		arg0.outofboundsscrollbarwidget1:close()
		arg0.outofboundsscrollbarwidget2:close()
		arg0.outofboundsarrowswidget1:close()
		arg0.outofboundsarrowswidget:close()
		arg0.outofboundsarrowswidget00:close()
		arg0.outofboundsarrowswidget0:close()
		arg0.outofboundssidebar:close()
		arg0.outofboundssidebar0:close()
		arg0.outofboundstimerwidget:close()
		arg0.outofboundstimerframedots:close()
		arg0.outofboundswarningboxwidget:close()
		arg0.outofboundsdotblinkwidget:close()
		arg0.outofboundsdotblinkwidget0:close()
		arg0.Timer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2DDA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

