-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_LabelSubHeadingA")
require("ui.uieditor.widgets.Lobby.Common.FE_3dTitleNumberGames")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_3dTitleNumber = registerVal1
function CoD.FE_3dTitleNumber.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 7.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_3dTitleNumber)
	registerVal2.id = "FE_3dTitleNumber"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 376.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 29.000000)
	registerVal3 = CoD.FE_LabelSubHeadingA.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 74.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 32.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal3:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3.Label0:setRGB(0.710000, 0.760000, 0.770000)
	registerVal3.Label0:setText(Engine.Localize("48,151"))
	registerVal3.Label0:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.FELabelSubHeadingA0 = registerVal3
	local registerVal4 = CoD.FE_3dTitleNumberGames.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 81.000000, 152.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 31.000000)
	registerVal4.Label1:setText(Engine.Localize("MENU_ONLINE_CAPS"))
	registerVal4.Label1:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.FE3dTitleNumberGames0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_C8A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FELabelSubHeadingA0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FE3dTitleNumberGames0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C8A_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_DF6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FELabelSubHeadingA0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FE3dTitleNumberGames0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_DF6_
	registerVal5.Hidden = registerVal6
	registerVal6 = {}
	local function __FUNC_F62_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FELabelSubHeadingA0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FE3dTitleNumberGames0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_F62_
	registerVal5.Hidden2 = registerVal6
	registerVal6 = {}
	local function __FUNC_10CE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FELabelSubHeadingA0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FE3dTitleNumberGames0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_10CE_
	registerVal5.Hidden3 = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_123A_(arg0, arg1, arg2)
		return IsGameLobby()
	end

	registerVal8.condition = __FUNC_123A_
	local registerVal9 = {}
	registerVal9.stateName = "Hidden2"
	local function __FUNC_1285_(arg0, arg1, arg2)
		return IsLAN()
	end

	registerVal9.condition = __FUNC_1285_
	local registerVal10 = {}
	registerVal10.stateName = "Hidden3"
	local function __FUNC_12CB_(arg0, arg1, arg2)
		local registerVal3 = IsBooleanDvarSet("groupCountsVisible")
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_12CB_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_133E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_133E_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_1464_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1464_)
	local function __FUNC_1594_(arg0)
		arg0.FELabelSubHeadingA0:close()
		arg0.FE3dTitleNumberGames0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1594_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

