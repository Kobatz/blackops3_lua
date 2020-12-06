-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterMiniMap = registerVal1
function CoD.CodCasterMiniMap.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterMiniMap)
	registerVal2.id = "CodCasterMiniMap"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 561.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 357.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -179.000000, 163.000000)
	registerVal3:setTopBottom(false, false, -151.000000, 199.000000)
	registerVal3:setupCompassMap(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal3)
	registerVal2.minimapMap = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -179.000000, 163.000000)
	registerVal4:setTopBottom(false, false, -151.000000, 199.000000)
	registerVal4:setupCompassItems(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal4)
	registerVal2.minimapItems = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -287.000000, 271.000000)
	registerVal5:setTopBottom(false, false, -114.000000, 173.000000)
	registerVal5:setupCompassOverlay(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal5)
	registerVal2.minimapOverlay = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 53.000000, 195.000000)
	registerVal6:setTopBottom(true, false, 70.000000, 103.000000)
	registerVal6:setImage(RegisterImage("uie_t7_codcaster_mapbacker"))
	registerVal2:addElement(registerVal6)
	registerVal2.namebacking = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 74.000000, 208.000000)
	registerVal7:setTopBottom(true, false, 72.000000, 90.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_A5E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "mapName", __FUNC_A5E_)
	registerVal2:addElement(registerVal7)
	registerVal2.mapTitle = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B16_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.minimapMap:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.minimapItems:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.minimapOverlay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.namebacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.mapTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_B16_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_D7B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.minimapMap:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.minimapItems:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.minimapOverlay:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.namebacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.mapTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_D7B_
	registerVal8.Visible = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_FDF_(arg0)
		arg0.mapTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FDF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

