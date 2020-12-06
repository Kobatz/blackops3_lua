-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_FooterButtonPromptWithContainerMain")
local function __FUNC_22E_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "durango.signedInGamertag", true)
	local function __FUNC_315_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2 = string.len(registerVal1)
		if arg1 ~= nil and registerVal1 ~= nil and 0.000000 < registerVal2 then
			arg0.Username:setText(Engine.Localize("MENU_SIGNED_IN_USER", registerVal1))
			return 
		end
		arg0.Username:setText("")
	end

	arg0:subscribeToModel(registerVal3, __FUNC_315_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.fe_RightContainerMain = registerVal2
local function __FUNC_482_(arg0, arg1)
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
	registerVal2:setClass(CoD.fe_RightContainerMain)
	registerVal2.id = "fe_RightContainerMain"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 870.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -3.000000, 0.000000)
	registerVal3:setTopBottom(true, false, -36.000000, 92.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = CoD.fe_FooterButtonPromptWithContainerMain.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -94.000000, -3.000000)
	registerVal4:setTopBottom(false, true, -49.000000, 12.000000)
	registerVal4.label:setText(Engine.Localize("MENU_SWITCH_USER"))
	local function __FUNC_D0E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "back_button_image", __FUNC_D0E_)
	local function __FUNC_DE7_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_BACK), false, __FUNC_DE7_)
	registerVal2:addElement(registerVal4)
	registerVal2.feFooterButtonPromptWithContainer0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 744.000000, 776.000000)
	registerVal5:setTopBottom(true, false, -36.000000, 92.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Image00 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, true, -466.000000, -126.000000)
	registerVal6:setTopBottom(false, true, -26.500000, -8.500000)
	registerVal6:setText(Engine.Localize(GetFirstSignedInController("Signed in: FEXTWOLF")))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.Username = registerVal6
	local function __FUNC_E36_(arg0)
		arg0.feFooterButtonPromptWithContainer0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E36_)
	if __FUNC_22E_ then
		__FUNC_22E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.fe_RightContainerMain.new = __FUNC_482_
