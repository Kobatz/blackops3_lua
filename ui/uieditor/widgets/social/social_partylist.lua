-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_ShaderContainer")
require("ui.uieditor.widgets.Social.Social_PartyMemberIcon")
require("ui.uieditor.widgets.Social.Social_LeaderIcon")
require("ui.uieditor.widgets.Social.Social_MemberGamerTag")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_PartyList = registerVal1
function CoD.Social_PartyList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_PartyList)
	registerVal2.id = "Social_PartyList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Social_ShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -18.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 26.000000)
	registerVal3:setRGB(0.140000, 0.240000, 0.560000)
	registerVal3:setAlpha(0.130000)
	registerVal2:addElement(registerVal3)
	registerVal2.SocialShaderContainer = registerVal3
	local registerVal4 = CoD.Social_PartyMemberIcon.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 272.000000, 282.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.SocialPartyMemberIcon0 = registerVal4
	local registerVal5 = CoD.Social_LeaderIcon.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 282.000000, 306.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.SocialLeaderIcon0 = registerVal5
	local registerVal6 = CoD.Social_MemberGamerTag.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 9.000000, 280.000000)
	registerVal6:setTopBottom(true, false, 1.000000, 26.500000)
	local function __FUNC_9D0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.gamertag:setText(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "gamertag", true, __FUNC_9D0_)
	registerVal2:addElement(registerVal6)
	registerVal2.SocialMemberGamerTag = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_A82_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.SocialPartyMemberIcon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.Leader:completeAnimation()
		registerVal2.SocialLeaderIcon0.Leader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_A82_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_C26_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.SocialPartyMemberIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.Leader:completeAnimation()
		registerVal2.SocialLeaderIcon0.Leader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_C26_
	registerVal7.IsLeader = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "IsLeader"
	local function __FUNC_DCA_(arg0, arg2, arg3)
		return IsSocialPartyLeader(registerVal2, arg1)
	end

	registerVal10.condition = __FUNC_DCA_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_E25_(arg0)
		arg0.SocialShaderContainer:close()
		arg0.SocialPartyMemberIcon0:close()
		arg0.SocialLeaderIcon0:close()
		arg0.SocialMemberGamerTag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E25_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

