-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_BasicImage")
local function __FUNC_228_(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3 = {"iconId", "emblemBacking", "backgroundId", "selectedBg", "identityBadge.xuid"}
	arg0.CardIconFrame.m_preventFromBeingActive = true
	local function __FUNC_378_(arg3)
		if arg0.backingSubscription ~= nil then
			arg0:removeSubscription(arg0.backingSubscription)
		end
		for index1=1.000000, #registerVal3, 1.000000 do
			local registerVal6 = Engine.GetModel(arg3, registerVal3[index1])
			if registerVal6 then
				local function __FUNC_4D7_(arg3)
					local registerVal1 = Engine.GetModelValue(arg3)
					if registerVal3[index1] == "identityBadge.xuid" then
						local registerVal2 = GetPlayerBackground(arg1, registerVal1)
					end
					if registerVal2 then
						local registerVal4 = GetBackgroundByID(registerVal2)
						CoD.ChallengesUtility.SetCallingCardForWidget(arg0.CardIconFrame, registerVal4, arg2.id)
					end
				end

				local registerVal8 = arg0:subscribeToModel(registerVal6, __FUNC_4D7_)
				arg0.backingSubscription = registerVal8
			else
			end
		end
	end

	arg0.CardIconFrame:linkToElementModel(arg0, nil, true, __FUNC_378_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CallingCards_FrameWidget = registerVal2
local function __FUNC_673_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_FrameWidget)
	registerVal2.id = "CallingCards_FrameWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal3:setLeftRight(false, false, -240.000000, 240.000000)
	registerVal3:setTopBottom(false, false, -60.000000, 60.000000)
	registerVal3:changeFrameWidget(CoD.CallingCards_BasicImage)
	local function __FUNC_A37_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_A37_)
	registerVal2:addElement(registerVal3)
	registerVal2.CardIconFrame = registerVal3
	registerVal3.id = "CardIconFrame"
	local function __FUNC_A86_(arg0)
		arg0.CardIconFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A86_)
	if __FUNC_228_ then
		__FUNC_228_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CallingCards_FrameWidget.new = __FUNC_673_
