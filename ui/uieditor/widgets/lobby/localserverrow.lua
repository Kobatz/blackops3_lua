-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LocalServerRow = registerVal1
function CoD.LocalServerRow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LocalServerRow)
	registerVal2.id = "LocalServerRow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 690.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 1.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.270000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBar = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 553.500000, 687.500000)
	registerVal4:setTopBottom(true, false, 1.500000, 23.500000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Status = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 367.500000, 549.500000)
	registerVal5:setTopBottom(true, false, 1.500000, 23.500000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.GameType = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 275.500000, 313.500000)
	registerVal6:setTopBottom(true, false, 1.500000, 23.500000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.ClientCount = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 10.000000, 275.500000)
	registerVal7:setTopBottom(true, false, 1.500000, 23.500000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.HostName = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -1.000000, 3.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local function __FUNC_CB0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(LocalServerStatusToString(registerVal1)))
		end
	end

	registerVal2.Status:linkToElementModel(registerVal2, "status", true, __FUNC_CB0_)
	local function __FUNC_D95_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(SessionModeToLocalizedSessionMode(registerVal1)))
		end
	end

	registerVal2.GameType:linkToElementModel(registerVal2, "sessionMode", true, __FUNC_D95_)
	local function __FUNC_E81_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.ClientCount:linkToElementModel(registerVal2, "clientCount", true, __FUNC_E81_)
	local function __FUNC_F3A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.HostName:linkToElementModel(registerVal2, "gamertag", true, __FUNC_F3A_)
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_FF2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_FF2_
	local function __FUNC_1148_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_1148_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_12A0_(arg0)
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.Status:close()
		arg0.GameType:close()
		arg0.ClientCount:close()
		arg0.HostName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12A0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

