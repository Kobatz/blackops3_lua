-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ModDNITime")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_sentinel_TimeBar = registerVal1
function CoD.vhud_sentinel_TimeBar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_sentinel_TimeBar)
	registerVal2.id = "vhud_sentinel_TimeBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 218.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 9.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_ModDNITime.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -29.130000, 22.880000)
	registerVal3:setTopBottom(true, false, -24.000000, 33.000000)
	registerVal3:setAlpha(0.200000)
	registerVal3:setZoom(-20.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudModDNITime00 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 10.430000, 218.430000)
	registerVal4:setTopBottom(true, false, 0.310000, 8.310000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setZoom(-15.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebar"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Frame0 = registerVal4
	local registerVal5 = CoD.vhud_ModDNITime.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -29.130000, 22.880000)
	registerVal5:setTopBottom(true, false, -24.000000, 33.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.vhudModDNITime0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 10.430000, 218.430000)
	registerVal6:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebarsolid"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_AD3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal6:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "remainingTime", true, __FUNC_AD3_)
	registerVal2:addElement(registerVal6)
	registerVal2.Bar = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 10.430000, 218.430000)
	registerVal7:setTopBottom(true, false, 0.310000, 8.310000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebar"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Frame = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C28_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.vhudModDNITime00:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Frame0:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vhudModDNITime0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_C28_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_E8A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.vhudModDNITime00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Frame0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vhudModDNITime0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Frame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_E8A_
	registerVal8.Hidden = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_10E5_(arg0)
		arg0.vhudModDNITime00:close()
		arg0.vhudModDNITime0:close()
		arg0.Bar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10E5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

