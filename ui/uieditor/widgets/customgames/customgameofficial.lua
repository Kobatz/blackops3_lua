-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CustomGameOfficial = registerVal1
function CoD.CustomGameOfficial.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CustomGameOfficial)
	registerVal2.id = "CustomGameOfficial"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 130.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 23.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 25.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_shield_official"))
	registerVal2:addElement(registerVal3)
	registerVal2.officialIcon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 28.000000, 130.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 25.000000)
	registerVal4:setText(Engine.Localize("MENU_OFFICIAL_CAPS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Official = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_891_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.officialIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Official:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_891_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9EA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.officialIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Official:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9EA_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_B42_(arg0, arg2, arg3)
		local registerVal3 = IsCustomMPLobby()
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isOfficial")
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_B42_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_BDF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_BDF_)
	local function __FUNC_D04_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isOfficial"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isOfficial", true, __FUNC_D04_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

