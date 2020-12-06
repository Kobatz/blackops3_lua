-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Controls.Slider_Small")
local function __FUNC_224_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GameSettings_AttachmentOptionsPopup = registerVal2
local function __FUNC_279_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_224_ then
		__FUNC_224_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.GameSettings_AttachmentOptionsPopup)
	registerVal2.id = "GameSettings_AttachmentOptionsPopup"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 244.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 410.000000, 1188.000000)
	registerVal4:setTopBottom(true, false, 15.000000, 49.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_B59_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "title", true, __FUNC_B59_)
	registerVal2:addElement(registerVal4)
	registerVal2.Title = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 410.000000, 1174.000000)
	registerVal5:setTopBottom(true, false, 149.500000, 169.500000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "GametypeSettings", "description", __FUNC_C12_)
	registerVal2:addElement(registerVal5)
	registerVal2.Description = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 369.000000, 1039.000000)
	registerVal6:setTopBottom(true, false, 106.000000, 138.000000)
	registerVal6:setWidgetType(CoD.Slider_Small)
	local function __FUNC_CCA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setDataSource(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_CCA_)
	registerVal2:addElement(registerVal6)
	registerVal2.Options = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 61.000000, 305.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 244.000000)
	local function __FUNC_D62_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_D62_)
	registerVal2:addElement(registerVal7)
	registerVal2.Image = registerVal7
	registerVal6.id = "Options"
	local function __FUNC_E14_(arg0, arg1)
		local registerVal2 = arg0.Options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_E14_)
	local function __FUNC_F17_(arg0)
		arg0.Options:close()
		arg0.Title:close()
		arg0.Description:close()
		arg0.Image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F17_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GameSettings_AttachmentOptionsPopup.new = __FUNC_279_
