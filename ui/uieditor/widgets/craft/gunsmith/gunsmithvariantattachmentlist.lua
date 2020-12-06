-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithVariantAttachments")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithVariantAttachmentList = registerVal1
function CoD.GunsmithVariantAttachmentList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithVariantAttachmentList)
	registerVal2.id = "GunsmithVariantAttachmentList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GunsmithVariantAttachments.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -566.470000, 240.870000)
	registerVal3:setTopBottom(false, true, -181.870000, -81.870000)
	local function __FUNC_6EB_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_6EB_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "SpecialWeapon"
	local function __FUNC_73A_(arg0, arg2, arg3)
		return Gunsmith_IsSpecialWeapon(arg0, arg2, arg1)
	end

	registerVal7.condition = __FUNC_73A_
	local registerVal8 = {}
	registerVal8.stateName = "Handguns"
	local function __FUNC_79E_(arg0, arg2, arg3)
		return Gunsmith_IsHandguns(arg0, arg2, arg1)
	end

	registerVal8.condition = __FUNC_79E_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.variantAttachments = registerVal3
	registerVal3.id = "variantAttachments"
	local function __FUNC_7FD_(arg0, arg1)
		local registerVal2 = arg0.variantAttachments:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_7FD_)
	local function __FUNC_90A_(arg0)
		arg0.variantAttachments:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_90A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

