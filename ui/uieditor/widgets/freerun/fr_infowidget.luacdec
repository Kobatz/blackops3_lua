-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.freerun_InfoBoxBlur")
require("ui.uieditor.widgets.Freerun.FR_BestTimeHud")
require("ui.uieditor.widgets.Freerun.FR_FaultsNumberBox")
require("ui.uieditor.widgets.Freerun.FR_RetriesNumbersBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_InfoWidget = registerVal1
function CoD.FR_InfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_InfoWidget)
	registerVal2.id = "FR_InfoWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 316.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 206.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.freerun_InfoBoxBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 24.000000, 230.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 206.000000)
	registerVal3:setRGB(0.730000, 0.730000, 0.730000)
	registerVal2:addElement(registerVal3)
	registerVal2.freerunInfoBoxBlur = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 27.250000, 210.000000)
	registerVal4:setTopBottom(true, false, 65.160000, 101.870000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal4:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal4)
	registerVal2.Box1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 27.250000, 210.000000)
	registerVal5:setTopBottom(true, false, 103.160000, 139.870000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.200000)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal5:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal5)
	registerVal2.Box2 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 93.740000, 200.990000)
	registerVal6:setTopBottom(true, false, 74.000000, 96.000000)
	registerVal6:setText(Engine.Localize("MENU_LB_FAULTS"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.FaultsTextBox = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 23.000000, -96.740000)
	registerVal7:setTopBottom(true, true, 133.290000, -61.060000)
	registerVal7:setAlpha(0.300000)
	registerVal7:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_line"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.InfoLineBoxBottom = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 23.000000, -96.740000)
	registerVal8:setTopBottom(true, true, 0.200000, -194.150000)
	registerVal8:setAlpha(0.300000)
	registerVal8:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_line"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.InfoBoxLineTop = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 24.000000, -95.740000)
	registerVal9:setTopBottom(true, true, 58.580000, -135.760000)
	registerVal9:setAlpha(0.300000)
	registerVal9:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_line"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.InfoBoxLineMiddle = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal10:setTopBottom(false, false, -98.730000, -95.230000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.SideElement1 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal11:setTopBottom(false, false, -40.340000, -36.840000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.SideElement2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal12:setTopBottom(false, false, 34.370000, 37.870000)
	registerVal12:setZRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.SideElement3 = registerVal12
	local registerVal13 = CoD.FR_BestTimeHud.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 20.000000, 221.000000)
	registerVal13:setTopBottom(true, false, 1.270000, 63.660000)
	local function __FUNC_166C_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_166C_)
	registerVal2:addElement(registerVal13)
	registerVal2.FRBestTimeHud = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 204.000000, 240.000000)
	registerVal14:setTopBottom(false, false, -98.730000, -95.230000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 204.000000, 240.000000)
	registerVal15:setTopBottom(false, false, -39.340000, -35.840000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image1 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 204.000000, 240.000000)
	registerVal16:setTopBottom(false, false, 35.090000, 38.590000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Image2 = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 93.740000, 200.990000)
	registerVal17:setTopBottom(true, false, 109.510000, 131.510000)
	registerVal17:setText(Engine.Localize("MENU_FR_RETRIES"))
	registerVal17:setTTF("fonts/escom.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal17)
	registerVal2.RetriesText = registerVal17
	local registerVal18 = CoD.FR_FaultsNumberBox.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 27.250000, 77.740000)
	registerVal18:setTopBottom(true, false, 65.160000, 101.870000)
	local function __FUNC_16BE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.FaultsNumber:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:linkToElementModel(registerVal2, "faults", true, __FUNC_16BE_)
	registerVal2:addElement(registerVal18)
	registerVal2.FRFaultsNumberBox = registerVal18
	local registerVal19 = CoD.FR_RetriesNumbersBox.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 27.250000, 77.740000)
	registerVal19:setTopBottom(true, false, 103.160000, 139.870000)
	local function __FUNC_1798_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.RetriesNumber:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal19:linkToElementModel(registerVal2, "retries", true, __FUNC_1798_)
	registerVal2:addElement(registerVal19)
	registerVal2.FRRetriesNumbersBox = registerVal19
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_1875_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal21.DefaultClip = __FUNC_1875_
	local function __FUNC_18D6_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_19C0_(arg0, arg1)
			local function __FUNC_1B46_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1B46_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(1.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B46_)
		end

		registerVal6:completeAnimation()
		registerVal2.FaultsTextBox:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_19C0_(registerVal6, {})
	end

	registerVal21.FaultAnim = __FUNC_18D6_
	registerVal20.DefaultState = registerVal21
	registerVal2.clipsPerState = registerVal20
	local function __FUNC_1CFF_(arg0)
		arg0.freerunInfoBoxBlur:close()
		arg0.FRBestTimeHud:close()
		arg0.FRFaultsNumberBox:close()
		arg0.FRRetriesNumbersBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CFF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

