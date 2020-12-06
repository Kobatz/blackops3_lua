-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.playercard.CallingCard")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.IdentityBadge = registerVal1
function CoD.IdentityBadge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.IdentityBadge)
	registerVal2.id = "IdentityBadge"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 345.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Social_background.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -244.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardBG = registerVal3
	local registerVal4 = CoD.Social_background.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -342.000000, -244.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.emblemBG = registerVal4
	local registerVal5 = CoD.CallingCard.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -244.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 60.000000)
	local function __FUNC_81B_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_81B_)
	local function __FUNC_86A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.SocialCallingCardSubTitle.FEListSubHeaderPanel0:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "clantag", true, __FUNC_86A_)
	local function __FUNC_97A_(arg2)
		CallingCards_EmblemGetProfile(arg0, registerVal5, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "PerController", "CallingCardsIdentity.GetPublicProfileComplete", __FUNC_97A_)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCard = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -342.000000, -244.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 60.000000)
	local function __FUNC_9E3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "xuid", true, __FUNC_9E3_)
	registerVal2:addElement(registerVal6)
	registerVal2.emblem = registerVal6
	local function __FUNC_A84_(arg0)
		arg0.CallingCardBG:close()
		arg0.emblemBG:close()
		arg0.CallingCard:close()
		arg0.emblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A84_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

