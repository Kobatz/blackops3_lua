-- Decompiled with CoDLUIDecompiler by JariK

LUI.UIGridList = {}
LUI.UIGridList.RowHeight = 70.000000
LUI.UIGridList.Spacing = 10.000000
local function __FUNC_31C_(arg0)
	for index1=1.000000, arg0.numRows, 1.000000 do
		local registerVal6 = LUI.UIHorizontalList.new()
		arg0.data[index1] = registerVal6
		arg0.data[index1]:setLeftRight(true, true, 0.000000, 0.000000)
		arg0.data[index1]:setTopBottom(true, false, ((arg0.rowHeight + arg0.spacing) * (index1 - 1.000000)), (((arg0.rowHeight + arg0.spacing) * (index1 - 1.000000)) + arg0.rowHeight))
		arg0.data[index1]:setSpacing(LUI.UIGridList.Spacing)
		arg0.data:addElement(arg0.data[index1])
	end
	local registerVal3 = {}
	registerVal3.name = "gain_focus"
	arg0.data[1.000000]:processEvent(registerVal3)
end

local function __FUNC_606_(arg0, arg1, arg2)
	local registerVal3 = LUI.UIElement.new(arg0)
	registerVal3.id = "UIGridList"
	registerVal3.numRows = arg1
	registerVal3.numCols = arg2
	registerVal3.setNumRows = LUI.UIGridList.SetNumRows
	registerVal3.setNumCols = LUI.UIGridList.SetNumCols
	registerVal3.spacing = LUI.UIGridList.Spacing
	registerVal3.rowHeight = LUI.UIGridList.RowHeight
	registerVal3.addElementToRow = LUI.UIGridList.AddElementToRow
	registerVal3.setSpacing = LUI.UIGridList.SetSpacing
	registerVal3.setGridRowHeight = LUI.UIGridList.SetGridRowHeight
	registerVal3:registerEventHandler("gain_focus", LUI.UIGridList.gainFocus)
	local registerVal4 = LUI.UIContainer.new()
	registerVal3.data = registerVal4
	registerVal3:addElement(registerVal3.data)
	if arg1 ~= nil then
		__FUNC_31C_(registerVal3)
	end
	return registerVal3
end

LUI.UIGridList.new = __FUNC_606_
local function __FUNC_9CA_(arg0, arg1)
	arg0.numRows = arg1
	__FUNC_31C_(arg0)
end

LUI.UIGridList.SetNumRows = __FUNC_9CA_
function LUI.UIGridList.SetNumCols(arg0, arg1)
	arg0.numCols = arg1
end

local function __FUNC_A55_(arg0)
	for index1=1.000000, arg0.numRows, 1.000000 do
		arg0.data[index1]:setTopBottom(true, false, ((arg0.rowHeight + arg0.spacing) * (index1 - 1.000000)), (((arg0.rowHeight + arg0.spacing) * (index1 - 1.000000)) + arg0.rowHeight))
		arg0.data[index1]:setSpacing(arg0.spacing)
	end
end

local function __FUNC_BBA_(arg0, arg1)
	arg0.spacing = arg1
	__FUNC_A55_(arg0)
end

LUI.UIGridList.SetSpacing = __FUNC_BBA_
local function __FUNC_C05_(arg0, arg1)
	arg0.rowHeight = arg1
	__FUNC_A55_(arg0)
end

LUI.UIGridList.SetGridRowHeight = __FUNC_C05_
function LUI.UIGridList.AddElementToRow(arg0, arg1, arg2)
	if arg0.numRows < arg2 or arg2 < 1.000000 then
		error("LUI Error: Invalid value for rowIndex")
	end
	local registerVal3 = arg0.data[arg2]:getNumChildren()
	if arg0.numCols < registerVal3 then
		error("LUI Error: Trying to add more children to the row than maximum.")
	end
	arg0.data[arg2][(registerVal3 + 1.000000)] = arg1
	arg0.data[arg2]:addElement(arg1)
	LUI.UIGridList.UpdateNavigation(arg0)
end

function LUI.UIGridList.UpdateNavigation(arg0)
	for index7=1.000000, arg0.numRows, 1.000000 do
		local registerVal11 = arg0.data[index7]:getNumChildren()
		if arg0.chainRows and registerVal11 ~= 0.000000 then
			arg0.data[index7][1.000000].navigation.left = nil
			arg0.data[index7][registerVal11].navigation.right = nil
		end
		if index7 == 1.000000 then
		else
			registerVal11 = arg0.data[(index7 - 1.000000)]:getNumChildren()
		end
		if index7 == arg0.numRows then
		else
			registerVal11 = arg0.data[(index7 + 1.000000)]:getNumChildren()
		end
		for index11=1.000000, arg0.numCols, 1.000000 do
			if index11 <= registerVal11 then
				if arg0.data[(index7 - 1.000000)] ~= nil and registerVal11 < index11 or not arg0.data[(index7 - 1.000000)][index11].m_focusable then
					arg0.data[index7][index11].navigation.up = nil
				else
					arg0.data[index7][index11].navigation.up = arg0.data[(index7 - 1.000000)][index11]
				end
				if arg0.data[(index7 + 1.000000)] ~= nil and registerVal11 < index11 or not arg0.data[(index7 + 1.000000)][index11].m_focusable then
					arg0.data[index7][index11].navigation.down = nil
				else
					arg0.data[index7][index11].navigation.down = arg0.data[(index7 + 1.000000)][index11]
				end
			end
		end
		if arg0.chainRows then
			if arg0.data[(index7 - 1.000000)] ~= nil and registerVal11 ~= 0.000000 then
				arg0.data[index7][1.000000].navigation.left = arg0.data[(index7 - 1.000000)][registerVal11]
			end
			if arg0.data[(index7 + 1.000000)] ~= nil and registerVal11 ~= 0.000000 then
				arg0.data[index7][registerVal11].navigation.right = arg0.data[(index7 + 1.000000)][1.000000]
			end
		end
	end
end

function LUI.UIGridList.gainFocus(arg0)
	local registerVal3 = {}
	registerVal3.name = "gain_focus"
	return arg0.data[1.000000]:processEvent(registerVal3)
end

