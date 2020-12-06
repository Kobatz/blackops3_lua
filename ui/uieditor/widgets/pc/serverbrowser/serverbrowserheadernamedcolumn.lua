-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.horizontalScrollingTextBox_14pt")
local function __FUNC_231_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	local function __FUNC_29F_(arg1, arg2, arg3)
		arg1.ascendingSort = arg2
		arg1.descendingSort = arg3
		local function __FUNC_34C_(arg0, arg2)
			if arg1.ascendingSort and arg1.descendingSort then
				local registerVal4 = Engine.GetGlobalModel()
				local registerVal3 = Engine.GetModel(registerVal4, "serverBrowser.serverListSortType")
				registerVal4 = Engine.GetModelValue(registerVal3)
				if registerVal3 and registerVal4 == arg1.ascendingSort then
				end
				Engine.SteamServerBrowser_Sort(arg1.descendingSort)
			end
		end

		arg0:registerEventHandler("button_action", __FUNC_34C_)
	end

	arg0.setupSort = __FUNC_29F_
end

local function __FUNC_50F_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_231_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ServerBrowserHeaderNamedColumn = registerVal3
local function __FUNC_57F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ServerBrowserHeaderNamedColumn)
	registerVal2.id = "ServerBrowserHeaderNamedColumn"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.200000, 0.200000, 0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -15.000000, -3.000000)
	registerVal4:setTopBottom(true, false, 11.000000, 17.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal4)
	registerVal2.arrow = registerVal4
	local registerVal5 = CoD.horizontalScrollingTextBox_14pt.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 5.000000, -15.000000)
	registerVal5:setTopBottom(true, false, 8.000000, 22.000000)
	registerVal5.textBox:setText(Engine.Localize("MENU_NEW"))
	registerVal5.textBox:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal5.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal5)
	registerVal2.name = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_DC3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_DC3_
	local function __FUNC_F32_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 0.530000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Over = __FUNC_F32_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_10A7_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.arrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_10A7_
	local function __FUNC_1248_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 0.530000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.arrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Over = __FUNC_1248_
	registerVal6.SortAscend = registerVal7
	registerVal7 = {}
	local function __FUNC_13EC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.arrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_13EC_
	local function __FUNC_1590_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 0.530000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.arrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Over = __FUNC_1590_
	registerVal6.SortDescend = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "SortAscend"
	local function __FUNC_1739_(arg0, arg1, arg2)
		return SteamServerSortMatchesHeaderAscending(arg1)
	end

	registerVal9.condition = __FUNC_1739_
	local registerVal10 = {}
	registerVal10.stateName = "SortDescend"
	local function __FUNC_17A3_(arg0, arg1, arg2)
		return SteamServerSortMatchesHeaderDescending(arg1)
	end

	registerVal10.condition = __FUNC_17A3_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "serverBrowser.serverListSortType")
	local function __FUNC_180C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "serverBrowser.serverListSortType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_180C_)
	local function __FUNC_1942_(arg0)
		arg0.name:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1942_)
	if __FUNC_50F_ then
		__FUNC_50F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ServerBrowserHeaderNamedColumn.new = __FUNC_57F_
