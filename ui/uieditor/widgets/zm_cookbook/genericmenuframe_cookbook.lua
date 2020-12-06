-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GenericMenuFrame_Cookbook = registerVal1
function CoD.GenericMenuFrame_Cookbook.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GenericMenuFrame_Cookbook)
	registerVal2.id = "GenericMenuFrame_Cookbook"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 57.000000, 134.000000)
	registerVal3:setTopBottom(true, false, 31.500000, 79.500000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.titleLabel = registerVal3
	local registerVal4 = CoD.fe_FooterContainer_NOTLobby.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal4:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_7C1_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_7C1_)
	local function __FUNC_812_(arg0, arg2)
		SizeToSafeArea(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_812_)
	registerVal2:addElement(registerVal4)
	registerVal2.feFooterContainerNOTLobby = registerVal4
	local function __FUNC_8A5_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "Update")
		if registerVal2 then
			SetElementStateByElementName(registerVal2, "cac3dTitleIntermediary0", arg1, "Update")
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_8A5_)
	local function __FUNC_971_(arg0)
		arg0.feFooterContainerNOTLobby:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_971_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

