-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_NotificationBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_StatusWidgetLeft = registerVal1
function CoD.vhud_ms_StatusWidgetLeft.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_StatusWidgetLeft)
	registerVal2.id = "vhud_ms_StatusWidgetLeft"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 87.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 42.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 25.650000, 41.650000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_9AB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(FormatNumberAsString(0.000000, registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "altitude", true, __FUNC_9AB_)
	registerVal2:addElement(registerVal3)
	registerVal2.ALTnumbers = registerVal3
	local registerVal4 = CoD.vhud_ms_NotificationBox.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -43.500000, 43.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4.ALTtext:setText(Engine.Localize("MENU_HUD_VEHICLE_ALT"))
	registerVal2:addElement(registerVal4)
	registerVal2.vhudmsNotificationBox0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A91_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_A91_
	local function __FUNC_AF2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartUp = __FUNC_AF2_
	local function __FUNC_B52_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Zoom = __FUNC_B52_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_BB2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_BB2_
	local function __FUNC_C12_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultState = __FUNC_C12_
	registerVal5.Zoom = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_C72_(arg0)
		arg0.vhudmsNotificationBox0:close()
		arg0.ALTnumbers:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C72_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

