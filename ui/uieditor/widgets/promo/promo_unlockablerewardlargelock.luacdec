-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Promo.Promo_RewardImage")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Promo_UnlockableRewardLargeLock = registerVal1
function CoD.Promo_UnlockableRewardLargeLock.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_UnlockableRewardLargeLock)
	registerVal2.id = "Promo_UnlockableRewardLargeLock"
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
	local function __FUNC_263C_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_263C_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "CallingCard"
	local function __FUNC_268E_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isContractBG")
	end

	registerVal8.condition = __FUNC_268E_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_2704_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isContractBG"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "isContractBG", true, __FUNC_2704_)
	registerVal2:addElement(registerVal4)
	registerVal2.PromoRewardImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 36.000000, 288.000000)
	registerVal5:setTopBottom(true, false, 5.500000, 68.500000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_community_bgb_locked"))
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
	local function __FUNC_2826_()
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

	registerVal34.DefaultClip = __FUNC_2826_
	local function __FUNC_331B_()
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

	registerVal34.Complete = __FUNC_331B_
	registerVal33.DefaultState = registerVal34
	registerVal34 = {}
	local function __FUNC_3EAF_()
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

	registerVal34.DefaultClip = __FUNC_3EAF_
	local function __FUNC_49D2_()
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
		local function __FUNC_54CC_(arg0, arg1)
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
		__FUNC_54CC_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.NearCompleteLineGlow3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_5681_(arg0, arg1)
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
		__FUNC_5681_(registerVal8, {})
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

	registerVal34.NearComplete = __FUNC_49D2_
	registerVal33.Locked = registerVal34
	registerVal34 = {}
	local function __FUNC_5835_()
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

	registerVal34.DefaultClip = __FUNC_5835_
	local function __FUNC_638E_()
		registerVal2:setupElementClipCounter(28.000000)
		registerVal3:completeAnimation()
		registerVal2.Frame:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_7264_(arg0, arg1)
			local function __FUNC_73BC_(arg0, arg1)
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
				__FUNC_73BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73BC_)
		end

		registerVal4:completeAnimation()
		registerVal2.PromoRewardImage:setAlpha(0.400000)
		__FUNC_7264_(registerVal4, {})
		local function __FUNC_7571_(arg0, arg1)
			local function __FUNC_76C8_(arg0, arg1)
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
				__FUNC_76C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76C8_)
		end

		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		__FUNC_7571_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NearCompleteLineGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_787D_(arg0, arg1)
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
		__FUNC_787D_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NearCompleteLineGlow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_7A31_(arg0, arg1)
			local function __FUNC_7B88_(arg0, arg1)
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
				__FUNC_7B88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B88_)
		end

		registerVal9:completeAnimation()
		registerVal2.CompleteGlowBack:setAlpha(0.000000)
		__FUNC_7A31_(registerVal9, {})
		local function __FUNC_7D3D_(arg0, arg1)
			local function __FUNC_7E94_(arg0, arg1)
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
				__FUNC_7E94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E94_)
		end

		registerVal10:completeAnimation()
		registerVal2.CompleteGlowBack2:setAlpha(0.000000)
		__FUNC_7D3D_(registerVal10, {})
		local function __FUNC_8049_(arg0, arg1)
			local function __FUNC_81A0_(arg0, arg1)
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
				__FUNC_81A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81A0_)
		end

		registerVal11:completeAnimation()
		registerVal2.CompleteLineGlow0:setAlpha(0.000000)
		__FUNC_8049_(registerVal11, {})
		local function __FUNC_8355_(arg0, arg1)
			local function __FUNC_84AC_(arg0, arg1)
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
				__FUNC_84AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84AC_)
		end

		registerVal12:completeAnimation()
		registerVal2.CompleteLineGlow1:setAlpha(0.000000)
		__FUNC_8355_(registerVal12, {})
		local function __FUNC_8661_(arg0, arg1)
			local function __FUNC_87B8_(arg0, arg1)
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
				__FUNC_87B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87B8_)
		end

		registerVal13:completeAnimation()
		registerVal2.CompleteLineGlow2:setAlpha(0.000000)
		__FUNC_8661_(registerVal13, {})
		local function __FUNC_896D_(arg0, arg1)
			local function __FUNC_8B26_(arg0, arg1)
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
				__FUNC_8B26_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setShaderVector(0.000000, 0.000000, 0.055556, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B26_)
		end

		registerVal14:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal14:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal14:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal14:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal14:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_896D_)
		local function __FUNC_8E03_(arg0, arg1)
			local function __FUNC_8F58_(arg0, arg1)
				local function __FUNC_90F6_(arg0, arg1)
					local function __FUNC_9292_(arg0, arg1)
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
						__FUNC_9292_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.670000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9292_)
				end

				if arg1.interrupted then
					__FUNC_90F6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90F6_)
			end

			if arg1.interrupted then
				__FUNC_8F58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F58_)
		end

		registerVal15:completeAnimation()
		registerVal2.CompleteGlowCenter:setAlpha(0.000000)
		registerVal2.CompleteGlowCenter:setScale(1.000000)
		__FUNC_8E03_(registerVal15, {})
		local function __FUNC_9463_(arg0, arg1)
			local function __FUNC_95B8_(arg0, arg1)
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
				__FUNC_95B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95B8_)
		end

		registerVal16:completeAnimation()
		registerVal2.CompleteFrameBarTop:setAlpha(0.000000)
		__FUNC_9463_(registerVal16, {})
		local function __FUNC_976D_(arg0, arg1)
			local function __FUNC_98C4_(arg0, arg1)
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
				__FUNC_98C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98C4_)
		end

		registerVal17:completeAnimation()
		registerVal2.CompleteFrameBarBottom:setAlpha(0.000000)
		__FUNC_976D_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.GlowBarBlurBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.GlowBarBlurTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_9A79_(arg0, arg1)
			local function __FUNC_9BD0_(arg0, arg1)
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
				__FUNC_9BD0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BD0_)
		end

		registerVal20:completeAnimation()
		registerVal2.CompleteGlowSide:setAlpha(0.000000)
		__FUNC_9A79_(registerVal20, {})
		local function __FUNC_9D85_(arg0, arg1)
			local function __FUNC_9EDC_(arg0, arg1)
				local function __FUNC_A057_(arg0, arg1)
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
					__FUNC_A057_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A057_)
			end

			if arg1.interrupted then
				__FUNC_9EDC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EDC_)
		end

		registerVal21:completeAnimation()
		registerVal2.CompleteGlowBack0:setAlpha(0.000000)
		__FUNC_9D85_(registerVal21, {})
		local function __FUNC_A209_(arg0, arg1)
			local function __FUNC_A360_(arg0, arg1)
				local function __FUNC_A4DB_(arg0, arg1)
					local function __FUNC_A68B_(arg0, arg1)
						local function __FUNC_A85E_(arg0, arg1)
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
							__FUNC_A85E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -8.940000, 28.150000)
						arg0:setAlpha(0.310000)
						arg0:setScale(1.360000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A85E_)
					end

					if arg1.interrupted then
						__FUNC_A68B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -7.680000, 29.400000)
					arg0:setScale(1.180000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A68B_)
				end

				if arg1.interrupted then
					__FUNC_A4DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4DB_)
			end

			if arg1.interrupted then
				__FUNC_A360_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A360_)
		end

		registerVal22:completeAnimation()
		registerVal2.CompletedPulse1:setLeftRight(true, false, -6.420000, 30.660000)
		registerVal2.CompletedPulse1:setTopBottom(true, false, 9.130000, 64.750000)
		registerVal2.CompletedPulse1:setAlpha(0.000000)
		registerVal2.CompletedPulse1:setScale(1.000000)
		__FUNC_A209_(registerVal22, {})
		local function __FUNC_AAA4_(arg0, arg1)
			local function __FUNC_ABFC_(arg0, arg1)
				local function __FUNC_ADE7_(arg0, arg1)
					local function __FUNC_AF97_(arg0, arg1)
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
						__FUNC_AF97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 196.390000, 270.490000)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF97_)
				end

				if arg1.interrupted then
					__FUNC_ADE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 79.150000, 153.250000)
				arg0:setTopBottom(true, false, 15.950000, 123.050000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADE7_)
			end

			if arg1.interrupted then
				__FUNC_ABFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABFC_)
		end

		registerVal24:completeAnimation()
		registerVal2.GlowFrame:setLeftRight(true, false, 7.500000, 81.600000)
		registerVal2.GlowFrame:setTopBottom(true, false, 15.950000, 123.050000)
		registerVal2.GlowFrame:setAlpha(0.000000)
		__FUNC_AAA4_(registerVal24, {})
		local function __FUNC_B1B9_(arg0, arg1)
			local function __FUNC_B310_(arg0, arg1)
				local function __FUNC_B4C3_(arg0, arg1)
					local function __FUNC_B673_(arg0, arg1)
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
						__FUNC_B673_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 196.390000, 270.490000)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B673_)
				end

				if arg1.interrupted then
					__FUNC_B4C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 79.150000, 153.250000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4C3_)
			end

			if arg1.interrupted then
				__FUNC_B310_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B310_)
		end

		registerVal25:completeAnimation()
		registerVal2.GlowFrame0:setLeftRight(true, false, 7.500000, 81.600000)
		registerVal2.GlowFrame0:setTopBottom(true, false, -47.350000, 59.750000)
		registerVal2.GlowFrame0:setAlpha(0.000000)
		__FUNC_B1B9_(registerVal25, {})
		local function __FUNC_B895_(arg0, arg1)
			local function __FUNC_B9EC_(arg0, arg1)
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
				__FUNC_B9EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9EC_)
		end

		registerVal27:completeAnimation()
		registerVal2.Tick2:setAlpha(0.000000)
		__FUNC_B895_(registerVal27, {})
		local function __FUNC_BBA1_(arg0, arg1)
			local function __FUNC_BCF8_(arg0, arg1)
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
				__FUNC_BCF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCF8_)
		end

		registerVal28:completeAnimation()
		registerVal2.FlipbookAdd20:setAlpha(0.000000)
		__FUNC_BBA1_(registerVal28, {})
		local function __FUNC_BEAD_(arg0, arg1)
			local function __FUNC_C004_(arg0, arg1)
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
				__FUNC_C004_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C004_)
		end

		registerVal29:completeAnimation()
		registerVal2.FlipbookAdd:setAlpha(0.000000)
		__FUNC_BEAD_(registerVal29, {})
		local function __FUNC_C1B9_(arg0, arg1)
			local function __FUNC_C310_(arg0, arg1)
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
				__FUNC_C310_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C310_)
		end

		registerVal30:completeAnimation()
		registerVal2.FlipbookAdd2:setAlpha(0.000000)
		registerVal2.FlipbookAdd2:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
		registerVal2.FlipbookAdd2:setShaderVector(0.000000, 5.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlipbookAdd2:setShaderVector(1.000000, 15.500000, 0.000000, 0.000000, 0.000000)
		__FUNC_C1B9_(registerVal30, {})
		local function __FUNC_C5BA_(arg0, arg1)
			local function __FUNC_C710_(arg0, arg1)
				local function __FUNC_C88B_(arg0, arg1)
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
					__FUNC_C88B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C88B_)
			end

			if arg1.interrupted then
				__FUNC_C710_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C710_)
		end

		registerVal31:completeAnimation()
		registerVal2.GlowFrame00:setAlpha(0.000000)
		__FUNC_C5BA_(registerVal31, {})
		local function __FUNC_CA3D_(arg0, arg1)
			local function __FUNC_CB94_(arg0, arg1)
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
				__FUNC_CB94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB94_)
		end

		registerVal32:completeAnimation()
		registerVal2.Tick20:setAlpha(0.000000)
		__FUNC_CA3D_(registerVal32, {})
	end

	registerVal34.Complete = __FUNC_638E_
	registerVal33.NearComplete = registerVal34
	registerVal34 = {}
	local function __FUNC_CD49_()
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
		local function __FUNC_D941_(arg0, arg1)
			local function __FUNC_DABB_(arg0, arg1)
				local function __FUNC_DC33_(arg0, arg1)
					local function __FUNC_DDAB_(arg0, arg1)
						local function __FUNC_DF23_(arg0, arg1)
							local function __FUNC_E078_(arg0, arg1)
								local function __FUNC_E1F3_(arg0, arg1)
									local function __FUNC_E36B_(arg0, arg1)
										local function __FUNC_E4E3_(arg0, arg1)
											local function __FUNC_E65B_(arg0, arg1)
												local function __FUNC_E7D3_(arg0, arg1)
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
													__FUNC_E7D3_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.780000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E7D3_)
											end

											if arg1.interrupted then
												__FUNC_E65B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E65B_)
										end

										if arg1.interrupted then
											__FUNC_E4E3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4E3_)
									end

									if arg1.interrupted then
										__FUNC_E36B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E36B_)
								end

								if arg1.interrupted then
									__FUNC_E1F3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.640000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1F3_)
							end

							if arg1.interrupted then
								__FUNC_E078_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E078_)
						end

						if arg1.interrupted then
							__FUNC_DF23_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF23_)
					end

					if arg1.interrupted then
						__FUNC_DDAB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.750000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDAB_)
				end

				if arg1.interrupted then
					__FUNC_DC33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC33_)
			end

			if arg1.interrupted then
				__FUNC_DABB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.760000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DABB_)
		end

		registerVal7:completeAnimation()
		registerVal2.NearCompleteLineGlow3:setAlpha(1.000000)
		__FUNC_D941_(registerVal7, {})
		local function __FUNC_E985_(arg0, arg1)
			local function __FUNC_EAFF_(arg0, arg1)
				local function __FUNC_EC77_(arg0, arg1)
					local function __FUNC_EDEF_(arg0, arg1)
						local function __FUNC_EF67_(arg0, arg1)
							local function __FUNC_F0BC_(arg0, arg1)
								local function __FUNC_F237_(arg0, arg1)
									local function __FUNC_F3AF_(arg0, arg1)
										local function __FUNC_F527_(arg0, arg1)
											local function __FUNC_F69F_(arg0, arg1)
												local function __FUNC_F817_(arg0, arg1)
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
													__FUNC_F817_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.760000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F817_)
											end

											if arg1.interrupted then
												__FUNC_F69F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F69F_)
										end

										if arg1.interrupted then
											__FUNC_F527_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.680000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F527_)
									end

									if arg1.interrupted then
										__FUNC_F3AF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3AF_)
								end

								if arg1.interrupted then
									__FUNC_F237_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.640000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F237_)
							end

							if arg1.interrupted then
								__FUNC_F0BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0BC_)
						end

						if arg1.interrupted then
							__FUNC_EF67_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF67_)
					end

					if arg1.interrupted then
						__FUNC_EDEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.750000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDEF_)
				end

				if arg1.interrupted then
					__FUNC_EC77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC77_)
			end

			if arg1.interrupted then
				__FUNC_EAFF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.760000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EAFF_)
		end

		registerVal8:completeAnimation()
		registerVal2.NearCompleteLineGlow2:setAlpha(1.000000)
		__FUNC_E985_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CompleteGlowBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_F9C9_(arg0, arg1)
			local function __FUNC_FB43_(arg0, arg1)
				local function __FUNC_FCBB_(arg0, arg1)
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
					__FUNC_FCBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.320000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCBB_)
			end

			if arg1.interrupted then
				__FUNC_FB43_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.060000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB43_)
		end

		registerVal10:completeAnimation()
		registerVal2.CompleteGlowBack2:setAlpha(0.250000)
		__FUNC_F9C9_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CompleteLineGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_FE6D_(arg0, arg1)
			local function __FUNC_FFE7_(arg0, arg1)
				local function __FUNC_1015F_(arg0, arg1)
					local function __FUNC_102D7_(arg0, arg1)
						local function __FUNC_1044F_(arg0, arg1)
							local function __FUNC_105C7_(arg0, arg1)
								local function __FUNC_1073F_(arg0, arg1)
									local function __FUNC_108B7_(arg0, arg1)
										local function __FUNC_10A2F_(arg0, arg1)
											local function __FUNC_10BA7_(arg0, arg1)
												local function __FUNC_10D1F_(arg0, arg1)
													local function __FUNC_10E97_(arg0, arg1)
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
														__FUNC_10E97_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.530000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E97_)
												end

												if arg1.interrupted then
													__FUNC_10D1F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D1F_)
											end

											if arg1.interrupted then
												__FUNC_10BA7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.590000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BA7_)
										end

										if arg1.interrupted then
											__FUNC_10A2F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A2F_)
									end

									if arg1.interrupted then
										__FUNC_108B7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.640000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108B7_)
								end

								if arg1.interrupted then
									__FUNC_1073F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1073F_)
							end

							if arg1.interrupted then
								__FUNC_105C7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.620000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_105C7_)
						end

						if arg1.interrupted then
							__FUNC_1044F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1044F_)
					end

					if arg1.interrupted then
						__FUNC_102D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102D7_)
				end

				if arg1.interrupted then
					__FUNC_1015F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1015F_)
			end

			if arg1.interrupted then
				__FUNC_FFE7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.590000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FFE7_)
		end

		registerVal12:completeAnimation()
		registerVal2.CompleteLineGlow1:setAlpha(1.000000)
		__FUNC_FE6D_(registerVal12, {})
		local function __FUNC_11049_(arg0, arg1)
			local function __FUNC_111A0_(arg0, arg1)
				local function __FUNC_1131B_(arg0, arg1)
					local function __FUNC_11493_(arg0, arg1)
						local function __FUNC_1160B_(arg0, arg1)
							local function __FUNC_11783_(arg0, arg1)
								local function __FUNC_118D8_(arg0, arg1)
									local function __FUNC_11A53_(arg0, arg1)
										local function __FUNC_11BCB_(arg0, arg1)
											local function __FUNC_11D43_(arg0, arg1)
												local function __FUNC_11EBB_(arg0, arg1)
													local function __FUNC_12033_(arg0, arg1)
														local function __FUNC_121AB_(arg0, arg1)
															local function __FUNC_12323_(arg0, arg1)
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
																__FUNC_12323_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.690000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12323_)
														end

														if arg1.interrupted then
															__FUNC_121AB_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121AB_)
													end

													if arg1.interrupted then
														__FUNC_12033_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.530000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12033_)
												end

												if arg1.interrupted then
													__FUNC_11EBB_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11EBB_)
											end

											if arg1.interrupted then
												__FUNC_11D43_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.420000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D43_)
										end

										if arg1.interrupted then
											__FUNC_11BCB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BCB_)
									end

									if arg1.interrupted then
										__FUNC_11A53_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.700000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A53_)
								end

								if arg1.interrupted then
									__FUNC_118D8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 829.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118D8_)
							end

							if arg1.interrupted then
								__FUNC_11783_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11783_)
						end

						if arg1.interrupted then
							__FUNC_1160B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1160B_)
					end

					if arg1.interrupted then
						__FUNC_11493_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11493_)
				end

				if arg1.interrupted then
					__FUNC_1131B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1131B_)
			end

			if arg1.interrupted then
				__FUNC_111A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_111A0_)
		end

		registerVal13:completeAnimation()
		registerVal2.CompleteLineGlow2:setAlpha(1.000000)
		__FUNC_11049_(registerVal13, {})
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
		local function __FUNC_124D5_(arg0, arg1)
			local function __FUNC_1264F_(arg0, arg1)
				local function __FUNC_127C7_(arg0, arg1)
					local function __FUNC_1293F_(arg0, arg1)
						local function __FUNC_12AB7_(arg0, arg1)
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
							__FUNC_12AB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.590000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12AB7_)
					end

					if arg1.interrupted then
						__FUNC_1293F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1293F_)
				end

				if arg1.interrupted then
					__FUNC_127C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.580000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_127C7_)
			end

			if arg1.interrupted then
				__FUNC_1264F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1264F_)
		end

		registerVal18:completeAnimation()
		registerVal2.GlowBarBlurBottom:setAlpha(0.000000)
		__FUNC_124D5_(registerVal18, {})
		local function __FUNC_12C69_(arg0, arg1)
			local function __FUNC_12DE3_(arg0, arg1)
				local function __FUNC_12F5B_(arg0, arg1)
					local function __FUNC_130D3_(arg0, arg1)
						local function __FUNC_1324B_(arg0, arg1)
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
							__FUNC_1324B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1324B_)
					end

					if arg1.interrupted then
						__FUNC_130D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.390000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_130D3_)
				end

				if arg1.interrupted then
					__FUNC_12F5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F5B_)
			end

			if arg1.interrupted then
				__FUNC_12DE3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.390000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12DE3_)
		end

		registerVal19:completeAnimation()
		registerVal2.GlowBarBlurTop:setAlpha(0.000000)
		__FUNC_12C69_(registerVal19, {})
		local function __FUNC_133FD_(arg0, arg1)
			local function __FUNC_13577_(arg0, arg1)
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
				__FUNC_13577_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.340000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13577_)
		end

		registerVal20:completeAnimation()
		registerVal2.CompleteGlowSide:setAlpha(1.000000)
		__FUNC_133FD_(registerVal20, {})
		local function __FUNC_13729_(arg0, arg1)
			local function __FUNC_138A3_(arg0, arg1)
				local function __FUNC_13A1B_(arg0, arg1)
					local function __FUNC_13B93_(arg0, arg1)
						local function __FUNC_13D0B_(arg0, arg1)
							local function __FUNC_13E83_(arg0, arg1)
								local function __FUNC_13FFB_(arg0, arg1)
									local function __FUNC_14173_(arg0, arg1)
										local function __FUNC_142EB_(arg0, arg1)
											local function __FUNC_14463_(arg0, arg1)
												local function __FUNC_145DB_(arg0, arg1)
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
													__FUNC_145DB_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.420000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_145DB_)
											end

											if arg1.interrupted then
												__FUNC_14463_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14463_)
										end

										if arg1.interrupted then
											__FUNC_142EB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.260000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142EB_)
									end

									if arg1.interrupted then
										__FUNC_14173_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14173_)
								end

								if arg1.interrupted then
									__FUNC_13FFB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.290000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13FFB_)
							end

							if arg1.interrupted then
								__FUNC_13E83_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.490000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E83_)
						end

						if arg1.interrupted then
							__FUNC_13D0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D0B_)
					end

					if arg1.interrupted then
						__FUNC_13B93_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B93_)
				end

				if arg1.interrupted then
					__FUNC_13A1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A1B_)
			end

			if arg1.interrupted then
				__FUNC_138A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.670000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_138A3_)
		end

		registerVal21:completeAnimation()
		registerVal2.CompleteGlowBack0:setAlpha(1.000000)
		__FUNC_13729_(registerVal21, {})
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
		local function __FUNC_1478D_(arg0, arg1)
			local function __FUNC_14907_(arg0, arg1)
				local function __FUNC_14A5C_(arg0, arg1)
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
					__FUNC_14A5C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A5C_)
			end

			if arg1.interrupted then
				__FUNC_14907_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.410000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14907_)
		end

		registerVal31:completeAnimation()
		registerVal2.GlowFrame00:setAlpha(0.000000)
		__FUNC_1478D_(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.Tick20:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal32, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal34.DefaultClip = __FUNC_CD49_
	registerVal33.Complete = registerVal34
	registerVal2.clipsPerState = registerVal33
	local registerVal35 = {}
	local registerVal36 = {}
	registerVal36.stateName = "Locked"
	local function __FUNC_14C11_(arg0, arg1, arg2)
		return IsElementInState(arg1, "Locked")
	end

	registerVal36.condition = __FUNC_14C11_
	local registerVal37 = {}
	registerVal37.stateName = "NearComplete"
	local function __FUNC_14C7A_(arg0, arg1, arg2)
		return IsElementInState(arg1, "NearComplete")
	end

	registerVal37.condition = __FUNC_14C7A_
	local registerVal38 = {}
	registerVal38.stateName = "Complete"
	local function __FUNC_14CE8_(arg0, arg1, arg2)
		return IsElementInState(arg1, "Complete")
	end

	registerVal38.condition = __FUNC_14CE8_
	registerVal35 = {registerVal36, registerVal37, registerVal38}
	registerVal2:mergeStateConditions(registerVal35)
	local function __FUNC_14D54_(arg0)
		arg0.PromoRewardImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_14D54_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

