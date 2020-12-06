-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithSelfIdentity = registerVal1
function CoD.GunsmithSelfIdentity.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithSelfIdentity)
	registerVal2.id = "GunsmithSelfIdentity"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 67.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.SelfIdentityBadge.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -348.000000, -5.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 64.000000)
	local function __FUNC_656_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "PerController", "identityBadge", __FUNC_656_)
	local function __FUNC_6A6_(arg0)
		registerVal3.CallingCard.CallingCardsFrameWidget:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "PerController", nil, __FUNC_6A6_)
	registerVal2:addElement(registerVal3)
	registerVal2.SelfIdentityBadge = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_744_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.SelfIdentityBadge:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_744_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_848_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.SelfIdentityBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_848_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_951_(arg0)
		arg0.SelfIdentityBadge:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_951_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

