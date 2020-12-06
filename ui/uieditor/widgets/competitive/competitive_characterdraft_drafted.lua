-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Pregame.Pregame_DraftedContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Competitive_CharacterDraft_Drafted = registerVal1
function CoD.Competitive_CharacterDraft_Drafted.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Competitive_CharacterDraft_Drafted)
	registerVal2.id = "Competitive_CharacterDraft_Drafted"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal3:setTopBottom(false, false, -33.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_pregame_warning"))
	registerVal2:addElement(registerVal3)
	registerVal2.Warning0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal4:setTopBottom(false, false, -33.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_pregame_warning"))
	registerVal2:addElement(registerVal4)
	registerVal2.Warning = registerVal4
	local registerVal5 = CoD.Pregame_DraftedContainer.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -41.750000, 41.750000)
	registerVal5:setTopBottom(false, false, 0.000000, 26.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5.Text:setText(Engine.Localize("MENU_DRAFTED_CAPS"))
	registerVal2:addElement(registerVal5)
	registerVal2.PregameDraftedContainer = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_9D6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Warning0:setLeftRight(false, false, -20.000000, 20.000000)
		registerVal2.Warning0:setTopBottom(false, false, -33.000000, 0.000000)
		registerVal2.Warning0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Warning:setLeftRight(false, false, -20.000000, 20.000000)
		registerVal2.Warning:setTopBottom(false, false, -33.000000, 0.000000)
		registerVal2.Warning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PregameDraftedContainer:setLeftRight(false, false, -41.750000, 41.750000)
		registerVal2.PregameDraftedContainer:setTopBottom(false, false, 0.000000, 26.000000)
		registerVal2.PregameDraftedContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_9D6_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_CC8_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Warning0:setLeftRight(false, false, -20.000000, 20.000000)
		registerVal2.Warning0:setTopBottom(false, false, -41.000000, -8.000000)
		registerVal2.Warning0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Warning:setLeftRight(false, false, -20.000000, 20.000000)
		registerVal2.Warning:setTopBottom(false, false, -41.000000, -8.000000)
		registerVal2.Warning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PregameDraftedContainer:setLeftRight(false, false, -41.750000, 41.750000)
		registerVal2.PregameDraftedContainer:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.PregameDraftedContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_CC8_
	registerVal6.Drafted = registerVal7
	registerVal7 = {}
	local function __FUNC_FCB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Warning0:setLeftRight(false, false, -20.000000, 20.000000)
		registerVal2.Warning0:setTopBottom(false, false, -35.000000, -2.000000)
		registerVal2.Warning0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Warning:setLeftRight(false, false, -20.000000, 20.000000)
		registerVal2.Warning:setTopBottom(false, false, -35.000000, -2.000000)
		registerVal2.Warning:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.Text:completeAnimation()
		registerVal2.PregameDraftedContainer:setLeftRight(false, false, -34.750000, 34.750000)
		registerVal2.PregameDraftedContainer:setTopBottom(false, false, -2.000000, 22.000000)
		registerVal2.PregameDraftedContainer:setAlpha(1.000000)
		registerVal2.PregameDraftedContainer.Text:setText(Engine.Localize("MENU_BANNED_CAPS"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_FCB_
	registerVal6.Banned = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Drafted"
	local function __FUNC_1370_(arg0, arg2, arg3)
		return CharacterLoadoutDrafted(arg0, arg2, arg1)
	end

	registerVal9.condition = __FUNC_1370_
	local registerVal10 = {}
	registerVal10.stateName = "Banned"
	local function __FUNC_13D5_(arg0, arg2, arg3)
		return ItemIsBannedLobby(arg0, arg2, arg1)
	end

	registerVal10.condition = __FUNC_13D5_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1433_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_1433_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.Pregame.Update")
	local function __FUNC_153D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_153D_)
	local function __FUNC_166A_(arg0)
		arg0.PregameDraftedContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_166A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

