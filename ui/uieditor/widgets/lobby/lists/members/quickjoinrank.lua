-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.QuickJoinRank = registerVal1
function CoD.QuickJoinRank.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.QuickJoinRank)
	registerVal2.id = "QuickJoinRank"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 27.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 2.000000, -2.000000)
	local function __FUNC_74D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_74D_)
	registerVal2:addElement(registerVal3)
	registerVal2.rankIcon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, -1.000000, -23.000000)
	registerVal4:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_800_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(SetToParagonColorIfPrestigeMasterByRankForMode(188.000000, 198.000000, 201.000000, "mp", registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "rank", true, __FUNC_800_)
	local function __FUNC_8FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "rank", true, __FUNC_8FE_)
	registerVal2:addElement(registerVal4)
	registerVal2.rankText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_990_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setLeftRight(true, true, 27.000000, -2.000000)
		registerVal2.rankIcon:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.rankIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setLeftRight(true, true, -1.000000, -23.000000)
		registerVal2.rankText:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.rankText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_990_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_BC6_(arg0)
		arg0.rankIcon:close()
		arg0.rankText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BC6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

