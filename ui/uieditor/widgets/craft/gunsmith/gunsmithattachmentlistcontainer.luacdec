-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponVariantIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithAttachmentListContainer = registerVal1
function CoD.GunsmithAttachmentListContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithAttachmentListContainer)
	registerVal2.id = "GunsmithAttachmentListContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 319.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 9.000000, 313.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 35.000000)
	registerVal3:setWidgetType(CoD.WeaponVariantIcon)
	registerVal3:setHorizontalCount(9.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.attachmentList = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_71F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.attachmentList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_71F_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_81D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.attachmentList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_81D_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	registerVal3.id = "attachmentList"
	local function __FUNC_922_(arg0, arg1)
		local registerVal2 = arg0.attachmentList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_922_)
	local function __FUNC_A2A_(arg0)
		arg0.attachmentList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A2A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

