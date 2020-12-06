-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
LUI.GridLayout = registerVal1
local function __FUNC_108C_(arg0)
	return ((arg0.gridInfoTable.gridRowIndex + arg0.gridInfoTable.gridRowSpan) - 1.000000)
end

local function __FUNC_113B_(arg0)
	return ((arg0.gridInfoTable.gridColIndex + arg0.gridInfoTable.gridColSpan) - 1.000000)
end

local function __FUNC_11E7_(arg0, arg1)
	if arg0.getWidthInList then
		return arg0:getWidthInList(arg1)
	else
		if arg0.sizeElement then
			local registerVal2, registerVal3 = arg0.sizeElement:getLocalSize()
			return registerVal2
		end
	end
	registerVal2, registerVal3 = arg0:getLocalSize()
	return registerVal2
end

local function __FUNC_12B3_(arg0, arg1)
	if arg0.getHeightInList then
		return arg0:getHeightInList(arg1)
	else
		if arg0.sizeElement then
			local registerVal2, registerVal3 = arg0.sizeElement:getLocalSize()
			return registerVal3
		end
	end
	registerVal2, registerVal3 = arg0:getLocalSize()
	return registerVal3
end

function LUI.GridLayout.new(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)
	local registerVal15 = LUI.UIElement.new()
	registerVal15:setClass(LUI.GridLayout)
	local registerVal16 = LUI.UIElement.new()
	registerVal15.itemStencil = registerVal16
	registerVal15.itemStencil:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15.itemStencil:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal15.itemStencil.anyChildUsesUpdateState = true
	registerVal15.itemStencil.id = "itemStencil"
	if arg14 then
		registerVal15.itemStencil:setUseStencil(true)
	end
	registerVal15:addElement(registerVal15.itemStencil)
	registerVal15:setForceMouseEventDispatch(true)
	registerVal15.itemStencil:setForceMouseEventDispatch(true)
	registerVal15.usingStencil = arg14
	registerVal15.menu = arg0
	registerVal15.elementStateConditions = {}
	registerVal15.m_focusable = arg2
	registerVal15.filter = arg8
	registerVal15.minimumRowHeight = arg3
	registerVal15.minimumColumnWidth = arg4
	registerVal15.hCount = 1.000000
	registerVal15.vCount = 1.000000
	registerVal15.spacing = arg5
	registerVal15.controller = arg1
	registerVal15.layoutItems = {}
	registerVal15.activeWidget = nil
	registerVal15.lastActiveWidget = nil
	registerVal15.loopEdges = false
	registerVal15:resetCurrentRowAndColumn()
	registerVal15.requestedRowCount = registerVal15.vCount
	registerVal15.requestedColumnCount = registerVal15.hCount
	registerVal15.itemCount = 0.000000
	registerVal15.customWidgetSetup = arg7
	registerVal15.scrollAnimationTime = 0.000000
	registerVal15.widgetType = nil
	registerVal15.isGridLayout = true
	registerVal15.activeWidgetInPlace = false
	registerVal15.firstElementXOffset = 0.000000
	registerVal15.firstElementYOffset = 0.000000
	registerVal15.placeMovedElementOnEnd = false
	registerVal15.anyChildUsesUpdateState = true
	registerVal15.prepared = false
	registerVal15.rowColumnIndexMap = {}
	return registerVal15
end

function LUI.GridLayout.setDataSource(arg0, arg1)
	arg0.dataSourceName = arg1
	local registerVal2 = arg0:getDataSource()
	if registerVal2 and registerVal2.prepare then
		arg0:updateDataSource()
	else
		arg0:clearLayout(true)
	end
end

function LUI.GridLayout.loopEdges(arg0, arg1)
	arg0.loopEdges = arg1
end

function LUI.GridLayout.setHorizontalCount(arg0, arg1, arg2)
	arg0.hCount = arg1
	arg0:updateDataSource(nil, arg2, true)
end

function LUI.GridLayout.setVerticalCount(arg0, arg1, arg2)
	arg0.vCount = arg1
	arg0:updateDataSource(nil, arg2, true)
end

function LUI.GridLayout.getDataSource(arg0)
	return DataSources[arg0.dataSourceName]
end

function LUI.GridLayout.setSpacing(arg0, arg1)
	if arg0.spacing ~= arg1 then
		arg0.spacing = arg1
		arg0:updateLayout(0.000000)
	end
end

function LUI.GridLayout.updateCurrentPosition(arg0, arg1, arg2)
	arg0.previousStartColumn = arg0.currentStartColumn
	arg0.previousStartRow = arg0.currentStartRow
	arg0.currentStartColumn = arg2
	arg0.currentStartRow = arg1
end

function LUI.GridLayout.setWidgetType(arg0, arg1)
	arg0.widgetType = arg1
	arg0:clearLayout(true)
end

function LUI.GridLayout.mergeStateConditions(arg0, arg1)
	arg0.elementStateConditions = {}
	LUI.GridLayout.super.mergeStateConditions(arg0, arg1, arg0.elementStateConditions)
	arg0:clearLayout(true)
	local registerVal4 = {}
	registerVal4.name = "update_state"
	registerVal4.menu = arg0.menu
	arg0:processEvent(registerVal4)
end

function LUI.GridLayout.setVerticalScrollbar(arg0, arg1)
	if arg1 and arg1.new then
		if arg0.verticalScrollbar then
			arg0.verticalScrollbar:close()
		end
		local registerVal2 = arg1.new(arg0.menu, arg0.controller)
		arg0.verticalScrollbar = registerVal2
		registerVal2, registerVal3, registerVal4, registerVal5 = arg0.verticalScrollbar:getLocalRect()
		arg0.verticalScrollbar:setTopBottom(true, true, 0.000000, 0.000000)
		arg0.verticalScrollbar:setLeftRight(false, true, 5.000000, (5.000000 + (registerVal4 - registerVal2)))
		arg0:addElement(arg0.verticalScrollbar)
	end
	arg0:updateScrollbars()
end

function LUI.GridLayout.addCustomVerticalCounter(arg0, arg1)
	if arg0.customVerticalCounter then
		return 
	end
	arg0.customVerticalCounter = arg1
	arg0:updateScrollbars()
end

function LUI.GridLayout.setVerticalCounter(arg0, arg1)
	if arg0.verticalCounter then
		arg0.verticalCounter:close()
		arg0.verticalCounter = nil
	end
	if arg1 and arg1.new then
		local registerVal2 = arg1.new(arg0.menu, arg0.controller)
		arg0.verticalCounter = registerVal2
		registerVal2, registerVal3, registerVal4, registerVal5 = arg0.verticalCounter:getLocalRect()
		arg0.verticalCounter:setLeftRight(true, true, 0.000000, 0.000000)
		arg0.verticalCounter:setTopBottom(false, true, 5.000000, (5.000000 + (registerVal5 - registerVal3)))
		arg0:addElement(arg0.verticalCounter)
	end
	arg0:updateScrollbars()
end

function LUI.GridLayout.setVerticalPips(arg0, arg1)
end

function LUI.GridLayout.setHorizontalScrollbar(arg0, arg1)
	if arg1 and arg1.new then
		if arg0.horizontalScrollbar then
			arg0.horizontalScrollbar:close()
		end
		local registerVal2 = arg1.new(arg0.menu, arg0.controller)
		arg0.horizontalScrollbar = registerVal2
		registerVal2, registerVal3, registerVal4, registerVal5 = arg0.horizontalScrollbar:getLocalRect()
		arg0.horizontalScrollbar:setLeftRight(true, true, 0.000000, 0.000000)
		arg0.horizontalScrollbar:setTopBottom(false, true, 5.000000, (5.000000 + (registerVal5 - registerVal3)))
		arg0:addElement(arg0.horizontalScrollbar)
	end
	arg0:updateScrollbars()
end

function LUI.GridLayout.addCustomHorizontalCounter(arg0, arg1)
	if arg0.customHorizontalCounter then
		return 
	end
	arg0.customHorizontalCounter = arg1
	arg0:updateScrollbars()
end

function LUI.GridLayout.setHorizontalCounter(arg0, arg1)
	if arg0.horizontalCounter then
		arg0.horizontalCounter:close()
		arg0.horizontalCounter = nil
	end
	if arg1 and arg1.new then
		local registerVal2 = arg1.new(arg0.menu, arg0.controller)
		arg0.horizontalCounter = registerVal2
		registerVal2, registerVal3, registerVal4, registerVal5 = arg0.horizontalCounter:getLocalRect()
		arg0.horizontalCounter:setLeftRight(true, true, 0.000000, 0.000000)
		arg0.horizontalCounter:setTopBottom(false, true, 5.000000, (5.000000 + (registerVal5 - registerVal3)))
		arg0:addElement(arg0.horizontalCounter)
	end
	arg0:updateScrollbars()
end

function LUI.GridLayout.setHorizontalPips(arg0, arg1)
end

local function __FUNC_2808_(arg0)
	return math.floor((arg0 + 0.500000))
end

local function __FUNC_2872_(arg0, arg1)
	if arg0.verticalScrollbar.slider.dragStartBarTop and arg0.verticalScrollbar.sliderTop < (arg0.verticalScrollbar.slider.dragStartBarTop + arg1) and ((arg0.verticalScrollbar.slider.dragStartBarTop + arg1) + arg0.verticalScrollbar.slider.barHeight) < (arg0.verticalScrollbar.sliderTop + arg0.verticalScrollbar.sliderHeight) then
		arg0.verticalScrollbar.slider:setTopBottom(true, false, (arg0.verticalScrollbar.slider.dragStartBarTop + arg1), ((arg0.verticalScrollbar.slider.dragStartBarTop + arg1) + arg0.verticalScrollbar.slider.barHeight))
		arg0.verticalScrollbar.slider.currentBarTop = (arg0.verticalScrollbar.slider.dragStartBarTop + arg1)
		local registerVal8 = __FUNC_2808_(((((arg0.verticalScrollbar.slider.dragStartBarTop + arg1) - arg0.verticalScrollbar.sliderTop) / arg0.verticalScrollbar.sliderHeight) * arg0.requestedRowCount))
		arg0.currentStartRow = (registerVal8 + 1.000000)
		arg0:updateLayout()
	end
end

LUI.GridLayout.updateLayoutBasedOnVScrollbarMovement = __FUNC_2872_
local function __FUNC_2B1C_(arg0, arg1)
	local registerVal2 = __FUNC_2808_((arg1 * arg0.requestedRowCount))
	local registerVal4 = math.min((registerVal2 + 1.000000), ((arg0.requestedRowCount - arg0.vCount) + 1.000000))
	arg0.currentStartRow = registerVal4
	arg0:updateLayout()
end

LUI.GridLayout.updateLayoutBasedOnVScrollbarPercentage = __FUNC_2B1C_
function LUI.GridLayout.scrollBarDragStart(arg0)
	arg0.scrollbarDragging = true
end

function LUI.GridLayout.scrollBarDragStop(arg0)
	arg0.scrollbarDragging = false
	arg0.verticalScrollbar.slider.dragStartBarTop = arg0.verticalScrollbar.slider.currentBarTop
end

function LUI.GridLayout.scrollUp(arg0)
	if arg0.vCount < arg0.requestedRowCount then
		local registerVal1 = math.max((arg0.currentStartRow - 1.000000), 1.000000)
		arg0.currentStartRow = registerVal1
		arg0:updateLayout()
		return true
	end
	return false
end

function LUI.GridLayout.scrollDown(arg0)
	if arg0.vCount < arg0.requestedRowCount then
		local registerVal1 = math.min((arg0.currentStartRow + 1.000000), ((arg0.requestedRowCount - arg0.vCount) + 1.000000))
		arg0.currentStartRow = registerVal1
		arg0:updateLayout()
		return true
	end
	return false
end

function LUI.GridLayout.updateScrollbars(arg0)
	local registerVal1, registerVal2 = arg0:getLocalSize()
	if arg0.verticalScrollbar then
		if arg0.requestedRowCount <= arg0.vCount then
			arg0.verticalScrollbar:close()
		else
			local registerVal3 = arg0.verticalScrollbar:getParent()
			if not registerVal3 then
				arg0:addElement(arg0.verticalScrollbar)
			end
		end
	end
	if arg0.verticalScrollbar and not arg0.scrollbarDragging then
		if arg0.requestedRowCount <= arg0.vCount then
		else
			if arg0.currentStartRow == 1.000000 and not arg0.loopEdges then
			else
				if arg0.requestedRowCount < (arg0.currentStartRow + arg0.vCount) and not arg0.loopEdges then
				end
			end
		end
		if arg0.verticalScrollbar.slider then
			if arg0.verticalScrollbar.sliderHeight == nil then
				local registerVal4, registerVal5, registerVal6, registerVal7 = arg0.verticalScrollbar.slider:getLocalRect()
				arg0.verticalScrollbar.sliderHeight = ((registerVal2 - registerVal5) + registerVal7)
				arg0.verticalScrollbar.sliderTop = registerVal5
			end
			registerVal4 = math.min((arg0.vCount / arg0.requestedRowCount), 1.000000)
			arg0.verticalScrollbar.slider:beginAnimation("update_position")
			arg0.verticalScrollbar.slider:setTopBottom(true, false, (arg0.verticalScrollbar.sliderTop + (((arg0.currentStartRow - 1.000000) / arg0.requestedRowCount) * arg0.verticalScrollbar.sliderHeight)), ((arg0.verticalScrollbar.sliderTop + (((arg0.currentStartRow - 1.000000) / arg0.requestedRowCount) * arg0.verticalScrollbar.sliderHeight)) + (registerVal4 * arg0.verticalScrollbar.sliderHeight)))
			arg0.verticalScrollbar.slider.barHeight = (registerVal4 * arg0.verticalScrollbar.sliderHeight)
			arg0.verticalScrollbar.slider.dragStartBarTop = (arg0.verticalScrollbar.sliderTop + (((arg0.currentStartRow - 1.000000) / arg0.requestedRowCount) * arg0.verticalScrollbar.sliderHeight))
		end
		arg0.verticalScrollbar:setState("AtBottom")
	end
	if arg0.horizontalScrollbar then
		if arg0.requestedColumnCount <= arg0.hCount then
		else
			if arg0.currentStartColumn == 1.000000 then
			else
				if arg0.requestedColumnCount < (arg0.currentStartColumn + arg0.hCount) then
				end
			end
		end
		if arg0.horizontalScrollbar.slider then
			if arg0.horizontalScrollbar.sliderWidth == nil then
				registerVal4, registerVal5, registerVal6, registerVal7 = arg0.horizontalScrollbar.slider:getLocalRect()
				arg0.horizontalScrollbar.sliderWidth = ((registerVal1 - registerVal4) + registerVal6)
				arg0.horizontalScrollbar.sliderLeft = registerVal4
			end
			registerVal4 = math.min((arg0.hCount / arg0.requestedColumnCount), 1.000000)
			arg0.horizontalScrollbar.slider:beginAnimation("update_position")
			arg0.horizontalScrollbar.slider:setLeftRight(true, false, (arg0.horizontalScrollbar.sliderLeft + (((arg0.currentStartColumn - 1.000000) / arg0.requestedColumnCount) * arg0.horizontalScrollbar.sliderWidth)), ((arg0.horizontalScrollbar.sliderLeft + (((arg0.currentStartColumn - 1.000000) / arg0.requestedColumnCount) * arg0.horizontalScrollbar.sliderWidth)) + (registerVal4 * arg0.horizontalScrollbar.sliderWidth)))
		end
		arg0.horizontalScrollbar:setState("AtRight")
	end
end

local function __FUNC_37FC_(arg0, arg1)
	if arg1 then
		if arg0.requestedRowCount <= arg0.vCount then
		else
			if arg0.activeWidget then
				if arg0.currentStartRow == 1.000000 then
				else
					if arg0.requestedRowCount < (arg0.currentStartRow + arg0.vCount) then
					end
				end
			end
		end
		if arg1.currentItem then
			if arg0.activeWidget then
				local registerVal4 = arg0:GetTableIndexForPosition(arg0.activeWidget.gridInfoTable.gridRowIndex, arg0.activeWidget.gridInfoTable.gridColIndex)
			end
			arg1.currentItem:setText(1.000000)
		end
		if arg1.count then
			if not arg0.itemCount then
			end
			arg1.count:setText(0.000000)
			if 0.000000 == 0.000000 and arg1.clipsPerState and arg1.clipsPerState.NoItems then
			end
		end
		arg1:setState("NoItems")
	end
end

local function __FUNC_3B8A_(arg0, arg1)
	if arg1 then
		if arg0.requestedColumnCount <= arg0.hCount then
		else
			if arg0.activeWidget then
				if arg0.activeWidget.gridInfoTable.gridColIndex == 1.000000 then
				else
					local registerVal3 = __FUNC_113B_(arg0.activeWidget)
					if arg0.requestedColumnCount <= registerVal3 then
					end
				end
			end
		end
		if arg1.currentItem then
			if arg0.activeWidget then
				local registerVal4 = arg0:GetTableIndexForPosition(arg0.activeWidget.gridInfoTable.gridRowIndex, arg0.activeWidget.gridInfoTable.gridColIndex)
			end
			arg1.currentItem:setText(1.000000)
		end
		if arg1.count then
			if not arg0.itemCount then
			end
			arg1.count:setText(0.000000)
			if 0.000000 == 0.000000 and arg1.clipsPerState and arg1.clipsPerState.NoItems then
			end
		end
		arg1:setState("NoItems")
	end
end

local function __FUNC_3F10_(arg0)
	__FUNC_37FC_(arg0, arg0.verticalCounter)
	__FUNC_37FC_(arg0, arg0.customVerticalCounter)
	__FUNC_3B8A_(arg0, arg0.horizontalCounter)
	__FUNC_3B8A_(arg0, arg0.customHorizontalCounter)
end

LUI.GridLayout.updateCounters = __FUNC_3F10_
function LUI.GridLayout.resetCurrentRowAndColumn(arg0)
	arg0.currentStartRow = 1.000000
	arg0.currentStartColumn = 1.000000
	arg0.previousStartRow = 1.000000
	arg0.previousStartColumn = 1.000000
end

function LUI.GridLayout.isWidgetSelectable(arg0, arg1)
	if arg1.internal then
		return arg1.internal:hasClip("Active")
	end
	return arg1:hasClip("Active")
end

local function __FUNC_415B_(arg0, arg1)
	if arg1.gridInfoTable.gridRowIndex < arg0.currentStartRow then
	else
		local registerVal5 = __FUNC_108C_(arg1)
		if (arg0.currentStartRow + arg0.vCount) <= registerVal5 then
			local registerVal4 = __FUNC_108C_(arg1)
		end
	end
	if arg1.gridInfoTable.gridColIndex < arg0.currentStartColumn then
	else
		registerVal5 = __FUNC_113B_(arg1)
		if (arg0.currentStartColumn + arg0.hCount) <= registerVal5 then
			registerVal4 = __FUNC_113B_(arg1)
		end
	end
	return ((registerVal4 - (arg0.currentStartRow + arg0.vCount)) + 1.000000), CoDLUIDecompiler.LuaRegister
end

LUI.GridLayout.getWidgetVisiblePosition = __FUNC_415B_
function LUI.GridLayout.setActiveItem(arg0, arg1, arg2)
	if arg0.activeWidget then
		local registerVal5 = {}
		registerVal5.name = "lose_active"
		registerVal5.controller = arg0.controller
		arg0.activeWidget:processEvent(registerVal5)
	end
	arg0.lastActiveWidget = arg0.activeWidget
	arg0.activeWidget = arg1
	if arg0.activeWidget then
		arg0.savedActiveIndex = arg0.activeWidget.gridInfoTable.zeroBasedIndex
		registerVal5 = {}
		registerVal5.name = "gain_active"
		registerVal5.controller = arg0.controller
		arg0.activeWidget:processEvent(registerVal5)
		registerVal5 = {}
		registerVal5.name = "list_active_changed"
		registerVal5.list = arg0
		local registerVal6 = arg0.activeWidget:getModel()
		registerVal5.model = registerVal6
		arg0.activeWidget:dispatchEventToParentWithSelf(registerVal5)
		if arg0.activeWidgetInPlace then
			if arg0.currentStartRow ~= arg1.gridInfoTable.gridRowIndex or arg0.currentStartColumn ~= arg1.gridInfoTable.gridColIndex then
				arg0:updateCurrentPosition(arg1.gridInfoTable.gridRowIndex, arg1.gridInfoTable.gridColIndex)
				arg0:updateLayout(arg0.scrollAnimationTime)
			else
				arg0:updateLayout(0.000000)
			else
				local registerVal3, registerVal4 = arg0:getWidgetVisiblePosition(arg1)
				arg0:updateCurrentPosition((arg0.currentStartRow + registerVal3), (arg0.currentStartColumn + registerVal4))
				if registerVal3 ~= 0.000000 or registerVal4 ~= 0.000000 then
					registerVal5 = math.abs(registerVal3)
					registerVal5 = math.abs(registerVal4)
					if registerVal5 <= 1.000000 and registerVal5 > 1.000000 or not arg0.scrollAnimationTime then
					end
					arg0:updateLayout(0.000000)
				end
			end
		end
		arg0:setModel(arg0.activeWidget:getModel())
	else
		arg0:setModel(nil)
		if arg0.hasListFocus and arg0.updateButtonPromptsWhenEmptied then
			CoD.Menu.UpdateAllButtonPrompts(arg0.menu, arg0.controller)
		end
	end
	registerVal5 = {}
	registerVal5.name = "grid_item_changed"
	registerVal5.grid = arg0
	arg0:dispatchEventToParent(registerVal5)
	arg0:updateCounters()
end

function LUI.GridLayout.clearSavedActiveIndex(arg0)
	arg0.savedActiveIndex = nil
end

function LUI.GridLayout.findItem(arg0, arg1, arg2, arg3, arg4)
	for index5=1.000000, arg0.requestedRowCount, 1.000000 do
		for index9=1.000000, arg0.requestedColumnCount, 1.000000 do
			if arg1 then
				local registerVal14 = arg0:getModelForPosition(index5, index9)
				if registerVal14 then
					local registerVal15, registerVal16, registerVal17 = pairs(arg1)
					for index18,value19 in registerVal15, registerVal16, registerVal17 do
						local registerVal20 = Engine.GetModel(registerVal14, index18)
						local registerVal21 = Engine.GetModelValue(registerVal20)
						if arg1 or registerVal21 ~= value19 then
						else
						end
					else
					end
				end
			end
			if false and arg2 then
				registerVal14 = arg0:getItemAtPosition(index5, index9, false)
				registerVal15 = arg0:getPropertiesForPosition(index5, index9)
				if registerVal15 then
					registerVal16, registerVal17, registerVal18 = pairs(arg2)
					for index19,value20 in registerVal16, registerVal17, registerVal18 do
						if registerVal15[index19] ~= value20 then
						else
						end
					else
					end
				end
			end
			if false then
				registerVal14 = arg0:getItemAtPosition(index5, index9, true)
				if arg3 then
					arg0:setActiveItem(registerVal14, arg4)
				end
				return registerVal14
			end
		end
	end
	return nil
end

function LUI.GridLayout.findVisibleItem(arg0, arg1, arg2)
	local registerVal3, registerVal4, registerVal5 = LUI.IterateTableBySortedKeys(arg0.layoutItems)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8, registerVal9, registerVal10 = LUI.IterateTableBySortedKeys(value7)
		for index11,value12 in registerVal8, registerVal9, registerVal10 do
			if arg1 then
				local registerVal14 = value12:getModel()
				if registerVal14 then
					local registerVal15, registerVal16, registerVal17 = pairs(arg1)
					for index18,value19 in registerVal15, registerVal16, registerVal17 do
						local registerVal20 = Engine.GetModel(registerVal14, index18)
						local registerVal21 = Engine.GetModelValue(registerVal20)
						if arg1 or registerVal21 ~= value19 then
						else
						end
					else
					end
				end
			end
			registerVal14, registerVal15, registerVal16 = pairs(arg2)
			for index17,value18 in registerVal14, registerVal15, registerVal16 do
				if value12[index17] ~= value18 then
				else
				end
			end
			if false then
				return value12
			end
		end
	end
	return nil
end

function LUI.GridLayout.getItemAtPosition(arg0, arg1, arg2, arg3)
	if arg0.layoutItems[arg1] then
	end
	if not arg0.layoutItems[arg1][arg2] and arg3 then
		local registerVal6 = arg0:createWidgetForPosition(arg1, arg2, arg0.currentStartRow, arg0.currentStartColumn)
	end
	return registerVal6
end

function LUI.GridLayout.setActiveIndex(arg0, arg1, arg2, arg3, arg4)
	if arg0 or not arg2 then
		return false
	end
	if arg1 >= 1.000000 and arg0.requestedRowCount >= arg1 and arg2 < 1.000000 or arg0.requestedColumnCount < arg2 then
		return false
	end
	local registerVal5 = arg0:getItemAtPosition(arg1, arg2, true)
	if registerVal5 then
		local registerVal6 = arg0:isWidgetSelectable(registerVal5)
		if not arg1 or registerVal6 then
			arg0:setActiveItem(registerVal5, arg3)
			return true
		end
	end
	return false
end

function LUI.GridLayout.getRowAndColumnForIndex(arg0, arg1)
	if arg0.vCount == 1.000000 then
	else
		local registerVal4 = math.floor((arg1 / arg0.hCount))
	end
	return (registerVal4 + 1.000000), CoDLUIDecompiler.LuaRegister
end

local function __FUNC_527E_(arg0)
	arg0.lastDirection = "left"
	if arg0.activeWidget ~= nil then
		for index3=(arg0.activeWidget.gridInfoTable.gridColIndex - 1.000000), 1.000000, -1.000000 do
			for index7=0.000000, (arg0.activeWidget.gridInfoTable.gridRowSpan - 1.000000), 1.000000 do
				local registerVal11 = arg0:getItemAtPosition((arg0.activeWidget.gridInfoTable.gridRowIndex + index7), index3, true)
				local registerVal12 = arg0:isWidgetSelectable(registerVal11)
				if registerVal11 and registerVal12 then
					arg0:setActiveItem(registerVal11)
					arg0:playSound("list_left")
					return true
				end
			end
		end
		if arg0.loopEdges and 1.000000 < arg0.hCount and 1.000000 < arg0.vCount then
			for index3=arg0.requestedColumnCount, 1.000000, -1.000000 do
				for index7=(arg0.activeWidget.gridInfoTable.gridRowIndex - 1.000000), 1.000000, -1.000000 do
					registerVal11 = arg0:getItemAtPosition(index7, index3, true)
					registerVal12 = arg0:isWidgetSelectable(registerVal11)
					if registerVal11 and registerVal12 then
						arg0:setActiveItem(registerVal11)
						arg0:playSound("list_left")
						return true
					end
				end
			end
			return false
		end
		for index3=(arg0.activeWidget.gridInfoTable.gridColIndex - 1.000000), 1.000000, -1.000000 do
			for index7=arg0.requestedRowCount, 1.000000, -1.000000 do
				registerVal11 = arg0:getItemAtPosition(index7, index3, true)
				registerVal12 = arg0:isWidgetSelectable(registerVal11)
				if registerVal11 and registerVal12 then
					arg0:setActiveItem(registerVal11)
					arg0:playSound("list_left")
					return true
				end
			end
		end
		if arg0.loopEdges then
			if arg0.hCount == 1.000000 or arg0.vCount == 1.000000 then
				local registerVal4 = __FUNC_113B_(arg0.activeWidget)
				for index3=arg0.requestedColumnCount, (registerVal4 + 1.000000), -1.000000 do
					for index7=arg0.activeWidget.gridInfoTable.gridRowIndex, 1.000000, -1.000000 do
						registerVal11 = arg0:getItemAtPosition(index7, index3, true)
						registerVal12 = arg0:isWidgetSelectable(registerVal11)
						if registerVal11 and registerVal12 then
							arg0:setActiveItem(registerVal11)
							arg0:playSound("list_left")
							return true
						end
					end
				end
				if CoD.isPC and arg0.requestedRowCount == 1.000000 and arg0.requestedColumnCount == 1.000000 then
					return true
				end
			end
		end
	end
	return false
end

LUI.GridLayout.navigateItemLeft = __FUNC_527E_
local function __FUNC_57AA_(arg0, arg1, arg2)
	local registerVal4 = __FUNC_113B_(arg0.activeWidget)
	local registerVal5 = arg0:getItemAtPosition((arg0.activeWidget.gridInfoTable.gridRowIndex + arg1), (registerVal4 + arg2), false)
	local registerVal6 = arg0:isWidgetSelectable(registerVal5)
	if arg0.activeWidget ~= nil and registerVal5 and registerVal6 then
		return registerVal5
	end
end

LUI.GridLayout.getItemAtOffset = __FUNC_57AA_
local function __FUNC_58CF_(arg0)
	arg0.lastDirection = "right"
	if arg0.activeWidget ~= nil then
		local registerVal2 = __FUNC_113B_(arg0.activeWidget)
		for index3=(registerVal2 + 1.000000), arg0.requestedColumnCount, 1.000000 do
			for index7=0.000000, (arg0.activeWidget.gridInfoTable.gridRowSpan - 1.000000), 1.000000 do
				local registerVal11 = arg0:getItemAtPosition((arg0.activeWidget.gridInfoTable.gridRowIndex + index7), index3, true)
				local registerVal12 = arg0:isWidgetSelectable(registerVal11)
				if registerVal11 and registerVal12 then
					arg0:setActiveItem(registerVal11)
					arg0:playSound("list_right")
					return true
				end
			end
		end
		if arg0.loopEdges and 1.000000 < arg0.hCount and 1.000000 < arg0.vCount then
			for index3=1.000000, arg0.requestedColumnCount, 1.000000 do
				local registerVal7 = __FUNC_108C_(arg0.activeWidget)
				for index7=(registerVal7 + 1.000000), arg0.requestedRowCount, 1.000000 do
					registerVal11 = arg0:getItemAtPosition(index7, index3, true)
					registerVal12 = arg0:isWidgetSelectable(registerVal11)
					if registerVal11 and registerVal12 then
						arg0:setActiveItem(registerVal11)
						arg0:playSound("list_right")
						return true
					end
				end
			end
			return false
		end
		for index3=(registerVal2 + 1.000000), arg0.requestedColumnCount, 1.000000 do
			for index7=arg0.requestedRowCount, 1.000000, -1.000000 do
				registerVal11 = arg0:getItemAtPosition(index7, index3, true)
				registerVal12 = arg0:isWidgetSelectable(registerVal11)
				if registerVal11 and registerVal12 then
					arg0:setActiveItem(registerVal11)
					arg0:playSound("list_right")
					return true
				end
			end
		end
		if arg0.loopEdges then
			if arg0.hCount == 1.000000 or arg0.vCount == 1.000000 then
				for index3=1.000000, (arg0.activeWidget.gridInfoTable.gridColIndex - 1.000000), 1.000000 do
					for index7=arg0.activeWidget.gridInfoTable.gridRowIndex, 1.000000, -1.000000 do
						registerVal11 = arg0:getItemAtPosition(index7, index3, true)
						registerVal12 = arg0:isWidgetSelectable(registerVal11)
						if registerVal11 and registerVal12 then
							arg0:setActiveItem(registerVal11)
							arg0:playSound("list_right")
							return true
						end
					end
				end
				if CoD.isPC and arg0.requestedRowCount == 1.000000 and arg0.requestedColumnCount == 1.000000 then
					return true
				end
			end
		end
	end
	return false
end

LUI.GridLayout.navigateItemRight = __FUNC_58CF_
local function __FUNC_5E20_(arg0)
	arg0.lastDirection = "up"
	if arg0.activeWidget ~= nil then
		for index3=(arg0.activeWidget.gridInfoTable.gridRowIndex - 1.000000), 1.000000, -1.000000 do
			for index7=0.000000, (arg0.activeWidget.gridInfoTable.gridColSpan - 1.000000), 1.000000 do
				local registerVal11 = arg0:getItemAtPosition(index3, (arg0.activeWidget.gridInfoTable.gridColIndex + index7), true)
				local registerVal12 = arg0:isWidgetSelectable(registerVal11)
				if registerVal11 and registerVal12 then
					arg0:setActiveItem(registerVal11)
					arg0:playSound("list_up")
					return true
				end
			end
		end
		for index3=(arg0.activeWidget.gridInfoTable.gridRowIndex - 1.000000), 1.000000, -1.000000 do
			for index7=arg0.requestedColumnCount, 1.000000, -1.000000 do
				registerVal11 = arg0:getItemAtPosition(index3, index7, true)
				registerVal12 = arg0:isWidgetSelectable(registerVal11)
				if registerVal11 and registerVal12 then
					arg0:setActiveItem(registerVal11)
					arg0:playSound("list_up")
					return true
				end
			end
		end
		if arg0.loopEdges then
			if arg0.hCount == 1.000000 or arg0.vCount == 1.000000 then
				local registerVal4 = __FUNC_108C_(arg0.activeWidget)
				for index3=arg0.requestedRowCount, (registerVal4 + 1.000000), -1.000000 do
					for index7=arg0.activeWidget.gridInfoTable.gridColIndex, 1.000000, -1.000000 do
						registerVal11 = arg0:getItemAtPosition(index3, index7, true)
						registerVal12 = arg0:isWidgetSelectable(registerVal11)
						if registerVal11 and registerVal12 then
							arg0:setActiveItem(registerVal11)
							arg0:playSound("list_up")
							return true
						end
					end
				end
				if CoD.isPC and arg0.requestedRowCount == 1.000000 and arg0.requestedColumnCount == 1.000000 then
					return true
				end
			end
		end
	end
	return false
end

LUI.GridLayout.navigateItemUp = __FUNC_5E20_
local function __FUNC_6286_(arg0)
	arg0.lastDirection = "down"
	if arg0.activeWidget ~= nil then
		local registerVal1 = __FUNC_108C_(arg0.activeWidget)
		for index3=(registerVal1 + 1.000000), arg0.requestedRowCount, 1.000000 do
			for index7=0.000000, (arg0.activeWidget.gridInfoTable.gridColSpan - 1.000000), 1.000000 do
				local registerVal11 = arg0:getItemAtPosition(index3, (arg0.activeWidget.gridInfoTable.gridColIndex + index7), true)
				local registerVal12 = arg0:isWidgetSelectable(registerVal11)
				if registerVal11 and registerVal12 then
					arg0:setActiveItem(registerVal11)
					arg0:playSound("list_down")
					return true
				end
			end
		end
		for index3=(registerVal1 + 1.000000), arg0.requestedRowCount, 1.000000 do
			for index7=arg0.requestedColumnCount, 1.000000, -1.000000 do
				registerVal11 = arg0:getItemAtPosition(index3, index7, true)
				registerVal12 = arg0:isWidgetSelectable(registerVal11)
				if registerVal11 and registerVal12 then
					arg0:setActiveItem(registerVal11)
					arg0:playSound("list_down")
					return true
				end
			end
		end
		if arg0.loopEdges then
			if arg0.hCount == 1.000000 or arg0.vCount == 1.000000 then
				for index3=1.000000, (arg0.activeWidget.gridInfoTable.gridRowIndex - 1.000000), 1.000000 do
					for index7=arg0.activeWidget.gridInfoTable.gridColIndex, 1.000000, -1.000000 do
						registerVal11 = arg0:getItemAtPosition(index3, index7, true)
						registerVal12 = arg0:isWidgetSelectable(registerVal11)
						if registerVal11 and registerVal12 then
							arg0:setActiveItem(registerVal11)
							arg0:playSound("list_down")
							return true
						end
					end
				end
				if CoD.isPC and arg0.requestedRowCount == 1.000000 and arg0.requestedColumnCount == 1.000000 then
					return true
				end
			end
		end
	end
	return false
end

LUI.GridLayout.navigateItemDown = __FUNC_6286_
local function __FUNC_66F6_(arg0, arg1)
	if not arg0.layoutItems[arg1] then
		return arg0.minimumRowHeight
	end
	for index3=1.000000, arg0.requestedColumnCount, 1.000000 do
		if arg0.layoutItems[arg1][index3] ~= nil then
			local registerVal8 = __FUNC_12B3_(arg0.layoutItems[arg1][index3], arg0.controller)
			if arg0.layoutItems[arg1][index3].gridInfoTable.gridRowSpan == 1.000000 then
				local registerVal9 = math.max(arg0.minimumRowHeight, registerVal8)
			else
				if arg1 == ((arg0.layoutItems[arg1][index3].gridInfoTable.gridRowIndex + arg0.layoutItems[arg1][index3].gridInfoTable.gridRowSpan) - 1.000000) then
					for index9=arg0.layoutItems[arg1][index3].gridInfoTable.gridRowIndex, ((arg0.layoutItems[arg1][index3].gridInfoTable.gridRowIndex + arg0.layoutItems[arg1][index3].gridInfoTable.gridRowSpan) - 2.000000), 1.000000 do
						local registerVal13 = arg0:getRowHeight(index9)
					end
					registerVal9 = math.max(registerVal9, ((registerVal8 - registerVal13) - arg0.spacing))
				end
			end
		end
	end
	local registerVal3 = arg0:getDataSource()
	if registerVal3 then
		local registerVal4 = registerVal3.getSpacerAfterRow(arg0, arg1, registerVal9)
		if arg1 or not registerVal4 then
		end
	end
	return (registerVal9 + 0.000000)
end

LUI.GridLayout.getRowHeight = __FUNC_66F6_
local function __FUNC_6A57_(arg0, arg1)
	for index3=1.000000, arg0.requestedRowCount, 1.000000 do
		if arg0.layoutItems[index3] and arg0.layoutItems[index3][arg1] ~= nil then
			local registerVal9 = __FUNC_11E7_(arg0.layoutItems[index3][arg1], arg0.controller)
			if arg0.layoutItems[index3][arg1].gridInfoTable.gridColSpan == 1.000000 then
				local registerVal10 = math.max(arg0.minimumColumnWidth, registerVal9)
			else
				if arg1 == ((arg0.layoutItems[index3][arg1].gridInfoTable.gridColIndex + arg0.layoutItems[index3][arg1].gridInfoTable.gridColSpan) - 1.000000) then
					for index10=arg0.layoutItems[index3][arg1].gridInfoTable.gridColIndex, ((arg0.layoutItems[index3][arg1].gridInfoTable.gridColIndex + arg0.layoutItems[index3][arg1].gridInfoTable.gridColSpan) - 2.000000), 1.000000 do
						local registerVal14 = arg0:getColumnWidth(index10)
					end
					registerVal10 = math.max(registerVal10, ((registerVal9 - registerVal14) - arg0.spacing))
				end
			end
		end
	end
	local registerVal3 = arg0:getDataSource()
	if registerVal3 then
		local registerVal4 = registerVal3.getSpacerAfterColumn(arg0, arg1, registerVal10)
		if arg1 or not registerVal4 then
		end
	end
	return (registerVal10 + 0.000000)
end

LUI.GridLayout.getColumnWidth = __FUNC_6A57_
function LUI.GridLayout.GetTableIndexForPosition(arg0, arg1, arg2)
	if arg0.rowColumnIndexMap[arg1] and arg0.rowColumnIndexMap[arg1][arg2] then
	end
	return arg0.rowColumnIndexMap[arg1][arg2].index
end

local function __FUNC_6E66_(arg0)
	if arg0.gridInfoTable.zeroBasedIndex ~= 0.000000 then
	end
	return true
end

local function __FUNC_6EF0_(arg0)
	local registerVal1 = arg0.gridInfoTable.parentGrid:getDataSource()
	local registerVal3 = registerVal1.getCount(arg0.gridInfoTable.parentGrid)
	if (arg0.gridInfoTable.zeroBasedIndex + 1.000000) ~= registerVal3 then
	end
	return true
end

local function __FUNC_700D_(arg0, arg1, arg2)
	arg0[arg1.id] = nil
	arg1.id = arg2
	arg0[arg1.id] = arg1
end

local function __FUNC_7069_(arg0, arg1, arg2, arg3, arg4, arg5)
	arg1.isFirstItem = __FUNC_6E66_
	arg1.isLastItem = __FUNC_6EF0_
	arg1.gridInfoTable = {}
	arg1.gridInfoTable.gridRowIndex = arg2
	arg1.gridInfoTable.gridColIndex = arg3
	arg1.gridInfoTable.gridRowSpan = arg4
	arg1.gridInfoTable.gridColSpan = arg5
	arg1.gridInfoTable.parentGrid = arg0
	arg1.gridInfoTable.zeroBasedIndex = ((((arg2 - 1.000000) * arg0.requestedColumnCount) + arg3) - 1.000000)
	__FUNC_700D_(arg0.itemStencil, arg1, (arg1.id .. ((((arg2 - 1.000000) * arg0.requestedColumnCount) + arg3) - 1.000000)))
end

local function __FUNC_725A_(arg0, arg1, arg2)
	local function __FUNC_73BE_(arg1, arg3, arg4)
		__FUNC_7069_(arg0, arg1, arg3, arg4, 1.000000, 1.000000)
		arg0.layoutItems[arg3][arg4] = arg1
		arg0.itemStencil:addElement(arg1)
		if arg0.customWidgetSetup then
			arg0.customWidgetSetup(arg0, arg1)
		end
		if arg2 then
			arg0:updateLayout()
		end
	end

	if 1.000000 > arg0.vCount then
	else
		if 1.000000 > arg0.hCount then
		else
			if not arg0.layoutItems[1.000000] then
				arg0.layoutItems[1.000000] = {}
			end
			if not arg0.layoutItems[1.000000][1.000000] then
				__FUNC_73BE_(arg1, 1.000000, 1.000000)
				return true
			end
		end
	end
	return false
end

LUI.GridLayout.addItemToNextAvailable = __FUNC_725A_
local function __FUNC_7504_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	if not arg7 then
	end
	if not arg8 then
	end
	if 1.000000 <= arg2 and ((arg2 + 1.000000) - 1.000000) <= arg0.requestedRowCount and 1.000000 <= arg3 and ((arg3 + 1.000000) - 1.000000) <= arg0.requestedColumnCount then
		__FUNC_7069_(arg0, arg1, arg2, arg3, 1.000000, 1.000000)
		arg0.itemStencil:addElement(arg1)
		if arg0.customWidgetSetup then
			arg0.customWidgetSetup(arg0, arg1)
		end
		for index9=arg2, ((arg2 + 1.000000) - 1.000000), 1.000000 do
			for index13=arg3, ((arg3 + 1.000000) - 1.000000), 1.000000 do
				if not arg0.layoutItems[index9] then
					arg0.layoutItems[index9] = {}
				end
				arg0.layoutItems[index9][index13] = arg1
			end
		end
		arg0:positionElementWithStart(arg1, arg5, arg6)
		if arg4 then
			arg0:updateLayout()
		end
		return true
	end
	return false
end

LUI.GridLayout.setItemAtPosition = __FUNC_7504_
function LUI.GridLayout.removeItem(arg0, arg1, arg2)
	local registerVal4, registerVal5, registerVal6 = pairs(arg0.layoutItems)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9, registerVal10, registerVal11 = pairs(value8)
		if arg1 ==  then
			value8[] = nil
		end
	end
	arg1:close()
	if true and arg2 then
		arg0:updateLayout()
	end
end

function LUI.GridLayout.getLastSelectableItem(arg0, arg1)
	for index2=arg0.requestedRowCount, 1.000000, -1.000000 do
		for index6=arg0.requestedColumnCount, 1.000000, -1.000000 do
			local registerVal10 = arg0:getItemAtPosition(index2, index6, true)
			local registerVal11 = arg0:isWidgetSelectable(registerVal10)
			if registerVal10 and registerVal11 then
				if arg1 then
					arg0:setActiveItem(registerVal10)
				end
				return registerVal10
			end
		end
	end
	return nil
end

function LUI.GridLayout.getFirstSelectableItem(arg0, arg1)
	for index2=1.000000, arg0.requestedRowCount, 1.000000 do
		for index6=1.000000, arg0.requestedColumnCount, 1.000000 do
			local registerVal10 = arg0:getItemAtPosition(index2, index6, true)
			local registerVal11 = arg0:isWidgetSelectable(registerVal10)
			if registerVal10 and registerVal11 then
				if arg1 then
					arg0:setActiveItem(registerVal10)
				end
				return registerVal10
			end
		end
	end
	return nil
end

function LUI.GridLayout.getItemAt(arg0, arg1)
	for index3=1.000000, arg0.requestedRowCount, 1.000000 do
		for index7=1.000000, arg0.requestedColumnCount, 1.000000 do
			local registerVal12 = arg0:getItemAtPosition(index3, index7, false)
			if not registerVal12 then
				local registerVal13 = arg0:getItemAtPosition(index3, index7, true)
			end
			if registerVal13 then
				if (0.000000 + 1.000000) == arg1 then
					return registerVal13
				end
				if true then
					arg0:removeItem(registerVal13, false)
				end
			end
		end
	end
	return nil
end

function LUI.GridLayout.clearLayout(arg0, arg1, arg2)
	local registerVal3, registerVal4, registerVal5 = pairs(arg0.layoutItems)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8, registerVal9, registerVal10 = pairs(value7)
		if arg1 and .gridInfoTable.gridRowIndex == index6 and .gridInfoTable.gridColIndex ==  then
			value7[]:close()
		end
		value7[] = nil
	end
	arg0.layoutItems = {}
	arg0:resetCurrentRowAndColumn()
	if arg1 then
		arg0:setActiveItem(nil, 0.000000)
	end
	if arg2 then
		arg0:updateLayout()
	end
end

local function __FUNC_7DEB_(arg0, arg1, arg2, arg3)
	if arg1.gridInfoTable.gridColIndex < arg3 then
	end
	for index8=arg3, arg1.gridInfoTable.gridColIndex, -1.000000 do
		if -1.000000 == -1.000000 or index8 ~= arg1.gridInfoTable.gridColIndex then
			local registerVal12 = arg0:getColumnWidth(index8)
		end
	end
	if arg1.gridInfoTable.gridRowIndex < arg2 then
	end
	for index10=arg2, arg1.gridInfoTable.gridRowIndex, -1.000000 do
		if -1.000000 == -1.000000 or index10 ~= arg1.gridInfoTable.gridRowIndex then
			local registerVal14 = arg0:getRowHeight(index10)
		end
	end
	local registerVal10 = __FUNC_11E7_(arg1, arg0.controller)
	local registerVal11 = __FUNC_12B3_(arg1, arg0.controller)
	arg1:beginAnimation("position")
	arg1:setLeftRight(true, false, (arg0.firstElementXOffset + (registerVal12 * -1.000000)), ((arg0.firstElementXOffset + (registerVal12 * -1.000000)) + registerVal10))
	arg1:setTopBottom(true, false, (arg0.firstElementYOffset + (registerVal14 * -1.000000)), ((arg0.firstElementYOffset + (registerVal14 * -1.000000)) + registerVal11))
end

LUI.GridLayout.positionElementWithStart = __FUNC_7DEB_
local function __FUNC_8077_(arg0, arg1)
	if arg0.originalListWidth == nil then
		local registerVal2, registerVal3, registerVal4, registerVal5 = arg0:getLocalLeftRight()
		if (registerVal2 + registerVal3) == 0.000000 then
			arg0.originalListWidth = (registerVal5 - registerVal4)
		else
			local registerVal6 = arg0:getParent()
			if registerVal2 == 0.000000 and registerVal3 == 1.000000 and registerVal6 then
				local registerVal7, registerVal8, registerVal9, registerVal10 = registerVal6:getLocalLeftRight()
				arg0.originalListWidth = (((registerVal10 - registerVal9) - registerVal4) + registerVal5)
			end
		end
	end
	registerVal5 = arg0:getDataSource()
	if not registerVal5 then
		arg0:clearLayout(true, false)
		return 
	end
	if registerVal5.prepare and not arg0.prepared then
		arg0:updateDataSource(true, true, false)
	end
	if 0.000000 < arg0.firstElementYOffset then
		for index9=(arg0.currentStartRow - 1.000000), 1.000000, -1.000000 do
			if not {}[index9] then
				for index13=1.000000, arg0.hCount, 1.000000 do
					local registerVal18 = arg0:getItemAtPosition(index9, ((arg0.currentStartColumn + index13) - 1.000000), false)
					if not registerVal18 then
						arg0:createWidgetForPosition(index9, ((arg0.currentStartColumn + index13) - 1.000000), arg0.previousStartRow, arg0.previousStartColumn)
					end
				end
				local registerVal13 = arg0:getRowHeight(index9)
				{}[index9] = registerVal13
			end
			if not {}[index9] then
			else
				if ((arg0.firstElementYOffset - arg0.spacing) - {}[index9]) <= 0.000000 then
				else
				end
			end
		end
	end
	if 0.000000 < arg0.firstElementXOffset then
		for index9=(arg0.currentStartColumn - 1.000000), 1.000000, -1.000000 do
			if not {}[index9] then
				for index13=1.000000, arg0.vCount, 1.000000 do
					registerVal18 = arg0:getItemAtPosition(((arg0.currentStartRow + index13) - 1.000000), index9, false)
					if not registerVal18 then
						arg0:createWidgetForPosition(((arg0.currentStartRow + index13) - 1.000000), index9, arg0.previousStartRow, arg0.previousStartColumn)
					end
				end
				registerVal13 = arg0:getColumnWidth(index9)
				{}[index9] = registerVal13
			end
			if not {}[index9] then
			else
				if ((arg0.firstElementXOffset - arg0.spacing) - {}[index9]) <= 0.000000 then
				else
				end
			end
		end
	end
	registerVal9 = math.min(arg0.requestedRowCount, ((index9 + arg0.vCount) - 1.000000))
	for index8=index9, registerVal9, 1.000000 do
		if not arg0.layoutItems[index8] then
			arg0.layoutItems[index8] = {}
		end
		local registerVal14 = math.min(arg0.requestedColumnCount, ((index9 + arg0.hCount) - 1.000000))
		for index13=index9, registerVal14, 1.000000 do
			if arg0.rowColumnIndexMap[index8] and arg0.rowColumnIndexMap[index8][index13] then
				if not arg0.layoutItems[index8][index13] then
					arg0:createWidgetForPosition(index8, index13, arg0.previousStartRow, arg0.previousStartColumn)
				else
					local registerVal17 = arg0:getModelForPosition(index8, index13)
					registerVal18 = arg0.layoutItems[index8][index13]:getModel()
					arg0.layoutItems[index8][index13]:setModel(registerVal17)
					if registerVal17 ~= registerVal18 and arg0.layoutItems[index8][index13] == arg0.activeWidget then
						arg0:setModel(registerVal17)
					end
					arg0:updateCustomWidgetProperties(index8, index13, arg0.layoutItems[index8][index13])
				end
			end
		end
	end
	registerVal8, registerVal9, registerVal10 = pairs(arg0.layoutItems)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		registerVal13 = arg0:getRowHeight(index11)
		{}[index11] = registerVal13
		registerVal13, registerVal14, registerVal15 = pairs(value12)
		for index16,value17 in registerVal13, registerVal14, registerVal15 do
			if not {}[index16] then
				registerVal18 = arg0:getColumnWidth(index16)
				{}[index16] = registerVal18
			end
		end
	end
	if not arg0.lastFirstVisibleRow then
	end
	if not arg0.lastFirstVisibleColumn then
	end
	local function __FUNC_9134_(arg1)
		if arg0.currentStartColumn < arg1.gridInfoTable.gridColIndex then
			for index3=arg0.currentStartColumn, (arg1.gridInfoTable.gridColIndex - 1.000000), 1.000000 do
				if not {}[index3] then
				end
			end
		else
			if arg1.gridInfoTable.gridColIndex < arg0.currentStartColumn then
				for index3=arg1.gridInfoTable.gridColIndex, (arg0.currentStartColumn - 1.000000), 1.000000 do
					if not {}[index3] then
					end
				end
			end
		end
		if arg0.currentStartRow < arg1.gridInfoTable.gridRowIndex then
			for index3=arg0.currentStartRow, (arg1.gridInfoTable.gridRowIndex - 1.000000), 1.000000 do
				if not {}[index3] then
				end
			end
		else
			if arg1.gridInfoTable.gridRowIndex < arg0.currentStartRow then
				for index3=arg1.gridInfoTable.gridRowIndex, (arg0.currentStartRow - 1.000000), 1.000000 do
					if not {}[index3] then
					end
				end
			end
		end
		return ((((arg0.firstElementXOffset + 0.000000) + arg0.spacing) - 0.000000) - arg0.spacing), CoDLUIDecompiler.LuaRegister
	end

	local function __FUNC_94D1_(arg1, arg2, arg3, arg4, arg5)
		if arg1 or not arg3 then
			return false
		end
		if arg2 or not {}[arg1.gridInfoTable.gridColIndex] then
			return false
		end
		local registerVal5 = __FUNC_108C_(arg1)
		local registerVal6 = math.min(arg0.vCount, arg0.requestedRowCount)
		registerVal5 = __FUNC_113B_(arg1)
		registerVal6 = math.min(arg0.hCount, arg0.requestedColumnCount)
		if arg2 <= registerVal5 and arg1.gridInfoTable.gridRowIndex < (arg2 + registerVal6) and arg3 <= registerVal5 and arg1.gridInfoTable.gridColIndex < (arg3 + registerVal6) then
			return true
		end
		registerVal6 = math.min(arg0.vCount, arg0.requestedRowCount)
		registerVal6 = math.min(arg0.hCount, arg0.requestedColumnCount)
		if (arg2 + registerVal6) <= arg1.gridInfoTable.gridRowIndex or (arg3 + registerVal6) <= arg1.gridInfoTable.gridColIndex then
			return false
		end
		if 0.000000 < arg0.firstElementXOffset or 0.000000 < arg0.firstElementYOffset then
			registerVal5, registerVal6 = __FUNC_9134_(arg1)
			local registerVal7 = __FUNC_11E7_(arg1, arg0.controller)
			registerVal7 = __FUNC_12B3_(arg1, arg0.controller)
			if 0.000000 < (registerVal5 + registerVal7) and 0.000000 < (registerVal6 + registerVal7) then
				return true
			end
		end
		return false
	end

	local function __FUNC_98BA_(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
		arg1:beginAnimation("layoutChange", 0.000000)
		if arg6 ~= nil then
			arg1:setAlpha(arg6)
		end
		arg1:setLeftRight(true, false, arg2, (arg2 + arg4))
		arg1:setTopBottom(true, false, arg3, (arg3 + arg5))
		if arg7 then
			local function __FUNC_9A1D_(arg1, arg2)
				if not arg2.interrupted then
					arg0:removeItem(arg1)
				end
			end

			arg1:registerEventHandler("transition_complete_layoutChange", __FUNC_9A1D_)
		else
			arg1:registerEventHandler("transition_complete_layoutChange", nil)
		end
	end

	registerVal14, registerVal15, registerVal16 = LUI.IterateTableBySortedKeys(arg0.layoutItems)
	for index17,value18 in registerVal14, registerVal15, registerVal16 do
		local registerVal19, registerVal20, registerVal21 = LUI.IterateTableBySortedKeys(value18)
		for index22,value23 in registerVal19, registerVal20, registerVal21 do
			if value23.gridInfoTable.gridRowIndex == index17 and value23.gridInfoTable.gridColIndex == index22 then
				local registerVal24 = __FUNC_11E7_(value23, arg0.controller)
				local registerVal25 = __FUNC_12B3_(value23, arg0.controller)
				if arg0.usingStencil then
				end
				local registerVal27 = __FUNC_94D1_(value23, index9, index9)
				if registerVal27 then
					registerVal27, registerVal28 = __FUNC_9134_(value23)
					local registerVal29 = Engine.IsCurrentLanguageReversed()
					if registerVal29 and arg0.hCount == 1.000000 and arg0.originalListWidth ~= nil then
						__FUNC_98BA_(value23, ((registerVal27 + arg0.originalListWidth) - registerVal24), registerVal28, registerVal24, registerVal25, 1.000000)
					else
						__FUNC_98BA_(value23, registerVal27, registerVal28, registerVal24, registerVal25, 1.000000)
					else
						registerVal27 = __FUNC_94D1_(value23, arg0.currentStartRow, arg0.currentStartColumn)
						if registerVal27 then
							if 0.000000 == 0.000000 then
								table.insert({}, value23)
							else
								registerVal27, registerVal28 = __FUNC_9134_(value23)
								registerVal29 = Engine.IsCurrentLanguageReversed()
								if registerVal29 and arg0.hCount == 1.000000 and arg0.originalListWidth ~= nil then
									__FUNC_98BA_(value23, ((registerVal27 + arg0.originalListWidth) - registerVal24), registerVal28, registerVal24, registerVal25, 1.000000, true)
								else
									__FUNC_98BA_(value23, registerVal27, registerVal28, registerVal24, registerVal25, 1.000000, true)
								else
									table.insert({}, value23)
								end
							end
						end
					end
				end
			end
		end
	end
	local function __FUNC_9A95_(arg0, arg1)
		local registerVal2, registerVal3, registerVal4 = pairs(arg1)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal7 = LuaUtils.GetTableKeyForElement(value6, arg0)
			if registerVal7 then
				return true
			end
		end
		return false
	end

	registerVal15 = arg0.itemStencil:getFirstChild()
	registerVal16 = LuaUtils.GetTableKeyForElement({}, registerVal15)
	registerVal16 = __FUNC_9A95_(registerVal15, arg0.layoutItems)
	if not registerVal16 and not registerVal16 then
		table.insert({}, registerVal15)
	end
	registerVal16 = registerVal15:getNextSibling()
	registerVal16, registerVal17, registerVal18 = ipairs({})
	for index19,value20 in registerVal16, registerVal17, registerVal18 do
		arg0:removeItem(value20)
	end
	registerVal19 = math.min(arg0.hCount, arg0.requestedColumnCount)
	for index18=1.000000, registerVal19, 1.000000 do
		if {}[((arg0.currentStartColumn + index18) - 1.000000)] then
		end
	end
	if ((0.000000 + {}[((arg0.currentStartColumn + index18) - 1.000000)]) + arg0.spacing) ~= 0.000000 then
	end
	registerVal19 = math.min(arg0.vCount, arg0.requestedRowCount)
	for index18=1.000000, registerVal19, 1.000000 do
		if {}[((arg0.currentStartRow + index18) - 1.000000)] then
		end
	end
	if ((0.000000 + {}[((arg0.currentStartRow + index18) - 1.000000)]) + arg0.spacing) ~= 0.000000 then
	end
	if not arg0.scrollbarDragging then
		arg0:setWidth((((0.000000 + {}[((arg0.currentStartColumn + index18) - 1.000000)]) + arg0.spacing) - arg0.spacing))
		arg0:setHeight((((0.000000 + {}[((arg0.currentStartRow + index18) - 1.000000)]) + arg0.spacing) - arg0.spacing))
	end
	arg0.width = (((0.000000 + {}[((arg0.currentStartColumn + index18) - 1.000000)]) + arg0.spacing) - arg0.spacing)
	arg0.height = (((0.000000 + {}[((arg0.currentStartRow + index18) - 1.000000)]) + arg0.spacing) - arg0.spacing)
	arg0.lastFirstVisibleRow = index9
	arg0.lastFirstVisibleColumn = index9
	arg0:updateScrollbars()
end

LUI.GridLayout.updateLayout = __FUNC_8077_
function LUI.GridLayout.createWidgetFromDataSource(arg0, arg1, arg2, arg3)
	if arg3 and arg3.new then
		local registerVal5 = arg3.new(arg0.menu, arg1)
	else
		if not arg0.widgetType then
			return nil
		else
			registerVal5 = type(arg0.widgetType)
			if registerVal5 == "string" then
				registerVal5 = Engine.GetModel(arg2, arg0.widgetTypeDataSource)
				local registerVal6 = LUI.getTableFromPath(Engine.GetModelValue(registerVal5))
				local registerVal7 = registerVal6.new(arg0.menu, arg1)
				registerVal5 = type(arg0.widgetType)
				if registerVal5 ~= nil and registerVal6 and registerVal6.new and registerVal5 == "table" then
					registerVal5 = arg0.widgetType.new(arg0.menu, arg1)
				end
			end
			if registerVal5 then
				registerVal5:mergeStateConditions(arg0.elementStateConditions)
				registerVal5:setAlpha(0.000000)
			end
		end
	end
	if registerVal5 ~= nil then
		arg0.itemStencil[registerVal5.id] = registerVal5
		local function __FUNC_9EE8_()
			arg0.itemStencil[registerVal5.id] = nil
		end

		LUI.OverrideFunction_CallOriginalFirst(registerVal5, "close", __FUNC_9EE8_)
	end
	return registerVal5
end

function LUI.GridLayout.getModelForIndex(arg0, arg1)
	local registerVal2 = arg0:getDataSource()
	if arg1 or not registerVal2.getCount then
		return nil
	end
	local registerVal3 = registerVal2.getCount(arg0)
	if arg1 and arg1 <= registerVal3 then
		return registerVal2.getItem(arg0.controller, arg0, arg1)
	end
	return nil
end

function LUI.GridLayout.getModelForPosition(arg0, arg1, arg2)
	local registerVal3 = arg0:GetTableIndexForPosition(arg1, arg2)
	return arg0:getModelForIndex(registerVal3)
end

function LUI.GridLayout.getPropertiesForIndex(arg0, arg1)
	local registerVal2 = arg0:getDataSource()
	if registerVal2 and arg1 or not registerVal2.getCustomPropertiesForItem then
		return nil
	end
	local registerVal3 = registerVal2.getCount(arg0)
	if arg1 <= registerVal3 then
		return registerVal2.getCustomPropertiesForItem(arg0, arg1)
	end
	return nil
end

function LUI.GridLayout.getPropertiesForPosition(arg0, arg1, arg2)
	local registerVal3 = arg0:GetTableIndexForPosition(arg1, arg2)
	return arg0:getPropertiesForIndex(registerVal3)
end

local function __FUNC_A25D_(arg0, arg1, arg2, arg3)
	if not arg3 then
		return 
	end
	local registerVal4, registerVal5, registerVal6 = ipairs(arg3.gridInfoTable.customProperties)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		arg3[value8] = nil
	end
	registerVal4 = arg0:getPropertiesForPosition(arg1, arg2)
	arg3.gridInfoTable.customProperties = {}
	registerVal5, registerVal6, registerVal7 = pairs(registerVal4)
	if value8 == "id" then
		__FUNC_700D_(arg0.itemStencil, arg3, )
	else
		arg3[value8] = 
	end
end

LUI.GridLayout.updateCustomWidgetProperties = __FUNC_A25D_
local function __FUNC_A3E8_(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg0:getDataSource()
	if arg1 or not registerVal5.getCount then
		return nil
	end
	local registerVal6 = registerVal5.getCount(arg0)
	local registerVal7 = arg0:GetTableIndexForPosition(arg1, arg2)
	if registerVal7 and registerVal7 <= registerVal6 then
		local registerVal8 = arg0:getModelForIndex(registerVal7)
		local registerVal10 = arg0:getPropertiesForPosition(arg1, arg2)
		if registerVal10 and registerVal10.customWidgetOverride then
		else
			if registerVal5.getWidgetTypeForItem then
				local registerVal11 = registerVal5.getWidgetTypeForItem(arg0, registerVal8, arg1, arg2)
			end
		end
		registerVal11 = arg0:createWidgetFromDataSource(arg0.controller, registerVal8, registerVal11)
		if registerVal11 ~= nil then
			if registerVal8 then
				registerVal11:setModel(registerVal8)
			end
			if arg1 or not registerVal10.rowSpan then
			end
			if arg1 or not registerVal10.columnSpan then
			end
			local registerVal14 = arg0:setItemAtPosition(registerVal11, arg0.rowColumnIndexMap[arg1][arg2].startRow, arg0.rowColumnIndexMap[arg1][arg2].startColumn, false, arg3, arg4, 1.000000, 1.000000)
			if not registerVal14 then
				registerVal11:close()
				return nil
			end
			arg0:updateCustomWidgetProperties(arg1, arg2, registerVal11)
			registerVal14 = Engine.GetModel(registerVal8, "customId")
			if registerVal8 and registerVal14 then
				__FUNC_700D_(arg0.itemStencil, registerVal11, Engine.GetModelValue(registerVal14))
			end
			if arg0.menuLoaded then
				local registerVal16 = {}
				registerVal16.name = "menu_loaded"
				registerVal16.menu = arg0.menu
				registerVal16.controller = arg0.controller
				registerVal11:processEvent(registerVal16)
			end
			registerVal16 = {}
			registerVal16.name = "update_state"
			registerVal16.menu = arg0.menu
			registerVal11:processEvent(registerVal16)
			if arg0.menuOpened then
				registerVal16 = {}
				registerVal16.name = "menu_opened"
				registerVal16.menu = arg0.menu
				registerVal16.controller = arg0.controller
				registerVal11:processEvent(registerVal16)
			end
			return registerVal11
		end
	end
	return nil
end

LUI.GridLayout.createWidgetForPosition = __FUNC_A3E8_
function LUI.GridLayout.updateDataSource(arg0, arg1, arg2, arg3)
	arg0.itemCount = 0.000000
	arg0.rowColumnIndexMap = {}
	local registerVal4 = arg0:getDataSource()
	if registerVal4 and arg1 or not registerVal4.getItem then
		return 
	end
	if not arg0.widgetType then
		return 
	end
	if registerVal4.prepare then
		if arg1 or not arg3 then
			arg0.prepared = true
			registerVal4.prepare(arg0.controller, arg0, arg0.filter)
		end
	end
	if 1.000000 < arg0.hCount and 1.000000 < arg0.vCount then
		local registerVal5 = registerVal4.getCount(arg0)
		arg0.itemCount = registerVal5
		arg0.requestedRowCount = 1.000000
		arg0.requestedColumnCount = 0.000000
	else
		if 1.000000 < arg0.vCount then
			registerVal5 = registerVal4.getCount(arg0)
			arg0.itemCount = registerVal5
			arg0.requestedRowCount = 0.000000
			arg0.requestedColumnCount = 1.000000
		else
			if 1.000000 <= arg0.hCount then
				registerVal5 = registerVal4.getCount(arg0)
				arg0.itemCount = registerVal5
				arg0.requestedRowCount = 1.000000
				arg0.requestedColumnCount = 0.000000
			else
				return 
			end
		end
	end
	if not arg2 then
		arg0:clearLayout(true, false)
	end
	local function __FUNC_B3A3_(arg0, arg1, arg2)
		local registerVal3 = {}
		registerVal3.index = arg0
		registerVal3.startRow = arg1
		registerVal3.startColumn = arg2
		return registerVal3
	end

	for index11=1.000000, arg0.itemCount, 1.000000 do
		local registerVal15 = arg0:getPropertiesForIndex(index11)
		if registerVal15 then
			if not nil and registerVal15.selectIndex then
				registerVal15.selectIndex = false
			end
		end
		if 1.000000 < arg0.hCount and 1.000000 < arg0.vCount then
			if arg0.hCount < ((1.000000 + 1.000000) - 1.000000) then
				if arg0.rowColumnIndexMap[(1.000000 + 1.000000)] then
				else
				end
			end
			for index20=0.000000, (1.000000 - 1.000000), 1.000000 do
				if not arg0.rowColumnIndexMap[((1.000000 + 1.000000) + index20)] then
					arg0.rowColumnIndexMap[((1.000000 + 1.000000) + index20)] = {}
				end
				for index24=0.000000, (1.000000 - 1.000000), 1.000000 do
					local registerVal30 = __FUNC_B3A3_(index11, (1.000000 + 1.000000), 1.000000)
					arg0.rowColumnIndexMap[((1.000000 + 1.000000) + index20)][(1.000000 + index24)] = registerVal30
				end
			end
			local registerVal20 = math.max(arg0.requestedColumnCount, ((1.000000 + 1.000000) - 1.000000))
			arg0.requestedColumnCount = registerVal20
			registerVal20 = math.max(arg0.requestedRowCount, (((1.000000 + 1.000000) + 1.000000) - 1.000000))
			arg0.requestedRowCount = registerVal20
		else
			if 1.000000 < arg0.vCount then
				for index20=1.000000, 1.000000, 1.000000 do
					if not arg0.rowColumnIndexMap[(1.000000 + 1.000000)] then
						arg0.rowColumnIndexMap[(1.000000 + 1.000000)] = {}
					end
					local registerVal25 = __FUNC_B3A3_(index11, (1.000000 + 1.000000), (1.000000 + 1.000000))
					arg0.rowColumnIndexMap[(1.000000 + 1.000000)][(1.000000 + 1.000000)] = registerVal25
					arg0.requestedRowCount = (1.000000 + 1.000000)
				end
			else
				if 1.000000 <= arg0.hCount then
					if not arg0.rowColumnIndexMap[((1.000000 + 1.000000) + 1.000000)] then
						arg0.rowColumnIndexMap[((1.000000 + 1.000000) + 1.000000)] = {}
					end
					for index20=1.000000, 1.000000, 1.000000 do
						registerVal25 = __FUNC_B3A3_(index11, ((1.000000 + 1.000000) + 1.000000), (1.000000 + 1.000000))
						arg0.rowColumnIndexMap[((1.000000 + 1.000000) + 1.000000)][(1.000000 + 1.000000)] = registerVal25
						arg0.requestedColumnCount = (1.000000 + 1.000000)
					end
				end
			end
		end
	end
	local registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = arg0.menu
	arg0:processEvent(registerVal13)
	if 1.000000 then
		local registerVal11 = arg0:getItemAtPosition(1.000000, 1.000000, true)
	end
	if not registerVal11 and arg0.savedActiveIndex and not arg1 then
		registerVal11, registerVal12 = arg0:getRowAndColumnForIndex(arg0.savedActiveIndex)
		registerVal13 = arg0:getItemAtPosition(registerVal11, registerVal12, true)
	end
	if not registerVal13 then
		if not arg1 or arg0.setActiveOnUpdate then
			if not arg1 then
				registerVal11 = arg0:getFirstSelectableItem()
			end
		end
	end
	if registerVal11 then
		if 1.000000 ~= nil then
		end
		arg0:setActiveItem(registerVal11, 0.000000)
	else
		arg0:updateScrollbars()
		arg0:updateCounters()
		if arg0.itemCount == 0.000000 then
			arg0:setActiveItem(nil, 0.000000)
		end
	end
	registerVal13 = {}
	registerVal13.name = "grid_updated"
	registerVal13.grid = arg0
	arg0:dispatchEventToParent(registerVal13)
	return true
end

function LUI.GridLayout.close(arg0)
	arg0:unsubscribeFromAllModels()
	arg0:clearLayout(true, false)
	local registerVal1 = arg0:getDataSource()
	LUI.GridLayout.super.close(arg0)
	if registerVal1 and registerVal1.cleanup then
		registerVal1.cleanup(arg0)
	end
end

function LUI.GridLayout.updateState(arg0, arg1)
	LUI.GridLayout.super.updateState(arg0, arg1)
	arg0:updateLayout(0.000000)
end

LUI.GridLayout:registerEventHandler("update_state", LUI.GridLayout.updateState)
function LUI.GridLayout.menuLoaded(arg0, arg1)
	arg0.menuLoaded = true
	arg0:dispatchEventToChildren(arg1)
end

LUI.GridLayout:registerEventHandler("menu_loaded", LUI.GridLayout.menuLoaded)
function LUI.GridLayout.menuOpened(arg0, arg1)
	arg0.menuOpened = true
	arg0:dispatchEventToChildren(arg1)
end

LUI.GridLayout:registerEventHandler("menu_opened", LUI.GridLayout.menuOpened)
LUI.GridLayout.setActiveOnUpdate = true
LUI.GridLayout.id = "LUIGridLayout"
