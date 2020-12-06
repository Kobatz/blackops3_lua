-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.BackgroundPattern01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemSlotsFull = registerVal1
function CoD.EmblemSlotsFull.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemSlotsFull)
	registerVal2.id = "EmblemSlotsFull"
	registerVal2.soundSet = "Paintshop"
	registerVal2:setLeftRight(true, false, 0.000000, 448.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 94.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal3:setTopBottom(true, false, 0.750000, 45.250000)
	registerVal3:setRGB(0.340000, 0.340000, 0.340000)
	registerVal3:setAlpha(0.150000)
	registerVal2:addElement(registerVal3)
	registerVal2.CountBacking = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal4:setTopBottom(true, false, 0.750000, 17.750000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal2:addElement(registerVal4)
	registerVal2.TitleBacking = registerVal4
	local registerVal5 = CoD.BackgroundPattern01.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal5:setTopBottom(true, false, 0.750000, 45.250000)
	registerVal5:setRGB(0.220000, 0.220000, 0.220000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.BackgroundPattern010 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -1.500000, 121.500000)
	registerVal6:setTopBottom(true, false, -0.250000, 19.000000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.032520, 0.207792, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Image = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 6.000000, 113.500000)
	registerVal7:setTopBottom(true, false, 20.750000, 42.750000)
	registerVal7:setText(Engine.Localize("MENU_EMBLEM_LAYERS_USED_FRACTION"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1047_(arg0)
		local registerVal2 = IsLive()
		if registerVal2 then
			UpdateSlotCountText(registerVal2, registerVal7, arg1, Enum.StorageFileType.STORAGE_EMBLEMS)
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "PerController", "Emblem.UpdateDataSource", __FUNC_1047_)
	registerVal2:addElement(registerVal7)
	registerVal2.count = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal8:setTopBottom(true, false, 1.000000, 17.000000)
	registerVal8:setRGB(0.770000, 0.770000, 0.770000)
	registerVal8:setText(Engine.Localize("MENU_EMBLEM_SLOTS"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.VariantSlots = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 231.020000, 416.020000)
	registerVal9:setTopBottom(true, false, 30.750000, 55.750000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(Engine.Localize("MENU_PAINTJOB_SOTS_FULL"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.slotFulltext = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -2.000000, 6.000000)
	registerVal10:setTopBottom(true, false, 4.750000, 21.750000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.WarningBacking = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 199.020000, 231.020000)
	registerVal11:setTopBottom(true, false, 27.250000, 59.250000)
	registerVal11:setRGB(1.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_icon_error_overlays"))
	registerVal2:addElement(registerVal11)
	registerVal2.slotfullWarningImage = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1121_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal2.count:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VariantSlots:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.slotFulltext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WarningBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.slotfullWarningImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1121_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_13AC_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal2.count:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VariantSlots:setLeftRight(true, false, 0.000000, 120.000000)
		registerVal2.VariantSlots:setTopBottom(true, false, 1.000000, 17.000000)
		registerVal2.VariantSlots:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.slotFulltext:setLeftRight(true, false, -0.500000, 119.500000)
		registerVal2.slotFulltext:setTopBottom(true, false, 1.000000, 17.000000)
		registerVal2.slotFulltext:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.slotFulltext:setAlpha(1.000000)
		registerVal2.slotFulltext:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WarningBacking:setLeftRight(true, false, -4.000000, 4.000000)
		registerVal2.WarningBacking:setTopBottom(true, false, 4.750000, 17.750000)
		registerVal2.WarningBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.slotfullWarningImage:setLeftRight(true, false, -14.750000, 14.750000)
		registerVal2.slotfullWarningImage:setTopBottom(true, false, -5.000000, 24.500000)
		registerVal2.slotfullWarningImage:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.slotfullWarningImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_13AC_
	registerVal12.SlotsFull = registerVal13
	registerVal13 = {}
	local function __FUNC_18B4_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.CountBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TitleBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackgroundPattern010:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.count:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.count:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VariantSlots:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.slotFulltext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WarningBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.slotfullWarningImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_18B4_
	registerVal12.Hidden = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_1CC5_(arg0)
		arg0.BackgroundPattern010:close()
		arg0.count:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CC5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

