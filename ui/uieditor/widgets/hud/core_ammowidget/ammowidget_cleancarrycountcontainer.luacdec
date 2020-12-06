-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_CleanCarryCountContainer = registerVal1
function CoD.AmmoWidget_CleanCarryCountContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_CleanCarryCountContainer)
	registerVal2.id = "AmmoWidget_CleanCarryCountContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 30.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -15.000000, 15.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setLetterSpacing(-4.000000)
	local function __FUNC_69E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "HUDItems", "cleanCarryCount", __FUNC_69E_)
	registerVal2:addElement(registerVal3)
	registerVal2.CarriedTagCount = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_756_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_756_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7B6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CarriedTagCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7B6_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hide"
	local function __FUNC_8BB_(arg0, arg1, arg2)
		local registerVal3 = IsGameTypeEqualToString("clean")
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_8BB_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_928_(arg0)
		arg0.CarriedTagCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_928_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

