-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AnonymousPlayer = registerVal1
function CoD.AnonymousPlayer.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AnonymousPlayer)
	registerVal2.id = "AnonymousPlayer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 122.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setText(Engine.Localize("MP_MATCHEDPLAYER"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.MatchedPlayer = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_681_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_681_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

