-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CAC_varientTitlePanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RankUpNotificationTile = registerVal1
function CoD.RankUpNotificationTile.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RankUpNotificationTile)
	registerVal2.id = "RankUpNotificationTile"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = CoD.CAC_varientTitlePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal3:setAlpha(0.500000)
	local function __FUNC_7D3_(arg0, arg1)
		ScaleWidgetToLabelWrapped(registerVal2, arg0, 0.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_7D3_)
	registerVal2:addElement(registerVal3)
	registerVal2.CACvarientTitlePanel0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Text = registerVal4
	local function __FUNC_83C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Text:linkToElementModel(registerVal2, "title", true, __FUNC_83C_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8F6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CACvarientTitlePanel0:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8F6_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A58_(arg0)
		arg0.CACvarientTitlePanel0:close()
		arg0.Text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A58_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

