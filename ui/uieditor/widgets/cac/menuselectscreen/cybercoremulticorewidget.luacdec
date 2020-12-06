-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CybercoreMulticoreWidget = registerVal1
function CoD.CybercoreMulticoreWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreMulticoreWidget)
	registerVal2.id = "CybercoreMulticoreWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 119.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, true, -119.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("MENU_CYBERCOM_RIG_MULTICORE"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.multicoreText = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -67.000000, -3.000000)
	registerVal4:setTopBottom(true, false, 24.000000, 88.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage(GetItemImageFromIndex(GetEquippedCybercoreItemIndex(arg1, "uie_t7_hud_ks_carepackage_menu"))))
	registerVal2:addElement(registerVal4)
	registerVal2.icon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7D0_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_7D0_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_832_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.multicoreText:setLeftRight(false, true, -67.000000, -3.000000)
		registerVal2.multicoreText:setTopBottom(true, false, 0.000000, 18.000000)
		registerVal2.multicoreText:setAlpha(1.000000)
		registerVal2.multicoreText:setText(Engine.Localize("MENU_DEFAULT"))
		registerVal2.multicoreText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_832_
	registerVal5.Active = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

