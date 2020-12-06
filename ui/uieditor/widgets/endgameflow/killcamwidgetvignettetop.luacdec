-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C9_(arg0, arg1, arg2)
	arg0.imgVignetteTopL:setLeftRight(0.000000, 0.500000, 0.000000, 0.000000)
	arg0.imgVignetteTopL0:setLeftRight(0.500000, 1.000000, 0.000000, 0.000000)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.KillcamWidgetVignetteTop = registerVal2
local function __FUNC_294_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamWidgetVignetteTop)
	registerVal2.id = "KillcamWidgetVignetteTop"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 112.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -640.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -56.000000, 56.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_menu_startflow_topvignettel"))
	registerVal2:addElement(registerVal3)
	registerVal2.imgVignetteTopL = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 0.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -56.000000, 56.000000)
	registerVal4:setYRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_menu_startflow_topvignettel"))
	registerVal2:addElement(registerVal4)
	registerVal2.imgVignetteTopL0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6AC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_6AC_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if __FUNC_1C9_ then
		__FUNC_1C9_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.KillcamWidgetVignetteTop.new = __FUNC_294_
