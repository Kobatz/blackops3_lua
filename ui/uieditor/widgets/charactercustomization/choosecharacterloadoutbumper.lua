-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.chooseCharacterLoadoutBumper_Internal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.chooseCharacterLoadoutBumper = registerVal1
function CoD.chooseCharacterLoadoutBumper.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.chooseCharacterLoadoutBumper)
	registerVal2.id = "chooseCharacterLoadoutBumper"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.chooseCharacterLoadoutBumper_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.chooseCharacterLoadoutBumperInternal0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_651_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.chooseCharacterLoadoutBumperInternal0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_651_
	local function __FUNC_768_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Active = __FUNC_768_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7CA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.chooseCharacterLoadoutBumperInternal0:setAlpha(0.001000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7CA_
	local function __FUNC_8E5_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Active = __FUNC_8E5_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_946_(arg0)
		arg0.chooseCharacterLoadoutBumperInternal0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_946_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

