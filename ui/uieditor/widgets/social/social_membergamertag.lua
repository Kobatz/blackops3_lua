-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_MemberGamerTag = registerVal1
function CoD.Social_MemberGamerTag.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_MemberGamerTag)
	registerVal2.id = "Social_MemberGamerTag"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 271.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 271.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal3:setRGB(0.870000, 0.900000, 0.900000)
	registerVal3:setAlpha(0.730000)
	registerVal3:setText(Engine.Localize("[WWWW]WWWWWWWWWWWWWWWW"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.gamertag = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5E7_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_5E7_
	local function __FUNC_646_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.TeamSwitch = __FUNC_646_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

