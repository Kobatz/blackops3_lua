-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.Social.Social_CallingCardTitle")
require("ui.uieditor.widgets.Social.Social_CallingCardSubTitle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_CallingCard = registerVal1
function CoD.Social_CallingCard.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_CallingCard)
	registerVal2.id = "Social_CallingCard"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 75.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 300.000000, 0.000000)
	registerVal3:setTopBottom(true, false, -3.000000, 78.000000)
	registerVal3.CardIconFrame:setScale(0.630000)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardsFrameWidget = registerVal3
	local registerVal4 = CoD.Social_CallingCardTitle.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 298.000000)
	registerVal4:setTopBottom(true, false, 7.000000, 32.000000)
	registerVal4.FEListSubHeaderPanel0:setAlpha(0.650000)
	registerVal4.Label0:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_905_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Label0:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "gamertag", true, __FUNC_905_)
	registerVal2:addElement(registerVal4)
	registerVal2.SocialCallingCardTitle = registerVal4
	local registerVal5 = CoD.Social_CallingCardSubTitle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 298.000000)
	registerVal5:setTopBottom(true, false, 32.000000, 52.000000)
	registerVal5.FEListSubHeaderPanel0:setAlpha(0.650000)
	registerVal5.Label0:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_9B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Label0:setText(StringAsClanTag(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "clantag", true, __FUNC_9B4_)
	registerVal2:addElement(registerVal5)
	registerVal2.SocialCallingCardSubTitle = registerVal5
	local function __FUNC_A85_(arg0)
		arg0.CallingCardsFrameWidget:close()
		arg0.SocialCallingCardTitle:close()
		arg0.SocialCallingCardSubTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A85_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

