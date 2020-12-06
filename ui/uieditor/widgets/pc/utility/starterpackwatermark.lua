-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StarterPackWatermark = registerVal1
function CoD.StarterPackWatermark.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StarterPackWatermark)
	registerVal2.id = "StarterPackWatermark"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 17.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3:setText(Engine.Localize("PLATFORM_STARTER_PACK_WATERMARK"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.070000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, -1.310000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.710000, 0.000000, 0.000000, 0.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_861_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_861_)
	local function __FUNC_902_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_902_)
	registerVal2:addElement(registerVal3)
	registerVal2.StarterPackWatermark = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_961_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.StarterPackWatermark:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_961_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_A67_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.StarterPackWatermark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A67_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hide"
	local function __FUNC_B70_(arg0, arg2, arg3)
		return IsStarterPackWatermarkHidden(arg0, arg1)
	end

	registerVal7.condition = __FUNC_B70_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

