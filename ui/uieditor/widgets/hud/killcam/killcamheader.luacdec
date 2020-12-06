-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetVignetteTop")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetTitle")
require("ui.uieditor.widgets.Effects.fxGlitch1_Main")
require("ui.uieditor.widgets.HUD.Killcam.KillcamPerkIcon")
require("ui.uieditor.widgets.HUD.Killcam.KillcamKilledBy")
local function __FUNC_3AC_(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "perks")
	if registerVal3 then
		for index4=0.000000, (CoD.CACUtility.maxPerkCategories - 1.000000), 1.000000 do
			local registerVal8 = Engine.GetModel(registerVal3, ("perk" .. index4 .. "_count"))
			local registerVal9 = Engine.GetModelValue(registerVal8)
			if not registerVal9 then
			end
			for index10=0.000000, (CoD.CACUtility.maxPerksInEachCategory - 1.000000), 1.000000 do
				local registerVal14 = Engine.GetModel(registerVal3, ("perk" .. index4 .. "_" .. index10))
				local registerVal15 = Engine.GetModel(registerVal14, "image")
				local registerVal16 = Engine.GetModel(registerVal14, "name")
				if index10 < 0.000000 then
					local registerVal19 = {}
					local registerVal20 = {}
					local registerVal21 = Engine.GetModelValue(registerVal15)
					registerVal20.image = registerVal21
					registerVal19.models = registerVal20
					table.insert({}, registerVal19)
				end
			end
		end
	end
	if arg1.hasPerkSubscriptions ~= true then
		registerVal4 = Engine.GetModel(registerVal3, "anyPerkChanged")
		local function __FUNC_750_()
			arg1:updateDataSource()
		end

		arg1:subscribeToModel(registerVal4, __FUNC_750_, false)
		arg1.hasPerkSubscriptions = true
	end
	return {}
end

local registerVal2 = DataSourceHelpers.ListSetup("KillcamPerks", __FUNC_3AC_, true)
DataSources.KillcamPerks = registerVal2
registerVal2 = InheritFrom(LUI.UIElement)
CoD.KillcamHeader = registerVal2
function CoD.KillcamHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamHeader)
	registerVal2.id = "KillcamHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, 19.300000, 45.500000)
	registerVal3:setRGB(0.220000, 0.220000, 0.220000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = CoD.KillcamWidgetVignetteTop.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -64.000000, 48.000000)
	registerVal4:setAlpha(0.700000)
	registerVal2:addElement(registerVal4)
	registerVal2.KillcamWidgetVignetteTop0 = registerVal4
	local registerVal5 = CoD.KillcamWidgetTitle.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -160.000000, 160.000000)
	registerVal5:setTopBottom(true, false, 26.000000, 81.000000)
	registerVal5.KillcamText0:setText(Engine.Localize("MP_KILLCAM_CAPS"))
	registerVal2:addElement(registerVal5)
	registerVal2.KillcamWidgetTitle0 = registerVal5
	local registerVal6 = CoD.fxGlitch1_Main.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -317.500000, 239.500000)
	registerVal6:setTopBottom(true, false, -32.000000, 175.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Glitch = registerVal6
	local registerVal7 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(false, false, 265.000000, 563.000000)
	registerVal7:setTopBottom(true, false, 112.000000, 160.000000)
	registerVal7:setDataSource("KillcamPerks")
	registerVal7:setWidgetType(CoD.KillcamPerkIcon)
	registerVal7:setHorizontalCount(6.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.KillcamPerks = registerVal7
	local registerVal8 = CoD.KillcamKilledBy.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, 64.000000, 563.000000)
	registerVal8:setTopBottom(true, false, 84.500000, 109.500000)
	registerVal2:addElement(registerVal8)
	registerVal2.KillcamKilledBy = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_1579_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal5.KillcamText0:completeAnimation()
		registerVal2.KillcamWidgetTitle0.KillcamText0:setText(Engine.Localize("MP_KILLCAM_CAPS"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.KillcamPerks:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.KillcamKilledBy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1579_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_17D4_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal5.KillcamText0:completeAnimation()
		registerVal2.KillcamWidgetTitle0.KillcamText0:setText(Engine.Localize("MP_KILLCAM_CAPS"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.KillcamPerks:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.KillcamKilledBy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_17D4_
	registerVal9.Killcam = registerVal10
	registerVal10 = {}
	local function __FUNC_1A30_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal5.KillcamText0:completeAnimation()
		registerVal2.KillcamWidgetTitle0.KillcamText0:setText(Engine.Localize("MP_FINAL_KILLCAM_CAPS"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.KillcamPerks:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.KillcamKilledBy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1A30_
	registerVal9.FinalKillcam = registerVal10
	registerVal10 = {}
	local function __FUNC_1C92_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal5.KillcamText0:completeAnimation()
		registerVal2.KillcamWidgetTitle0.KillcamText0:setText(Engine.Localize("MP_ROUND_END_KILLCAM"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.KillcamPerks:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.KillcamKilledBy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1C92_
	registerVal9.RoundEndingKillcam = registerVal10
	registerVal10 = {}
	local function __FUNC_1EF1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal5.KillcamText0:completeAnimation()
		registerVal2.KillcamWidgetTitle0.KillcamText0:setText(Engine.Localize("MP_NEMESIS_KILLCAM_CAPS"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.KillcamPerks:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.KillcamKilledBy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1EF1_
	registerVal9.NemesisKillcam = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Killcam"
	local function __FUNC_2154_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
			if not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_2154_
	local registerVal13 = {}
	registerVal13.stateName = "FinalKillcam"
	local function __FUNC_233E_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		return registerVal3
	end

	registerVal13.condition = __FUNC_233E_
	local registerVal14 = {}
	registerVal14.stateName = "RoundEndingKillcam"
	local function __FUNC_240E_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		return registerVal3
	end

	registerVal14.condition = __FUNC_240E_
	local registerVal15 = {}
	registerVal15.stateName = "NemesisKillcam"
	local function __FUNC_24E2_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
		return registerVal3
	end

	registerVal15.condition = __FUNC_24E2_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_25B4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_25B4_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM))
	local function __FUNC_273D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_273D_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_28CA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_28CA_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	local function __FUNC_2A54_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_2A54_)
	local function __FUNC_2BE4_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "Killcam")
		if registerVal2 then
			local registerVal4 = {}
			registerVal4.elementName = "Glitch"
			registerVal4.clipName = "GlitchSmall2Slow"
			PlayClipOnElement(registerVal2, registerVal4, arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_2BE4_)
	registerVal7.id = "KillcamPerks"
	local function __FUNC_2CDB_(arg0, arg1)
		local registerVal2 = arg0.KillcamPerks:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2CDB_)
	local function __FUNC_2DE0_(arg0)
		arg0.KillcamWidgetVignetteTop0:close()
		arg0.KillcamWidgetTitle0:close()
		arg0.Glitch:close()
		arg0.KillcamPerks:close()
		arg0.KillcamKilledBy:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2DE0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

