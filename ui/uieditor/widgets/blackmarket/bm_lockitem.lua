-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_LockItem = registerVal1
function CoD.BM_LockItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_LockItem)
	registerVal2.id = "BM_LockItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 245.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 49.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.550000)
	registerVal2:addElement(registerVal3)
	registerVal2.black = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 47.000000, 244.000000)
	registerVal4:setTopBottom(true, false, 24.500000, 43.500000)
	registerVal4:setText(Engine.Localize("Available at the Sergeant (level 10)"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.desc = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 47.000000, 242.000000)
	registerVal5:setTopBottom(true, false, 6.500000, 24.500000)
	registerVal5:setText(Engine.Localize("BATTERY HELMET"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.title = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -116.000000, -82.500000)
	registerVal6:setTopBottom(false, false, -16.000000, 17.500000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_iconlock"))
	registerVal2:addElement(registerVal6)
	registerVal2.lockedIcon0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -116.000000, -82.500000)
	registerVal7:setTopBottom(false, false, -16.000000, 17.500000)
	registerVal7:setAlpha(0.470000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_iconlock"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.lockedIcon = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_A50_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.desc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.lockedIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_A50_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_CA3_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.black:setAlpha(0.550000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.desc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.lockedIcon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.470000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_CA3_
	registerVal8.Visible = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

