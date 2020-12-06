-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
require("ui.uieditor.widgets.Lobby.MapVote.MapVoteLabelLower")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MapVoteNoDemoSelected = registerVal1
function CoD.MapVoteNoDemoSelected.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MapVoteNoDemoSelected)
	registerVal2.id = "MapVoteNoDemoSelected"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 303.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 151.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBack = registerVal3
	local registerVal4 = CoD.FE_MemberBlurPanelContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal4.FEMemberBlurPanel0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEMemberBlurPanelContainer0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 58.090000, 243.910000)
	registerVal5:setTopBottom(true, false, -27.000000, 158.830000)
	registerVal5:setScale(0.700000)
	registerVal5:setImage(RegisterImage("uie_t7_icons_theater_film"))
	registerVal2:addElement(registerVal5)
	registerVal2.Icon = registerVal5
	local registerVal6 = CoD.MapVoteLabelLower.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 13.000000, 200.000000)
	registerVal6:setTopBottom(false, true, -26.500000, -8.500000)
	registerVal6.StartMenuIdentitySubtitleBG00:setAlpha(0.420000)
	registerVal6.SubTitle:setText(Engine.Localize(LocalizeToUpperString("MENU_THEATER_LOAD_HINT")))
	registerVal6.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.GameModeNew = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B75_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GameModeNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_B75_
	registerVal7.CPHidden = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "CPHidden"
	local function __FUNC_D89_(arg0, arg2, arg3)
		return IsCPMapVoteHidden(arg1)
	end

	registerVal10.condition = __FUNC_D89_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyNav")
	local function __FUNC_DDF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_DDF_)
	local function __FUNC_F04_(arg0)
		arg0.FEMemberBlurPanelContainer0:close()
		arg0.GameModeNew:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F04_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

