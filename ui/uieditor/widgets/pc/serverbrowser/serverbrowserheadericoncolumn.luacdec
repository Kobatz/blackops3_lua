-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D6_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	local function __FUNC_243_(arg1, arg2, arg3)
		arg1.ascendingSort = arg2
		arg1.descendingSort = arg3
		local function __FUNC_2F0_(arg0, arg2)
			if arg1.ascendingSort and arg1.descendingSort then
				local registerVal4 = Engine.GetGlobalModel()
				local registerVal3 = Engine.GetModel(registerVal4, "serverBrowser.serverListSortType")
				registerVal4 = Engine.GetModelValue(registerVal3)
				if registerVal3 and registerVal4 == arg1.ascendingSort then
				end
				Engine.SteamServerBrowser_Sort(arg1.descendingSort)
			end
		end

		arg0:registerEventHandler("button_action", __FUNC_2F0_)
	end

	arg0.setupSort = __FUNC_243_
end

local function __FUNC_4B3_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_1D6_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ServerBrowserHeaderIconColumn = registerVal3
local function __FUNC_523_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ServerBrowserHeaderIconColumn)
	registerVal2.id = "ServerBrowserHeaderIconColumn"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.200000, 0.200000, 0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.590000, 0.590000, 0.590000)
	registerVal2:addElement(registerVal4)
	registerVal2.icon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A94_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setRGB(0.590000, 0.590000, 0.590000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A94_
	local function __FUNC_BFB_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 0.530000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.Over = __FUNC_BFB_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_D05_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D05_
	local function __FUNC_E6B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 0.530000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Over = __FUNC_E6B_
	registerVal5.SortAscend = registerVal6
	registerVal6 = {}
	local function __FUNC_FD4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_FD4_
	local function __FUNC_113B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 0.530000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Over = __FUNC_113B_
	registerVal5.SortDescend = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "SortAscend"
	local function __FUNC_12A4_(arg0, arg1, arg2)
		return SteamServerSortMatchesHeaderAscending(arg1)
	end

	registerVal8.condition = __FUNC_12A4_
	local registerVal9 = {}
	registerVal9.stateName = "SortDescend"
	local function __FUNC_130F_(arg0, arg1, arg2)
		return SteamServerSortMatchesHeaderDescending(arg1)
	end

	registerVal9.condition = __FUNC_130F_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "serverBrowser.serverListSortType")
	local function __FUNC_1378_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "serverBrowser.serverListSortType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1378_)
	if __FUNC_4B3_ then
		__FUNC_4B3_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ServerBrowserHeaderIconColumn.new = __FUNC_523_
