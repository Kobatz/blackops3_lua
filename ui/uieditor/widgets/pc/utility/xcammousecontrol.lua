-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C9_(arg0, arg1, arg2)
	arg0:setupXCamMouseControl()
	arg0:setHandleMouse(true)
	local function __FUNC_334_(arg0, arg1)
	end

	arg0:registerEventHandler("button_action", __FUNC_334_)
	local function __FUNC_360_(arg0, arg1)
		Engine.SetMouseCursor("xcam_cursor")
	end

	arg0:registerEventHandler("mouseenter", __FUNC_360_)
	local function __FUNC_3E1_(arg0, arg1)
		Engine.SetMouseCursor("")
	end

	arg0:registerEventHandler("mouseleave", __FUNC_3E1_)
	local function __FUNC_456_()
		Engine.SetMouseCursor("")
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_456_)
end

local function __FUNC_4CA_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_1C9_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.XCamMouseControl = registerVal3
local function __FUNC_53B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.XCamMouseControl)
	registerVal2.id = "XCamMouseControl"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -1.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.debugImage = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_860_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.debugImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_860_
	local function __FUNC_962_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.debugImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Over = __FUNC_962_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if __FUNC_4CA_ then
		__FUNC_4CA_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.XCamMouseControl.new = __FUNC_53B_
