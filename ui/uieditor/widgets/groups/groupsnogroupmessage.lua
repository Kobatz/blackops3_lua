-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsNoGroupMessage = registerVal1
function CoD.GroupsNoGroupMessage.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.GroupsNoGroupMessage)
	registerVal2.id = "GroupsNoGroupMessage"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 292.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 292.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setText(Engine.Localize("GROUPS_NOT_IN_GROUPS"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.ListLabel = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_656_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ListLabel:setText(Engine.Localize("GROUPS_MY_GROUPS"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_656_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_79F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ListLabel:setText(Engine.Localize("GROUPS_NOT_IN_GROUPS"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_79F_
	registerVal4.NoGroups = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

