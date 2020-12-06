-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_Subtitle_BG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MapVoteLabelLower = registerVal1
function CoD.MapVoteLabelLower.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MapVoteLabelLower)
	registerVal2.id = "MapVoteLabelLower"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Identity_Subtitle_BG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -7.000000, 8.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.550000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hidden"
	local function __FUNC_93B_(arg0, arg1, arg2)
		return IsFreeRunLobby()
	end

	registerVal7.condition = __FUNC_93B_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_988_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_988_)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuIdentitySubtitleBG00 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 6.000000, 6.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 19.000000)
	registerVal4:setText(Engine.Localize(""))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_AB0_(arg0, arg1)
		ScaleWidgetToLabelLeftJustify(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_AB0_)
	registerVal2:addElement(registerVal4)
	registerVal2.SubTitle = registerVal4
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_B1C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.SubTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B1C_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_C17_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.SubTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C17_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_D14_(arg0, arg1, arg2)
		return IsFreeRunLobby()
	end

	registerVal8.condition = __FUNC_D14_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_D64_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_D64_)
	local function __FUNC_E8C_(arg0)
		arg0.StartMenuIdentitySubtitleBG00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E8C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

