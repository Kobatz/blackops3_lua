-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CPLevels.CPMissionInfo")
require("ui.uieditor.widgets.CPLevels.CP_FrameBox")
require("ui.uieditor.widgets.CPLevels.CPMissionTitle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CPSelectPublicGameInfo = registerVal1
function CoD.CPSelectPublicGameInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CPSelectPublicGameInfo)
	registerVal2.id = "CPSelectPublicGameInfo"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 869.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 417.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CPMissionInfo.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 869.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 417.000000)
	registerVal3.CPMissionTitle:setAlpha(0.000000)
	local function __FUNC_D64_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setAlpha(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "mapInfoVis", true, __FUNC_D64_)
	local function __FUNC_DF9_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_DF9_)
	registerVal2:addElement(registerVal3)
	registerVal2.CPMissionInfo = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 587.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 279.880000)
	local function __FUNC_E4A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "Image", true, __FUNC_E4A_)
	registerVal2:addElement(registerVal4)
	registerVal2.InfoImage = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 35.000000, 587.000000)
	registerVal5:setTopBottom(true, false, 350.000000, 372.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_EFC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "infoText", true, __FUNC_EFC_)
	registerVal2:addElement(registerVal5)
	registerVal2.InfoText = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 6.000000, 578.000000)
	registerVal6:setTopBottom(true, false, 253.880000, 273.880000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_FB6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "playerCountText", true, __FUNC_FB6_)
	registerVal2:addElement(registerVal6)
	registerVal2.PlayerCount = registerVal6
	local registerVal7 = CoD.CP_FrameBox.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 587.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 281.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.CPFrameBox = registerVal7
	local registerVal8 = CoD.CPMissionTitle.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -4.450000, 537.550000)
	registerVal8:setTopBottom(true, false, 290.780000, 339.780000)
	registerVal8.BriefingHeading:setText(Engine.Localize("MENU_COOPERATIVE_CAMPAIGN_MISSION"))
	registerVal2:addElement(registerVal8)
	registerVal2.CPMissionTitle = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_106E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_106E_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_10CE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.InfoText:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.CPMissionTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_10CE_
	registerVal9.AnyMission = registerVal10
	registerVal10 = {}
	local function __FUNC_122D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.CPMissionTitle:completeAnimation()
		registerVal2.CPMissionInfo.CPMissionTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.InfoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.CPMissionTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_122D_
	registerVal9.CurrentMission = registerVal10
	registerVal10 = {}
	local function __FUNC_140C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.InfoText:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.CPMissionTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_140C_
	registerVal9.SpecificMission = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "AnyMission"
	local function __FUNC_156D_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "anyMission")
	end

	registerVal12.condition = __FUNC_156D_
	local registerVal13 = {}
	registerVal13.stateName = "CurrentMission"
	local function __FUNC_15F7_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "currentMission")
	end

	registerVal13.condition = __FUNC_15F7_
	local registerVal14 = {}
	registerVal14.stateName = "SpecificMission"
	local function __FUNC_1683_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "specificMission")
	end

	registerVal14.condition = __FUNC_1683_
	registerVal11 = {registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_1710_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "type"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "type", true, __FUNC_1710_)
	local function __FUNC_182A_(arg0)
		arg0.CPMissionInfo:close()
		arg0.CPFrameBox:close()
		arg0.CPMissionTitle:close()
		arg0.InfoImage:close()
		arg0.InfoText:close()
		arg0.PlayerCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_182A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

