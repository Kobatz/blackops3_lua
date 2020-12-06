-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
local function __FUNC_229_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "GametypeSettings.Update")
end

local function __FUNC_2DE_(arg0)
	arg0.Text:setText(arg0.Text:getText())
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.FE_ListHelp = registerVal3
local function __FUNC_360_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_229_ then
		__FUNC_229_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ListHelp)
	registerVal2.id = "FE_ListHelp"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 298.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 5.000000, -5.000000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.750000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 29.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 6.000000, 26.000000)
	registerVal4:setText(Engine.Localize("MENU_SPLITSCREEN_NOT_ALLOWED_SHORT"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C9D_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, -15.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_C9D_)
	registerVal2:addElement(registerVal4)
	registerVal2.Text = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 3.500000, 24.500000)
	registerVal5:setTopBottom(true, false, 6.000000, 27.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_error_overlays"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_CFD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_CFD_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_EA3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_EA3_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_104C_(arg0, arg2, arg3)
		return CompetitiveSettingsEnabled(arg1)
	end

	registerVal9.condition = __FUNC_104C_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_10AC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_10AC_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "GametypeSettings.Update")
	local function __FUNC_11D4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GametypeSettings.Update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_11D4_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyButtonUpdate")
	local function __FUNC_1301_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyButtonUpdate"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1301_)
	local function __FUNC_1431_(arg0)
		arg0.Background:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1431_)
	if __FUNC_2DE_ then
		__FUNC_2DE_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FE_ListHelp.new = __FUNC_360_
