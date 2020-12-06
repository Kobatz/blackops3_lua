-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.buttonprompt_small")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ButtonPrompts = registerVal1
function CoD.ButtonPrompts.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ButtonPrompts)
	registerVal2.id = "ButtonPrompts"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 321.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.buttonprompt_small.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -160.500000, 53.500000)
	registerVal3:setTopBottom(false, false, -15.500000, 15.500000)
	registerVal3.label:setText(Engine.Localize("MENU_SELECT"))
	local function __FUNC_72E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_72E_)
	registerVal2:addElement(registerVal3)
	registerVal2.PromptSelect = registerVal3
	local registerVal4 = CoD.buttonprompt_small.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -53.500000, 160.500000)
	registerVal4:setTopBottom(false, false, -15.500000, 15.500000)
	registerVal4.label:setText(Engine.Localize("MENU_BACK"))
	local function __FUNC_807_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "secondary_button_image", __FUNC_807_)
	registerVal2:addElement(registerVal4)
	registerVal2.PromptBack = registerVal4
	local function __FUNC_8DF_(arg0)
		arg0.PromptSelect:close()
		arg0.PromptBack:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8DF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

