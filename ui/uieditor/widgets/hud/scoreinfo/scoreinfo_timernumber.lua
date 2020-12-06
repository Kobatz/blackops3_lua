-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_TimerNumber = registerVal1
function CoD.ScoreInfo_TimerNumber.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_TimerNumber)
	registerVal2.id = "ScoreInfo_TimerNumber"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 83.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -41.500000, 41.500000)
	registerVal3:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(0.500000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_609_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupGameTimer()
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "GameScore", "gameTimeEnd", __FUNC_609_)
	registerVal2:addElement(registerVal3)
	registerVal2.GameTimer00 = registerVal3
	local function __FUNC_69F_(arg0)
		arg0.GameTimer00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_69F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

