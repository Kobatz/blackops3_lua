-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Scorestreaks.scorestreaks_TitleBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.matchSettingsTitle = registerVal1
function CoD.matchSettingsTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.matchSettingsTitle)
	registerVal2.id = "matchSettingsTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 449.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 35.000000)
	local registerVal3 = CoD.scorestreaks_TitleBox.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 2.000000, 451.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 35.000000)
	local function __FUNC_5CB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.ScorestreaksLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "text", true, __FUNC_5CB_)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleBox = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6A9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_6A9_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_70A_(arg0)
		arg0.TitleBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_70A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

