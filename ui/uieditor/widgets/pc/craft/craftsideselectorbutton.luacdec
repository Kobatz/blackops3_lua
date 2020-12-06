-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D0_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	local function __FUNC_26D_(arg2, arg3)
		if arg0.turnDirection then
			local registerVal4 = {}
			registerVal4.name = "change_paintshop_view"
			registerVal4.direction = arg0.turnDirection
			registerVal4.controller = arg1
			arg0:dispatchEventToParent(registerVal4)
		end
		return true
	end

	arg0:registerEventHandler("button_action", __FUNC_26D_)
end

local function __FUNC_372_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_1D0_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.CraftSideSelectorButton = registerVal3
local function __FUNC_3E3_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CraftSideSelectorButton)
	registerVal2.id = "CraftSideSelectorButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 27.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal3:setTopBottom(true, true, 5.000000, -5.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_lui_arrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.arrow = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_761_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrow:setLeftRight(true, true, 3.000000, -3.000000)
		registerVal2.arrow:setTopBottom(true, true, 3.240000, -3.240000)
		registerVal2.arrow:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.arrow:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_761_
	local function __FUNC_921_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrow:setLeftRight(true, true, 3.000000, -3.000000)
		registerVal2.arrow:setTopBottom(true, true, 3.240000, -3.240000)
		registerVal2.arrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Over = __FUNC_921_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if __FUNC_372_ then
		__FUNC_372_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CraftSideSelectorButton.new = __FUNC_3E3_
