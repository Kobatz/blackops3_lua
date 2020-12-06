-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LeaderboardHeader_ColumnText = registerVal1
function CoD.LeaderboardHeader_ColumnText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LeaderboardHeader_ColumnText)
	registerVal2.id = "LeaderboardHeader_ColumnText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 94.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 93.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setRGB(0.640000, 0.640000, 0.640000)
	registerVal3:setText(Engine.Localize("8888888888"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_745_(arg0, arg1)
		local registerVal2 = IsTextWrapping(registerVal2, arg0)
		if registerVal2 then
			SetState(registerVal2, "ColumnTextWrapped")
		else
			registerVal2 = IsTextWrapping(registerVal2, arg0)
			if not registerVal2 then
				SetState(registerVal2, "DefaultState")
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_745_)
	registerVal2:addElement(registerVal3)
	registerVal2.ColumnText = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_81F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_81F_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_87E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ColumnText:setLeftRight(true, false, 0.000000, 93.500000)
		registerVal2.ColumnText:setTopBottom(true, false, -10.000000, 6.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_87E_
	registerVal4.ColumnTextWrapped = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "ColumnTextWrapped"
	local function __FUNC_9DB_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "ColumnTextWrapped")
	end

	registerVal7.condition = __FUNC_9DB_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

