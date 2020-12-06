-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.onOffText = registerVal1
function CoD.onOffText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.onOffText)
	registerVal2.id = "onOffText"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setText(Engine.Localize("^BBUTTON_LUI_SHOULDERL^"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.lbText = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7D9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.lbText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7D9_
	local function __FUNC_8D1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Active = __FUNC_8D1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_932_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.lbText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_932_
	local function __FUNC_A2E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Active = __FUNC_A2E_
	registerVal4.Invisible = registerVal5
	registerVal5 = {}
	local function __FUNC_A8E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.lbText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A8E_
	registerVal4.HiddenPC = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Invisible"
	local function __FUNC_B8A_(arg0, arg1, arg2)
		return true
	end

	registerVal7.condition = __FUNC_B8A_
	local registerVal8 = {}
	registerVal8.stateName = "HiddenPC"
	local function __FUNC_BBC_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_BBC_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_C2D_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_C2D_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

