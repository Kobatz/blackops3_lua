-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GobbleGumCookbookRemainingTime = registerVal1
function CoD.GobbleGumCookbookRemainingTime.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumCookbookRemainingTime)
	registerVal2.id = "GobbleGumCookbookRemainingTime"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setRGB(0.300000, 0.200000, 0.140000)
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_725_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(SecondsAsHourMinutesSeconds(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "GobbleGumRecipeInfo", "remainingTime", __FUNC_725_)
	registerVal2:addElement(registerVal3)
	registerVal2.remainingTime = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_80B_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_80B_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_86A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_86A_
	local function __FUNC_8CA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.StartCooking = __FUNC_8CA_
	local function __FUNC_92A_()
		registerVal2:setupElementClipCounter(0.000000)
		registerVal2.nextClip = "Cooking"
	end

	registerVal5.Cooking = __FUNC_92A_
	local function __FUNC_9B5_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.EndCooking = __FUNC_9B5_
	registerVal4.Cooking = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_A16_(arg0)
		arg0.remainingTime:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A16_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

