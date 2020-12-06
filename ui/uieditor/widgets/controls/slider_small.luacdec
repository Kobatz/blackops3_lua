-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider_Control_Item")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.GameSettings.GameSettings_ChangedIndicator")
local function __FUNC_30E_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0:setHandleMouseButton(false)
		arg0:setForceMouseEventDispatch(true)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Slider_Small = registerVal2
local function __FUNC_3C5_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Slider_Small)
	registerVal2.id = "Slider_Small"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 670.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 334.530000, 544.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 30.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 36.000000, 334.530000)
	registerVal4:setTopBottom(true, false, 2.000000, 30.000000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 38.000000, -339.470000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuframenoBG0 = registerVal5
	local registerVal6 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 336.530000, -126.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.StartMenuframenoBG1 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 58.000000, 280.000000)
	registerVal7:setTopBottom(true, false, 5.000000, 27.000000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_17C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "name", true, __FUNC_17C6_)
	registerVal2:addElement(registerVal7)
	registerVal2.Title = registerVal7
	local registerVal8 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 356.270000, 524.270000)
	registerVal8:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal8:setWidgetType(CoD.StartMenu_Options_Slider_Control_Item)
	local function __FUNC_187E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setDataSource(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "optionsDatasource", true, __FUNC_187E_)
	local function __FUNC_1916_(arg0, arg2)
		ProcessListAction(registerVal2, arg0, arg1)
		UpdateElementState(registerVal2, "GameSettingsChangedIndicator", arg1)
		PlaySoundAlias("uin_paint_decal_nav")
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_1916_)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "ArrowsHidden"
	local function __FUNC_1A0E_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "hideArrows")
	end

	registerVal12.condition = __FUNC_1A0E_
	local registerVal13 = {}
	registerVal13.stateName = "LeftArrowHidden"
	local function __FUNC_1A78_(arg0, arg1, arg2)
		local registerVal3 = ListLoopEdgesEnabled(registerVal2, "Slider")
		if not registerVal3 then
			registerVal3 = IsFirstListElement(arg1)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_1A78_
	local registerVal14 = {}
	registerVal14.stateName = "RightArrowHidden"
	local function __FUNC_1B22_(arg0, arg1, arg2)
		local registerVal3 = ListLoopEdgesEnabled(registerVal2, "Slider")
		if not registerVal3 then
			registerVal3 = IsLastListElement(arg1)
		else
		end
		return true
	end

	registerVal14.condition = __FUNC_1B22_
	registerVal11 = {registerVal12, registerVal13, registerVal14}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.Slider = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image0000 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal10:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image0 = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 547.500000, 563.500000)
	registerVal11:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image00002 = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -122.500000, -106.500000)
	registerVal12:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image00 = registerVal12
	registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 336.530000, -126.000000)
	registerVal13:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarB = registerVal13
	registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 336.530000, -126.000000)
	registerVal14:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarT = registerVal14
	local registerVal15 = CoD.GameSettings_ChangedIndicator.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 10.000000, 40.000000)
	registerVal15:setTopBottom(true, false, 1.000000, 31.000000)
	local function __FUNC_1BC9_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_1BC9_)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Visible"
	local function __FUNC_1C1A_(arg0, arg1, arg2)
		local registerVal3 = IsCampaign()
		if not registerVal3 then
			registerVal3 = IsGametypeItemSettingDefaultNew(registerVal2, "Slider")
		else
		end
		return true
	end

	registerVal19.condition = __FUNC_1C1A_
	local registerVal20 = {}
	registerVal20.stateName = "VisibleCP"
	local function __FUNC_1CC5_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal20.condition = __FUNC_1CC5_
	registerVal18 = {registerVal19, registerVal20}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "lobbyRoot.lobbyNav")
	local function __FUNC_1D10_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_1D10_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "GametypeSettings.Update")
	local function __FUNC_1E38_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GametypeSettings.Update"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_1E38_)
	registerVal2:addElement(registerVal15)
	registerVal2.GameSettingsChangedIndicator = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1F65_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Title:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Slider:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.GameSettingsChangedIndicator:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1F65_
	local function __FUNC_229E_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.GameSettingsChangedIndicator:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.Focus = __FUNC_229E_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_25C7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Title:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Title:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Slider:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal15:completeAnimation()
		registerVal2.GameSettingsChangedIndicator:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_25C7_
	registerVal16.Disabled = registerVal17
	registerVal17 = {}
	local function __FUNC_2884_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.Title:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Slider:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal15:completeAnimation()
		registerVal2.GameSettingsChangedIndicator:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_2884_
	registerVal16.DisabledBySetting = registerVal17
	registerVal2.clipsPerState = registerVal16
	registerVal18 = {}
	registerVal19 = {}
	registerVal19.stateName = "Disabled"
	local function __FUNC_2A44_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal19.condition = __FUNC_2A44_
	registerVal20 = {}
	registerVal20.stateName = "DisabledBySetting"
	local function __FUNC_2A98_(arg0, arg2, arg3)
		local registerVal3 = IsEnabledByGametypeSetting(arg2, arg1)
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_2A98_
	registerVal18 = {registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal18)
	local function __FUNC_2B00_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_2B00_)
	local function __FUNC_2C1E_(arg0, arg2)
		local registerVal2 = IsInDefaultState(arg0)
		if registerVal2 then
			DisableMouseButton(registerVal2, arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_2C1E_)
	registerVal8.id = "Slider"
	local function __FUNC_2CA2_(arg0, arg1)
		local registerVal2 = arg0.Slider:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2CA2_)
	local function __FUNC_2DA2_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG1:close()
		arg0.Slider:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.GameSettingsChangedIndicator:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2DA2_)
	if __FUNC_30E_ then
		__FUNC_30E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Slider_Small.new = __FUNC_3C5_
