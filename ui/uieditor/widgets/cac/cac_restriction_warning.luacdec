-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_restriction_warning = registerVal1
function CoD.cac_restriction_warning.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_restriction_warning)
	registerVal2.id = "cac_restriction_warning"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 208.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 8.000000, -35.000000)
	registerVal3:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal3:setText(Engine.Localize("MENU_ITEMS_BANNED_OR_RESTRICTED"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setLetterSpacing(0.500000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.textRightAlign = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 170.500000, 208.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4:setScale(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_pregame_warning"))
	registerVal2:addElement(registerVal4)
	registerVal2.RestrictedWarning = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_90A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.textRightAlign:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RestrictedWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_90A_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A6D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.textRightAlign:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RestrictedWarning:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A6D_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_BD1_(arg0, arg2, arg3)
		return ItemIsBannedLobby(arg0, arg2, arg1)
	end

	registerVal8.condition = __FUNC_BD1_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_C2F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_C2F_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.Pregame.Update")
	local function __FUNC_D39_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_D39_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

