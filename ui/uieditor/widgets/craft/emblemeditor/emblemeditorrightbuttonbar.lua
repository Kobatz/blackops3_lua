-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.buttonprompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorRightButtonBar = registerVal1
function CoD.EmblemEditorRightButtonBar.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorRightButtonBar)
	registerVal2.id = "EmblemEditorRightButtonBar"
	registerVal2.soundSet = "CustomizationEditor"
	registerVal2:setLeftRight(true, false, 0.000000, 353.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 33.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.buttonprompt.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 263.000000, 353.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 32.000000)
	registerVal3.label:setText(Engine.Localize("MENU_EMBLEM_CHANGE_DECAL"))
	local function __FUNC_A60_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_A60_)
	registerVal2:addElement(registerVal3)
	registerVal2.change = registerVal3
	local registerVal4 = CoD.buttonprompt.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 186.000000, 263.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 32.000000)
	registerVal4.label:setText(Engine.Localize("MENU_EMBLEM_CUT_LAYER"))
	local function __FUNC_B3B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_B3B_)
	registerVal2:addElement(registerVal4)
	registerVal2.cut = registerVal4
	local registerVal5 = CoD.buttonprompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 100.000000, 186.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 32.000000)
	registerVal5.label:setText(Engine.Localize("MENU_EMBLEM_COPY_LAYER"))
	local function __FUNC_C13_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "back_button_image", __FUNC_C13_)
	registerVal2:addElement(registerVal5)
	registerVal2.copy = registerVal5
	local registerVal6 = CoD.buttonprompt.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 9.000000, 100.000000)
	registerVal6:setTopBottom(true, false, 1.000000, 32.000000)
	registerVal6.label:setText(Engine.Localize("MENU_EMBLEM_INSERT_LAYER"))
	local function __FUNC_CEB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "dpad_down_button_image", __FUNC_CEB_)
	registerVal2:addElement(registerVal6)
	registerVal2.new = registerVal6
	local function __FUNC_DC3_(arg0)
		arg0.change:close()
		arg0.cut:close()
		arg0.copy:close()
		arg0.new:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DC3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

