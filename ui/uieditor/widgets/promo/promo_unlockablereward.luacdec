-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Promo.Promo_RewardImage")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Promo_UnlockableReward = registerVal1
function CoD.Promo_UnlockableReward.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_UnlockableReward)
	registerVal2.id = "Promo_UnlockableReward"
	registerVal2.soundSet = "Blackmarket_extra"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 75.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 75.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_frame"))
	registerVal2:addElement(registerVal3)
	registerVal2.Frame = registerVal3
	local registerVal4 = CoD.Promo_RewardImage.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 36.000000, 288.000000)
	registerVal4:setTopBottom(true, false, 5.500000, 68.500000)
	registerVal4:setAlpha(0.400000)
	local function __FUNC_2642_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_2642_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "CallingCard"
	local function __FUNC_2692_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isContractBG")
	end

	registerVal8.condition = __FUNC_2692_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_2708_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isContractBG"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "isContractBG", true, __FUNC_2708_)
	registerVal2:addElement(registerVal4)
	registerVal2.PromoRewardImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 117.000000, 206.000000)
	registerVal5:setTopBottom(true, false, 10.250000, 54.750000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_lock"))
	registerVal2:addElement(registerVal5)
	registerVal2.Lock = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -9.000000, 25.000000)
	registerVal6:setTopBottom(true, false, 24.500000, 58.500000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_circuitbottom"))
	registerVal2:addElement(registerVal6)
	registerVal2.NearCompleteLineGlow = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -42.740000, -6.800000)
	registerVal7:setTopBottom(true, false, 0.000000, 44.500000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_topglowline"))
	registerVal2:addElement(registerVal7)
	registerVal2.NearCompleteLineGlow3 = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -42.740000, -6.800000)
	registerVal8:setTopBottom(true, false, 32.000000, 76.500000)
	registerVal8:setXRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_topglowline"))
	registerVal2:addElement(registerVal8)
	registerVal2.NearCompleteLineGlow2 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -43.900000, 86.600000)
	registerVal9:setTopBottom(true, false, -26.750000, 103.750000)
	registerVal9:setXRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glow1"))
	registerVal2:addElement(registerVal9)
	registerVal2.CompleteGlowBack = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -44.000000, 94.000000)
	registerVal10:setTopBottom(true, false, -26.750000, 111.250000)
	registerVal10:setAlpha(0.250000)
	registerVal10:setXRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glow2"))
	registerVal2:addElement(registerVal10)
	registerVal2.CompleteGlowBack2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -17.800000, 61.500000)
	registerVal11:setTopBottom(true, false, -2.800000, 76.500000)
	registerVal11:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_circuitback"))
	registerVal2:addElement(registerVal11)
	registerVal2.CompleteLineGlow0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -5.500000, 30.500000)
	registerVal12:setTopBottom(true, false, 20.000000, 56.000000)
	registerVal12:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_circuitfull"))
	registerVal2:addElement(registerVal12)
	registerVal2.CompleteLineGlow1 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -9.650000, 52.350000)
	registerVal13:setTopBottom(true, false, 7.500000, 69.500000)
	registerVal13:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_circuitthick"))
	registerVal2:addElement(registerVal13)
	registerVal2.CompleteLineGlow2 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -48.150000, 26.850000)
	registerVal14:setTopBottom(true, false, 23.710000, 52.290000)
	registerVal14:setXRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_centerline"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal14:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.CompleteLineCenter = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -62.150000, -9.650000)
	registerVal15:setTopBottom(true, false, 12.250000, 64.750000)
	registerVal15:setXRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_centerglow"))
	registerVal2:addElement(registerVal15)
	registerVal2.CompleteGlowCenter = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 18.500000, 308.830000)
	registerVal16:setTopBottom(true, false, -8.890000, 19.790000)
	registerVal16:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_framebar"))
	registerVal2:addElement(registerVal16)
	registerVal2.CompleteFrameBarTop = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 18.500000, 308.830000)
	registerVal17:setTopBottom(true, false, 54.250000, 82.920000)
	registerVal17:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_framebar"))
	registerVal2:addElement(registerVal17)
	registerVal2.CompleteFrameBarBottom = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 18.500000, 308.830000)
	registerVal18:setTopBottom(true, false, 53.590000, 82.920000)
	registerVal18:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_framebarblur"))
	registerVal2:addElement(registerVal18)
	registerVal2.GlowBarBlurBottom = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 18.500000, 308.830000)
	registerVal19:setTopBottom(true, false, -8.890000, 19.790000)
	registerVal19:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_framebarblur"))
	registerVal2:addElement(registerVal19)
	registerVal2.GlowBarBlurTop = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, -22.880000, 40.500000)
	registerVal20:setTopBottom(true, false, 3.000000, 71.670000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_frameglow"))
	registerVal2:addElement(registerVal20)
	registerVal2.CompleteGlowSide = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, -19.400000, 52.350000)
	registerVal21:setTopBottom(true, false, 0.980000, 72.730000)
	registerVal21:setXRot(180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glow1"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.CompleteGlowBack0 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, -6.420000, 30.660000)
	registerVal22:setTopBottom(true, false, 9.130000, 64.750000)
	registerVal22:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_circuitpulse1"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.CompletedPulse1 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 20.850000, 294.670000)
	registerVal23:setTopBottom(true, false, 54.250000, 70.300000)
	registerVal23:setAlpha(0.250000)
	registerVal23:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_textbar"))
	registerVal2:addElement(registerVal23)
	registerVal2.BlackTextBar = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 26.850000, 100.950000)
	registerVal24:setTopBottom(true, false, 15.950000, 123.050000)
	registerVal24:setZRot(90.000000)
	registerVal24:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_lineglow"))
	registerVal2:addElement(registerVal24)
	registerVal2.GlowFrame = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, false, 26.850000, 100.950000)
	registerVal25:setTopBottom(true, false, -47.350000, 59.750000)
	registerVal25:setZRot(90.000000)
	registerVal25:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_lineglow"))
	registerVal2:addElement(registerVal25)
	registerVal2.GlowFrame0 = registerVal25
	local registerVal26 = LUI.UIText.new()
	registerVal26:setLeftRight(true, false, 38.170000, 292.340000)
	registerVal26:setTopBottom(true, false, 53.590000, 69.590000)
	registerVal26:setAlpha(0.700000)
	registerVal26:setText(Engine.Localize("MENU_NEW"))
	registerVal26:setTTF("fonts/default.ttf")
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal26)
	registerVal2.TextBox0 = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(true, false, 292.340000, 320.340000)
	registerVal27:setTopBottom(false, false, 29.090000, 33.090000)
	registerVal27:setAlpha(0.500000)
	registerVal27:setZRot(180.000000)
	registerVal27:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal27)
	registerVal2.Tick2 = registerVal27
	local registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(true, false, -22.880000, 34.620000)
	registerVal28:setTopBottom(true, false, 30.750000, 53.750000)
	registerVal28:setAlpha(0.000000)
	registerVal28:setScale(0.600000)
	registerVal28:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_spark_flipbook"))
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal28:setShaderVector(0.000000, 5.000000, 0.000000, 0.000000, 0.000000)
	registerVal28:setShaderVector(1.000000, 7.670000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal28)
	registerVal2.FlipbookAdd20 = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(true, false, -21.840000, 35.660000)
	registerVal29:setTopBottom(true, false, 27.000000, 50.000000)
	registerVal29:setAlpha(0.000000)
	registerVal29:setZRot(-90.000000)
	registerVal29:setScale(0.400000)
	registerVal29:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_spark_flipbook"))
	registerVal29:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal29:setShaderVector(0.000000, 5.000000, 0.000000, 0.000000, 0.000000)
	registerVal29:setShaderVector(1.000000, 7.670000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal29)
	registerVal2.FlipbookAdd = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(true, false, -21.840000, 35.660000)
	registerVal30:setTopBottom(true, false, 27.000000, 50.000000)
	registerVal30:setAlpha(0.470000)
	registerVal30:setZRot(-90.000000)
	registerVal30:setScale(0.400000)
	registerVal30:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_spark_flipbook"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal30:setShaderVector(0.000000, 5.000000, 0.000000, 0.000000, 0.000000)
	registerVal30:setShaderVector(1.000000, 7.670000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal30)
	registerVal2.FlipbookAdd2 = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(true, false, -163.050000, 170.050000)
	registerVal31:setTopBottom(true, false, -26.750000, 105.350000)
	registerVal31:setAlpha(0.600000)
	registerVal31:setZRot(90.000000)
	registerVal31:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_lineglow"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.GlowFrame00 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(true, false, 292.340000, 320.340000)
	registerVal32:setTopBottom(false, false, -34.300000, -30.300000)
	registerVal32:setAlpha(0.500000)
	registerVal32:setZRot(180.000000)
	registerVal32:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.Tick20 = registerVal32
	local registerVal33 = {}
	local registerVal34 = {}
	local function __FUNC_282A_()
		registerVal2:setupElementClipCounter(28.000000)
		registerVal3:completeAnimation()
		registerVal2.Frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Image:completeAnimation()
		registerVal2.PromoRewardImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NearCompleteLineGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.NearCompleteLineGlow3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NearCompleteLineGlow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CompleteGlowBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CompleteGlowBack2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CompleteLineGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompleteLineGlow1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CompleteLineGlow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompleteLineCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CompleteGlowCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CompleteFrameBarTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompleteFrameBarBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.GlowBarBlurBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.GlowBarBlurTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.CompleteGlowSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.CompleteGlowBack0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.CompletedPulse1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal24:completeAnimation()
		registerVal2.GlowFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.GlowFrame0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal27:completeAnimation()
		registerVal2.Tick2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.FlipbookAdd20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.FlipbookAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.FlipbookAdd2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.GlowFrame00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.Tick20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal32, {})
	end

	registerVal34.DefaultClip = __FUNC_282A_
	local function __FUNC_331F_()
		registerVal2:setupElementClipCounter(27.000000)
		registerVal3:completeAnimation()
		registerVal2.Frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NearCompleteLineGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.NearCompleteLineGlow3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NearCompleteLineGlow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CompleteGlowBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CompleteGlowBack2:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CompleteLineGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompleteLineGlow1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CompleteLineGlow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompleteLineCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CompleteGlowCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CompleteFrameBarTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompleteFrameBarBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.GlowBarBlurBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.GlowBarBlurTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.CompleteGlowSide:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.CompleteGlowBack0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.CompletedPulse1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal24:completeAnimation()
		registerVal2.GlowFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.GlowFrame0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal27:completeAnimation()
		registerVal2.Tick2:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.FlipbookAdd20:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.FlipbookAdd:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.FlipbookAdd2:setAlpha(0.500000)
		registerVal2.FlipbookAdd2:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
		registerVal2.FlipbookAdd2:setShaderVector(0.000000, 5.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlipbookAdd2:setShaderVector(1.000000, 15.500000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.GlowFrame00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.Tick20:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal32, {})
	end

	registerVal34.Complete = __FUNC_331F_
	registerVal33.DefaultState = registerVal34
	registerVal34 = {}
	local function __FUNC_3EB3_()
		registerVal2:setupElementClipCounter(29.000000)
		registerVal3:completeAnimation()
		registerVal2.Frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PromoRewardImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NearCompleteLineGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.NearCompleteLineGlow3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NearCompleteLineGlow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CompleteGlowBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CompleteGlowBack2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CompleteLineGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompleteLineGlow1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CompleteLineGlow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompleteLineCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CompleteGlowCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CompleteFrameBarTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompleteFrameBarBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.GlowBarBlurBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.GlowBarBlurTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.CompleteGlowSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.CompleteGlowBack0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.CompletedPulse1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal24:completeAnimation()
		registerVal2.GlowFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.GlowFrame0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.TextBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.Tick2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.FlipbookAdd20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.FlipbookAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.FlipbookAdd2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.GlowFrame00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.Tick20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal32, {})
	end

	registerVal34.DefaultClip = __FUNC_3EB3_
	local function __FUNC_49D6_()
		registerVal2:setupElementClipCounter(28.000000)
		registerVal3:completeAnimation()
		registerVal2.Frame:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PromoRewardImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_54D0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.NearCompleteLineGlow:setAlpha(0.000000)
		__FUNC_54D0_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.NearCompleteLineGlow3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_5685_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.NearCompleteLineGlow2:setAlpha(0.000000)
		__FUNC_5685_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CompleteGlowBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CompleteGlowBack2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CompleteLineGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompleteLineGlow1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CompleteLineGlow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompleteLineCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CompleteGlowCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CompleteFrameBarTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompleteFrameBarBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.GlowBarBlurBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.GlowBarBlurTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.CompleteGlowSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.CompleteGlowBack0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.CompletedPulse1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal24:completeAnimation()
		registerVal2.GlowFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.GlowFrame0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal27:completeAnimation()
		registerVal2.Tick2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.FlipbookAdd20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.FlipbookAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.FlipbookAdd2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.GlowFrame00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.Tick20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal32, {})
	end

	registerVal34.NearComplete = __FUNC_49D6_
	registerVal33.Locked = registerVal34
	registerVal34 = {}
	local function __FUNC_5839_()
		registerVal2:setupElementClipCounter(29.000000)
		registerVal3:completeAnimation()
		registerVal2.Frame:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PromoRewardImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NearCompleteLineGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.NearCompleteLineGlow3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NearCompleteLineGlow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CompleteGlowBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CompleteGlowBack2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CompleteLineGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompleteLineGlow1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CompleteLineGlow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompleteLineCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CompleteGlowCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CompleteFrameBarTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompleteFrameBarBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.GlowBarBlurBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.GlowBarBlurTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.CompleteGlowSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.CompleteGlowBack0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.CompletedPulse1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal24:completeAnimation()
		registerVal2.GlowFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.GlowFrame0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.TextBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.Tick2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.FlipbookAdd20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.FlipbookAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.FlipbookAdd2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.GlowFrame00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.Tick20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal32, {})
	end

	registerVal34.DefaultClip = __FUNC_5839_
	local function __FUNC_6392_()
		registerVal2:setupElementClipCounter(28.000000)
		registerVal3:completeAnimation()
		registerVal2.Frame:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_7268_(arg0, arg1)
			local function __FUNC_73C0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_73C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73C0_)
		end

		registerVal4:completeAnimation()
		registerVal2.PromoRewardImage:setAlpha(0.400000)
		__FUNC_7268_(registerVal4, {})
		local function __FUNC_7575_(arg0, arg1)
			local function __FUNC_76CC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 379.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_76CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76CC_)
		end

		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		__FUNC_7575_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NearCompleteLineGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_7881_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.NearCompleteLineGlow3:setAlpha(0.000000)
		__FUNC_7881_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NearCompleteLineGlow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_7A35_(arg0, arg1)
			local function __FUNC_7B8C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 209.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7B8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B8C_)
		end

		registerVal9:completeAnimation()
		registerVal2.CompleteGlowBack:setAlpha(0.000000)
		__FUNC_7A35_(registerVal9, {})
		local function __FUNC_7D41_(arg0, arg1)
			local function __FUNC_7E98_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 209.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.250000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7E98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E98_)
		end

		registerVal10:completeAnimation()
		registerVal2.CompleteGlowBack2:setAlpha(0.000000)
		__FUNC_7D41_(registerVal10, {})
		local function __FUNC_804D_(arg0, arg1)
			local function __FUNC_81A4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 279.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_81A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81A4_)
		end

		registerVal11:completeAnimation()
		registerVal2.CompleteLineGlow0:setAlpha(0.000000)
		__FUNC_804D_(registerVal11, {})
		local function __FUNC_8359_(arg0, arg1)
			local function __FUNC_84B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_84B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84B0_)
		end

		registerVal12:completeAnimation()
		registerVal2.CompleteLineGlow1:setAlpha(0.000000)
		__FUNC_8359_(registerVal12, {})
		local function __FUNC_8665_(arg0, arg1)
			local function __FUNC_87BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_87BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87BC_)
		end

		registerVal13:completeAnimation()
		registerVal2.CompleteLineGlow2:setAlpha(0.000000)
		__FUNC_8665_(registerVal13, {})
		local function __FUNC_8971_(arg0, arg1)
			local function __FUNC_8B2A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
				arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8B2A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setShaderVector(0.000000, 0.000000, 0.055556, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B2A_)
		end

		registerVal14:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal14:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal14:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal14:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal14:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_8971_)
		local function __FUNC_8E07_(arg0, arg1)
			local function __FUNC_8F5C_(arg0, arg1)
				local function __FUNC_90FA_(arg0, arg1)
					local function __FUNC_9296_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_9296_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.670000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9296_)
				end

				if arg1.interrupted then
					__FUNC_90FA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90FA_)
			end

			if arg1.interrupted then
				__FUNC_8F5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F5C_)
		end

		registerVal15:completeAnimation()
		registerVal2.CompleteGlowCenter:setAlpha(0.000000)
		registerVal2.CompleteGlowCenter:setScale(1.000000)
		__FUNC_8E07_(registerVal15, {})
		local function __FUNC_9467_(arg0, arg1)
			local function __FUNC_95BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 209.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_95BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95BC_)
		end

		registerVal16:completeAnimation()
		registerVal2.CompleteFrameBarTop:setAlpha(0.000000)
		__FUNC_9467_(registerVal16, {})
		local function __FUNC_9771_(arg0, arg1)
			local function __FUNC_98C8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 209.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_98C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98C8_)
		end

		registerVal17:completeAnimation()
		registerVal2.CompleteFrameBarBottom:setAlpha(0.000000)
		__FUNC_9771_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.GlowBarBlurBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.GlowBarBlurTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_9A7D_(arg0, arg1)
			local function __FUNC_9BD4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9BD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BD4_)
		end

		registerVal20:completeAnimation()
		registerVal2.CompleteGlowSide:setAlpha(0.000000)
		__FUNC_9A7D_(registerVal20, {})
		local function __FUNC_9D89_(arg0, arg1)
			local function __FUNC_9EE0_(arg0, arg1)
				local function __FUNC_A05B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_A05B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A05B_)
			end

			if arg1.interrupted then
				__FUNC_9EE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EE0_)
		end

		registerVal21:completeAnimation()
		registerVal2.CompleteGlowBack0:setAlpha(0.000000)
		__FUNC_9D89_(registerVal21, {})
		local function __FUNC_A20D_(arg0, arg1)
			local function __FUNC_A364_(arg0, arg1)
				local function __FUNC_A4DF_(arg0, arg1)
					local function __FUNC_A68F_(arg0, arg1)
						local function __FUNC_A862_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, -10.650000, 26.430000)
							arg0:setTopBottom(true, false, 9.130000, 64.750000)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.600000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_A862_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -8.940000, 28.150000)
						arg0:setAlpha(0.310000)
						arg0:setScale(1.360000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A862_)
					end

					if arg1.interrupted then
						__FUNC_A68F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -7.680000, 29.400000)
					arg0:setScale(1.180000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A68F_)
				end

				if arg1.interrupted then
					__FUNC_A4DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4DF_)
			end

			if arg1.interrupted then
				__FUNC_A364_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A364_)
		end

		registerVal22:completeAnimation()
		registerVal2.CompletedPulse1:setLeftRight(true, false, -6.420000, 30.660000)
		registerVal2.CompletedPulse1:setTopBottom(true, false, 9.130000, 64.750000)
		registerVal2.CompletedPulse1:setAlpha(0.000000)
		registerVal2.CompletedPulse1:setScale(1.000000)
		__FUNC_A20D_(registerVal22, {})
		local function __FUNC_AAA8_(arg0, arg1)
			local function __FUNC_AC00_(arg0, arg1)
				local function __FUNC_ADEB_(arg0, arg1)
					local function __FUNC_AF9B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 248.500000, 322.600000)
						arg0:setTopBottom(true, false, 15.950000, 123.050000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_AF9B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 196.390000, 270.490000)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF9B_)
				end

				if arg1.interrupted then
					__FUNC_ADEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 79.150000, 153.250000)
				arg0:setTopBottom(true, false, 15.950000, 123.050000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADEB_)
			end

			if arg1.interrupted then
				__FUNC_AC00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC00_)
		end

		registerVal24:completeAnimation()
		registerVal2.GlowFrame:setLeftRight(true, false, 7.500000, 81.600000)
		registerVal2.GlowFrame:setTopBottom(true, false, 15.950000, 123.050000)
		registerVal2.GlowFrame:setAlpha(0.000000)
		__FUNC_AAA8_(registerVal24, {})
		local function __FUNC_B1BD_(arg0, arg1)
			local function __FUNC_B314_(arg0, arg1)
				local function __FUNC_B4C7_(arg0, arg1)
					local function __FUNC_B677_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 248.500000, 322.600000)
						arg0:setTopBottom(true, false, -47.350000, 59.750000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B677_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 196.390000, 270.490000)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B677_)
				end

				if arg1.interrupted then
					__FUNC_B4C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 79.150000, 153.250000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4C7_)
			end

			if arg1.interrupted then
				__FUNC_B314_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B314_)
		end

		registerVal25:completeAnimation()
		registerVal2.GlowFrame0:setLeftRight(true, false, 7.500000, 81.600000)
		registerVal2.GlowFrame0:setTopBottom(true, false, -47.350000, 59.750000)
		registerVal2.GlowFrame0:setAlpha(0.000000)
		__FUNC_B1BD_(registerVal25, {})
		local function __FUNC_B899_(arg0, arg1)
			local function __FUNC_B9F0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B9F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9F0_)
		end

		registerVal27:completeAnimation()
		registerVal2.Tick2:setAlpha(0.000000)
		__FUNC_B899_(registerVal27, {})
		local function __FUNC_BBA5_(arg0, arg1)
			local function __FUNC_BCFC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BCFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCFC_)
		end

		registerVal28:completeAnimation()
		registerVal2.FlipbookAdd20:setAlpha(0.000000)
		__FUNC_BBA5_(registerVal28, {})
		local function __FUNC_BEB1_(arg0, arg1)
			local function __FUNC_C008_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.900000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C008_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C008_)
		end

		registerVal29:completeAnimation()
		registerVal2.FlipbookAdd:setAlpha(0.000000)
		__FUNC_BEB1_(registerVal29, {})
		local function __FUNC_C1BD_(arg0, arg1)
			local function __FUNC_C314_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
				arg0:setShaderVector(0.000000, 5.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 15.500000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C314_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C314_)
		end

		registerVal30:completeAnimation()
		registerVal2.FlipbookAdd2:setAlpha(0.000000)
		registerVal2.FlipbookAdd2:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
		registerVal2.FlipbookAdd2:setShaderVector(0.000000, 5.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlipbookAdd2:setShaderVector(1.000000, 15.500000, 0.000000, 0.000000, 0.000000)
		__FUNC_C1BD_(registerVal30, {})
		local function __FUNC_C5BE_(arg0, arg1)
			local function __FUNC_C714_(arg0, arg1)
				local function __FUNC_C88F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_C88F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C88F_)
			end

			if arg1.interrupted then
				__FUNC_C714_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C714_)
		end

		registerVal31:completeAnimation()
		registerVal2.GlowFrame00:setAlpha(0.000000)
		__FUNC_C5BE_(registerVal31, {})
		local function __FUNC_CA41_(arg0, arg1)
			local function __FUNC_CB98_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CB98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB98_)
		end

		registerVal32:completeAnimation()
		registerVal2.Tick20:setAlpha(0.000000)
		__FUNC_CA41_(registerVal32, {})
	end

	registerVal34.Complete = __FUNC_6392_
	registerVal33.NearComplete = registerVal34
	registerVal34 = {}
	local function __FUNC_CD4D_()
		registerVal2:setupElementClipCounter(28.000000)
		registerVal3:completeAnimation()
		registerVal2.Frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NearCompleteLineGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_D945_(arg0, arg1)
			local function __FUNC_DABF_(arg0, arg1)
				local function __FUNC_DC37_(arg0, arg1)
					local function __FUNC_DDAF_(arg0, arg1)
						local function __FUNC_DF27_(arg0, arg1)
							local function __FUNC_E07C_(arg0, arg1)
								local function __FUNC_E1F7_(arg0, arg1)
									local function __FUNC_E36F_(arg0, arg1)
										local function __FUNC_E4E7_(arg0, arg1)
											local function __FUNC_E65F_(arg0, arg1)
												local function __FUNC_E7D7_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_E7D7_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.780000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E7D7_)
											end

											if arg1.interrupted then
												__FUNC_E65F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E65F_)
										end

										if arg1.interrupted then
											__FUNC_E4E7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4E7_)
									end

									if arg1.interrupted then
										__FUNC_E36F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E36F_)
								end

								if arg1.interrupted then
									__FUNC_E1F7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.640000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1F7_)
							end

							if arg1.interrupted then
								__FUNC_E07C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E07C_)
						end

						if arg1.interrupted then
							__FUNC_DF27_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF27_)
					end

					if arg1.interrupted then
						__FUNC_DDAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.750000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDAF_)
				end

				if arg1.interrupted then
					__FUNC_DC37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC37_)
			end

			if arg1.interrupted then
				__FUNC_DABF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.760000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DABF_)
		end

		registerVal7:completeAnimation()
		registerVal2.NearCompleteLineGlow3:setAlpha(1.000000)
		__FUNC_D945_(registerVal7, {})
		local function __FUNC_E989_(arg0, arg1)
			local function __FUNC_EB03_(arg0, arg1)
				local function __FUNC_EC7B_(arg0, arg1)
					local function __FUNC_EDF3_(arg0, arg1)
						local function __FUNC_EF6B_(arg0, arg1)
							local function __FUNC_F0C0_(arg0, arg1)
								local function __FUNC_F23B_(arg0, arg1)
									local function __FUNC_F3B3_(arg0, arg1)
										local function __FUNC_F52B_(arg0, arg1)
											local function __FUNC_F6A3_(arg0, arg1)
												local function __FUNC_F81B_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_F81B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.760000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F81B_)
											end

											if arg1.interrupted then
												__FUNC_F6A3_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6A3_)
										end

										if arg1.interrupted then
											__FUNC_F52B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.680000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F52B_)
									end

									if arg1.interrupted then
										__FUNC_F3B3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3B3_)
								end

								if arg1.interrupted then
									__FUNC_F23B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.640000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F23B_)
							end

							if arg1.interrupted then
								__FUNC_F0C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0C0_)
						end

						if arg1.interrupted then
							__FUNC_EF6B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF6B_)
					end

					if arg1.interrupted then
						__FUNC_EDF3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.750000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDF3_)
				end

				if arg1.interrupted then
					__FUNC_EC7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC7B_)
			end

			if arg1.interrupted then
				__FUNC_EB03_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.760000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB03_)
		end

		registerVal8:completeAnimation()
		registerVal2.NearCompleteLineGlow2:setAlpha(1.000000)
		__FUNC_E989_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CompleteGlowBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_F9CD_(arg0, arg1)
			local function __FUNC_FB47_(arg0, arg1)
				local function __FUNC_FCBF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.250000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_FCBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.320000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCBF_)
			end

			if arg1.interrupted then
				__FUNC_FB47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.060000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB47_)
		end

		registerVal10:completeAnimation()
		registerVal2.CompleteGlowBack2:setAlpha(0.250000)
		__FUNC_F9CD_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CompleteLineGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_FE71_(arg0, arg1)
			local function __FUNC_FFEB_(arg0, arg1)
				local function __FUNC_10163_(arg0, arg1)
					local function __FUNC_102DB_(arg0, arg1)
						local function __FUNC_10453_(arg0, arg1)
							local function __FUNC_105CB_(arg0, arg1)
								local function __FUNC_10743_(arg0, arg1)
									local function __FUNC_108BB_(arg0, arg1)
										local function __FUNC_10A33_(arg0, arg1)
											local function __FUNC_10BAB_(arg0, arg1)
												local function __FUNC_10D23_(arg0, arg1)
													local function __FUNC_10E9B_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setAlpha(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_10E9B_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.530000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E9B_)
												end

												if arg1.interrupted then
													__FUNC_10D23_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D23_)
											end

											if arg1.interrupted then
												__FUNC_10BAB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.590000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BAB_)
										end

										if arg1.interrupted then
											__FUNC_10A33_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A33_)
									end

									if arg1.interrupted then
										__FUNC_108BB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.640000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108BB_)
								end

								if arg1.interrupted then
									__FUNC_10743_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10743_)
							end

							if arg1.interrupted then
								__FUNC_105CB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.620000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_105CB_)
						end

						if arg1.interrupted then
							__FUNC_10453_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10453_)
					end

					if arg1.interrupted then
						__FUNC_102DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102DB_)
				end

				if arg1.interrupted then
					__FUNC_10163_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10163_)
			end

			if arg1.interrupted then
				__FUNC_FFEB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.590000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FFEB_)
		end

		registerVal12:completeAnimation()
		registerVal2.CompleteLineGlow1:setAlpha(1.000000)
		__FUNC_FE71_(registerVal12, {})
		local function __FUNC_1104D_(arg0, arg1)
			local function __FUNC_111A4_(arg0, arg1)
				local function __FUNC_1131F_(arg0, arg1)
					local function __FUNC_11497_(arg0, arg1)
						local function __FUNC_1160F_(arg0, arg1)
							local function __FUNC_11787_(arg0, arg1)
								local function __FUNC_118DC_(arg0, arg1)
									local function __FUNC_11A57_(arg0, arg1)
										local function __FUNC_11BCF_(arg0, arg1)
											local function __FUNC_11D47_(arg0, arg1)
												local function __FUNC_11EBF_(arg0, arg1)
													local function __FUNC_12037_(arg0, arg1)
														local function __FUNC_121AF_(arg0, arg1)
															local function __FUNC_12327_(arg0, arg1)
																if not arg1.interrupted then
																	arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
																end
																arg0:setAlpha(1.000000)
																if arg1.interrupted then
																	registerVal2.clipFinished(arg0, arg1)
																else
																	arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																end
															end

															if arg1.interrupted then
																__FUNC_12327_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.690000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12327_)
														end

														if arg1.interrupted then
															__FUNC_121AF_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121AF_)
													end

													if arg1.interrupted then
														__FUNC_12037_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.530000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12037_)
												end

												if arg1.interrupted then
													__FUNC_11EBF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11EBF_)
											end

											if arg1.interrupted then
												__FUNC_11D47_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.420000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D47_)
										end

										if arg1.interrupted then
											__FUNC_11BCF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BCF_)
									end

									if arg1.interrupted then
										__FUNC_11A57_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.700000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A57_)
								end

								if arg1.interrupted then
									__FUNC_118DC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 829.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118DC_)
							end

							if arg1.interrupted then
								__FUNC_11787_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11787_)
						end

						if arg1.interrupted then
							__FUNC_1160F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1160F_)
					end

					if arg1.interrupted then
						__FUNC_11497_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11497_)
				end

				if arg1.interrupted then
					__FUNC_1131F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1131F_)
			end

			if arg1.interrupted then
				__FUNC_111A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_111A4_)
		end

		registerVal13:completeAnimation()
		registerVal2.CompleteLineGlow2:setAlpha(1.000000)
		__FUNC_1104D_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompleteLineCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CompleteGlowCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CompleteFrameBarTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompleteFrameBarBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_124D9_(arg0, arg1)
			local function __FUNC_12653_(arg0, arg1)
				local function __FUNC_127CB_(arg0, arg1)
					local function __FUNC_12943_(arg0, arg1)
						local function __FUNC_12ABB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_12ABB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.590000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12ABB_)
					end

					if arg1.interrupted then
						__FUNC_12943_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12943_)
				end

				if arg1.interrupted then
					__FUNC_127CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.580000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_127CB_)
			end

			if arg1.interrupted then
				__FUNC_12653_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12653_)
		end

		registerVal18:completeAnimation()
		registerVal2.GlowBarBlurBottom:setAlpha(0.000000)
		__FUNC_124D9_(registerVal18, {})
		local function __FUNC_12C6D_(arg0, arg1)
			local function __FUNC_12DE7_(arg0, arg1)
				local function __FUNC_12F5F_(arg0, arg1)
					local function __FUNC_130D7_(arg0, arg1)
						local function __FUNC_1324F_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1324F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1324F_)
					end

					if arg1.interrupted then
						__FUNC_130D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.390000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_130D7_)
				end

				if arg1.interrupted then
					__FUNC_12F5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F5F_)
			end

			if arg1.interrupted then
				__FUNC_12DE7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.390000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12DE7_)
		end

		registerVal19:completeAnimation()
		registerVal2.GlowBarBlurTop:setAlpha(0.000000)
		__FUNC_12C6D_(registerVal19, {})
		local function __FUNC_13401_(arg0, arg1)
			local function __FUNC_1357B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1357B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.340000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1357B_)
		end

		registerVal20:completeAnimation()
		registerVal2.CompleteGlowSide:setAlpha(1.000000)
		__FUNC_13401_(registerVal20, {})
		local function __FUNC_1372D_(arg0, arg1)
			local function __FUNC_138A7_(arg0, arg1)
				local function __FUNC_13A1F_(arg0, arg1)
					local function __FUNC_13B97_(arg0, arg1)
						local function __FUNC_13D0F_(arg0, arg1)
							local function __FUNC_13E87_(arg0, arg1)
								local function __FUNC_13FFF_(arg0, arg1)
									local function __FUNC_14177_(arg0, arg1)
										local function __FUNC_142EF_(arg0, arg1)
											local function __FUNC_14467_(arg0, arg1)
												local function __FUNC_145DF_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_145DF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.420000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_145DF_)
											end

											if arg1.interrupted then
												__FUNC_14467_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14467_)
										end

										if arg1.interrupted then
											__FUNC_142EF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.260000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142EF_)
									end

									if arg1.interrupted then
										__FUNC_14177_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14177_)
								end

								if arg1.interrupted then
									__FUNC_13FFF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.290000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13FFF_)
							end

							if arg1.interrupted then
								__FUNC_13E87_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.490000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E87_)
						end

						if arg1.interrupted then
							__FUNC_13D0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D0F_)
					end

					if arg1.interrupted then
						__FUNC_13B97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B97_)
				end

				if arg1.interrupted then
					__FUNC_13A1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A1F_)
			end

			if arg1.interrupted then
				__FUNC_138A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.670000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_138A7_)
		end

		registerVal21:completeAnimation()
		registerVal2.CompleteGlowBack0:setAlpha(1.000000)
		__FUNC_1372D_(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.CompletedPulse1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal24:completeAnimation()
		registerVal2.GlowFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.GlowFrame0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.TextBox0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.Tick2:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.FlipbookAdd20:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.FlipbookAdd:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.FlipbookAdd2:setAlpha(0.500000)
		registerVal2.FlipbookAdd2:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
		registerVal2.FlipbookAdd2:setShaderVector(0.000000, 5.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlipbookAdd2:setShaderVector(1.000000, 15.500000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal30, {})
		local function __FUNC_14791_(arg0, arg1)
			local function __FUNC_1490B_(arg0, arg1)
				local function __FUNC_14A60_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_14A60_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A60_)
			end

			if arg1.interrupted then
				__FUNC_1490B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.410000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1490B_)
		end

		registerVal31:completeAnimation()
		registerVal2.GlowFrame00:setAlpha(0.000000)
		__FUNC_14791_(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.Tick20:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal32, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal34.DefaultClip = __FUNC_CD4D_
	registerVal33.Complete = registerVal34
	registerVal2.clipsPerState = registerVal33
	local registerVal35 = {}
	local registerVal36 = {}
	registerVal36.stateName = "Locked"
	local function __FUNC_14C15_(arg0, arg1, arg2)
		return IsElementInState(arg1, "Locked")
	end

	registerVal36.condition = __FUNC_14C15_
	local registerVal37 = {}
	registerVal37.stateName = "NearComplete"
	local function __FUNC_14C7E_(arg0, arg1, arg2)
		return IsElementInState(arg1, "NearComplete")
	end

	registerVal37.condition = __FUNC_14C7E_
	local registerVal38 = {}
	registerVal38.stateName = "Complete"
	local function __FUNC_14CEC_(arg0, arg1, arg2)
		return IsElementInState(arg1, "Complete")
	end

	registerVal38.condition = __FUNC_14CEC_
	registerVal35 = {registerVal36, registerVal37, registerVal38}
	registerVal2:mergeStateConditions(registerVal35)
	local function __FUNC_14D58_(arg0)
		arg0.PromoRewardImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_14D58_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

