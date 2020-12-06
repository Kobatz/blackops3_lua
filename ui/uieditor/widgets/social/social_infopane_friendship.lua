-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_InfoPane_Friendship = registerVal1
function CoD.Social_InfoPane_Friendship.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_InfoPane_Friendship)
	registerVal2.id = "Social_InfoPane_Friendship"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 89.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 23.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 3.000000, 79.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 20.000000)
	registerVal3:setText(Engine.Localize("MENU_YOUR_FRIEND"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.yourFriend = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6D5_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.yourFriend:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6D5_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7D6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.yourFriend:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7D6_
	registerVal4.YourFriend = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "YourFriend"
	local function __FUNC_8D1_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "showyourfriend")
	end

	registerVal7.condition = __FUNC_8D1_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

