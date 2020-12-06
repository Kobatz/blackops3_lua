-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
local function __FUNC_226_(arg0, arg1)
	local registerVal2 = DataSources.HUDItems.getModel(arg1)
	if registerVal2 then
		local registerVal4 = Engine.CreateModel(registerVal2, "tabletLocationSelectorText")
		Engine.SetModelValue(registerVal4, "")
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.TabletLocationSelector_HintText = registerVal2
local function __FUNC_353_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_226_ then
		__FUNC_226_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TabletLocationSelector_HintText)
	registerVal2.id = "TabletLocationSelector_HintText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 720.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.850000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -360.000000, 360.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A1C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "HUDItems", "tabletLocationSelectorText", __FUNC_A1C_)
	local function __FUNC_AD6_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_AD6_)
	registerVal2:addElement(registerVal4)
	registerVal2.CursorHintText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_B3D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonPanel0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CursorHintText:setLeftRight(false, false, -360.000000, 360.000000)
		registerVal2.CursorHintText:setTopBottom(true, false, 2.000000, 22.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B3D_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_D2F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonPanel0:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CursorHintText:setLeftRight(false, false, -360.000000, 360.000000)
		registerVal2.CursorHintText:setTopBottom(true, false, -3.000000, 27.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D2F_
	registerVal5.Splitscreen = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Splitscreen"
	local function __FUNC_F2E_(arg0, arg2, arg3)
		return IsSplitscreenAndInGame(arg1)
	end

	registerVal8.condition = __FUNC_F2E_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_F88_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.CursorHintText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F88_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.TabletLocationSelector_HintText.new = __FUNC_353_
