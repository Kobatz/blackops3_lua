-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LivesLeftContainer = registerVal1
function CoD.LivesLeftContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LivesLeftContainer)
	registerVal2.id = "LivesLeftContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 283.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 283.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal3:setText(Engine.Localize("MPUI_LIVES_LEFT"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.LivesLeft = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_68F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_68F_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6EE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LivesLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6EE_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hide"
	local function __FUNC_7ED_(arg0, arg1, arg2)
		local registerVal3 = IsGameTypeEqualToString("oic")
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_7ED_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

