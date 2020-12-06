-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_EnemyScorePanel")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_UserScorePanel")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelTimer")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelCircle")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_BackCircleInner")
require("ui.uieditor.widgets.HUD.ScoreInfo.StatusContainer")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_Timer")
require("ui.uieditor.widgets.HUD.ScoreInfo.RoundsContainer")
require("ui.uieditor.widgets.HUD.ScoreInfo.UserScoreContainer")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_EnemyScoreContainer")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_FactionContainer")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Dot")
local function __FUNC_57B_(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "gameScore.gameTimeLow")
	Engine.SetModelValue(registerVal3, 0.000000)
end

local function __FUNC_66B_(arg0)
	arg0:setupGameTimer()
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo = registerVal3
local function __FUNC_6B4_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_57B_ then
		__FUNC_57B_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo)
	registerVal2.id = "ScoreInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 614.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_EnemyScorePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 302.060000, 461.060000)
	registerVal3:setTopBottom(true, false, 155.620000, 192.620000)
	registerVal3:setZoom(-10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.EnemyScorePanel = registerVal3
	local registerVal4 = CoD.ScoreInfo_UserScorePanel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 304.200000, 527.200000)
	registerVal4:setTopBottom(true, false, 121.120000, 166.120000)
	registerVal4:setZoom(-10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.UserScorePanel = registerVal4
	local registerVal5 = CoD.ScoreInfo_PanelTimer.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 234.670000, 298.670000)
	registerVal5:setTopBottom(true, false, 77.330000, 117.330000)
	registerVal5:setZoom(-15.000000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Active"
	local function __FUNC_1E78_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueGreaterThan(arg1, "gameScore.gameTimeEnd", 0.000000)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "gameScore.gameTimeLow", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_1E78_
	local registerVal10 = {}
	registerVal10.stateName = "TimeLow"
	local function __FUNC_1F62_(arg0, arg2, arg3)
		return IsModelValueGreaterThan(arg1, "gameScore.gameTimeEnd", 0.000000)
	end

	registerVal10.condition = __FUNC_1F62_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "gameScore.gameTimeEnd")
	local function __FUNC_1FE9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.gameTimeEnd"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1FE9_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "gameScore.gameTimeLow")
	local function __FUNC_2113_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.gameTimeLow"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_2113_)
	registerVal2:addElement(registerVal5)
	registerVal2.PanelTimer = registerVal5
	local registerVal6 = CoD.ScoreInfo_PanelCircle.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 222.670000, 310.670000)
	registerVal6:setTopBottom(true, false, 104.620000, 192.620000)
	registerVal6:setZoom(-10.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.PanelCircle = registerVal6
	local registerVal7 = CoD.DamageWidget_BackCircleInner.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 222.360000, 308.990000)
	registerVal7:setTopBottom(true, false, 107.310000, 190.620000)
	registerVal7:setAlpha(0.200000)
	registerVal7:setZoom(-2.000000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BackCircleInner = registerVal7
	registerVal8 = CoD.StatusContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 122.000000, 412.000000)
	registerVal8:setTopBottom(true, false, 192.620000, 208.620000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal8:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.PrimaryStatus = registerVal8
	registerVal9 = CoD.ScoreInfo_Timer.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 194.180000, 339.160000)
	registerVal9:setTopBottom(true, false, 93.380000, 174.120000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Active"
	local function __FUNC_223B_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueGreaterThan(arg1, "gameScore.gameTimeEnd", 0.000000)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "gameScore.gameTimeLow", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_223B_
	local registerVal14 = {}
	registerVal14.stateName = "TimeLow"
	local function __FUNC_2322_(arg0, arg2, arg3)
		return IsModelValueGreaterThan(arg1, "gameScore.gameTimeEnd", 0.000000)
	end

	registerVal14.condition = __FUNC_2322_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "gameScore.gameTimeEnd")
	local function __FUNC_23A9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.gameTimeEnd"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_23A9_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "gameScore.gameTimeLow")
	local function __FUNC_24D3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.gameTimeLow"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_24D3_)
	registerVal2:addElement(registerVal9)
	registerVal2.GameTimer = registerVal9
	registerVal10 = CoD.RoundsContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 301.060000, 395.340000)
	registerVal10:setTopBottom(true, false, 74.630000, 138.000000)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Invisible"
	local function __FUNC_25FB_(arg0, arg2, arg3)
		return IsSingleRound(arg1)
	end

	registerVal14.condition = __FUNC_25FB_
	local registerVal15 = {}
	registerVal15.stateName = "Overtime"
	local function __FUNC_264B_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_OVERTIME)
		return registerVal3
	end

	registerVal15.condition = __FUNC_264B_
	local registerVal16 = {}
	registerVal16.stateName = "Infected"
	local function __FUNC_2715_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("infect")
	end

	registerVal16.condition = __FUNC_2715_
	local registerVal17 = {}
	registerVal17.stateName = "RoundBasedNoLimit"
	local function __FUNC_2781_(arg0, arg2, arg3)
		local registerVal3 = HasRoundLimit(arg1)
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_2781_
	local registerVal18 = {}
	registerVal18.stateName = "RoundBasedLimitedRounds"
	local function __FUNC_27D7_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal18.condition = __FUNC_27D7_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_OVERTIME))
	local function __FUNC_2820_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_OVERTIME)
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_2820_)
	registerVal2:addElement(registerVal10)
	registerVal2.RoundsContainer = registerVal10
	local registerVal11 = CoD.UserScoreContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 304.200000, 550.200000)
	registerVal11:setTopBottom(true, false, 121.120000, 166.120000)
	registerVal11:setRGB(0.800000, 0.800000, 0.800000)
	registerVal11:setZoom(3.000000)
	registerVal11:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal11:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 10.000000, -3.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, 2.000000, 2.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_29A7_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:subscribeToGlobalModel(arg1, "GameScore", nil, __FUNC_29A7_)
	registerVal2:addElement(registerVal11)
	registerVal2.UserScore = registerVal11
	registerVal12 = CoD.ScoreInfo_EnemyScoreContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 302.060000, 492.060000)
	registerVal12:setTopBottom(true, false, 155.620000, 192.620000)
	registerVal12:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal12:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 5.000000, -4.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(3.000000, 2.000000, 2.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_29F6_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:subscribeToGlobalModel(arg1, "GameScore", nil, __FUNC_29F6_)
	registerVal2:addElement(registerVal12)
	registerVal2.EnemyScore = registerVal12
	registerVal13 = CoD.ScoreInfo_FactionContainer.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -75.800000, -3.800000)
	registerVal13:setTopBottom(false, false, -12.710000, 59.960000)
	local function __FUNC_2A46_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.factionalliesAdd:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "Factions", "alliesFactionIcon", __FUNC_2A46_)
	local function __FUNC_2B1E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.factionaxisAdd:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "Factions", "axisFactionIcon", __FUNC_2B1E_)
	registerVal2:addElement(registerVal13)
	registerVal2.FactionContainer = registerVal13
	registerVal14 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 305.000000, 309.000000)
	registerVal14:setTopBottom(true, false, 115.000000, 119.000000)
	registerVal14:setAlpha(0.600000)
	registerVal14:setZoom(5.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.Dot3 = registerVal14
	registerVal15 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 305.000000, 309.000000)
	registerVal15:setTopBottom(true, false, 186.000000, 190.000000)
	registerVal15:setAlpha(0.600000)
	registerVal15:setZoom(5.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.Dot5 = registerVal15
	registerVal16 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 222.000000, 226.000000)
	registerVal16:setTopBottom(true, false, 115.000000, 119.000000)
	registerVal16:setAlpha(0.600000)
	registerVal16:setZoom(5.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.Dot6 = registerVal16
	registerVal17 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 222.000000, 226.000000)
	registerVal17:setTopBottom(true, false, 186.000000, 190.000000)
	registerVal17:setAlpha(0.600000)
	registerVal17:setZoom(5.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.Dot7 = registerVal17
	registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_2BF4_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.EnemyScorePanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UserScorePanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PanelTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.PanelCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BackCircleInner:setAlpha(0.000000)
		registerVal2.BackCircleInner:setZoom(10.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrimaryStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Semi:completeAnimation()
		registerVal9.Line1:completeAnimation()
		registerVal9.Line2:completeAnimation()
		registerVal2.GameTimer:setAlpha(0.000000)
		registerVal2.GameTimer.Semi:setAlpha(0.000000)
		registerVal2.GameTimer.Line1:setAlpha(0.000000)
		registerVal2.GameTimer.Line2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RoundsContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.UserScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.EnemyScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FactionContainer:setLeftRight(false, false, -76.330000, -4.330000)
		registerVal2.FactionContainer:setTopBottom(false, false, -12.710000, 59.960000)
		registerVal2.FactionContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 220.000000, 224.000000)
		registerVal2.Dot3:setTopBottom(true, false, 145.000000, 149.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Dot5:setLeftRight(true, false, 220.000000, 224.000000)
		registerVal2.Dot5:setTopBottom(true, false, 144.970000, 148.970000)
		registerVal2.Dot5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Dot6:setLeftRight(true, false, 222.000000, 226.000000)
		registerVal2.Dot6:setTopBottom(true, false, 145.000000, 149.000000)
		registerVal2.Dot6:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Dot7:setLeftRight(true, false, 222.000000, 226.000000)
		registerVal2.Dot7:setTopBottom(true, false, 144.970000, 148.970000)
		registerVal2.Dot7:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_2BF4_
	local function __FUNC_34DF_()
		registerVal2:setupElementClipCounter(15.000000)
		local function __FUNC_3D11_(arg0, arg1)
			local function __FUNC_3E68_(arg0, arg1)
				local function __FUNC_3FE3_(arg0, arg1)
					local function __FUNC_4138_(arg0, arg1)
						local function __FUNC_42B3_(arg0, arg1)
							local function __FUNC_442B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_442B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_442B_)
						end

						if arg1.interrupted then
							__FUNC_42B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42B3_)
					end

					if arg1.interrupted then
						__FUNC_4138_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4138_)
				end

				if arg1.interrupted then
					__FUNC_3FE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FE3_)
			end

			if arg1.interrupted then
				__FUNC_3E68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E68_)
		end

		registerVal3:completeAnimation()
		registerVal2.EnemyScorePanel:setAlpha(0.000000)
		__FUNC_3D11_(registerVal3, {})
		local function __FUNC_45DD_(arg0, arg1)
			local function __FUNC_4734_(arg0, arg1)
				local function __FUNC_48AF_(arg0, arg1)
					local function __FUNC_4A04_(arg0, arg1)
						local function __FUNC_4B7F_(arg0, arg1)
							local function __FUNC_4CF7_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4CF7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CF7_)
						end

						if arg1.interrupted then
							__FUNC_4B7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B7F_)
					end

					if arg1.interrupted then
						__FUNC_4A04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A04_)
				end

				if arg1.interrupted then
					__FUNC_48AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48AF_)
			end

			if arg1.interrupted then
				__FUNC_4734_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 910.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4734_)
		end

		registerVal4:completeAnimation()
		registerVal2.UserScorePanel:setAlpha(0.000000)
		__FUNC_45DD_(registerVal4, {})
		local function __FUNC_4EA9_(arg0, arg1)
			local function __FUNC_5000_(arg0, arg1)
				local function __FUNC_517B_(arg0, arg1)
					local function __FUNC_52D0_(arg0, arg1)
						local function __FUNC_544B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_544B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_544B_)
					end

					if arg1.interrupted then
						__FUNC_52D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52D0_)
				end

				if arg1.interrupted then
					__FUNC_517B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_517B_)
			end

			if arg1.interrupted then
				__FUNC_5000_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1059.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5000_)
		end

		registerVal5:completeAnimation()
		registerVal2.PanelTimer:setAlpha(0.000000)
		__FUNC_4EA9_(registerVal5, {})
		local function __FUNC_55FD_(arg0, arg1)
			local function __FUNC_5754_(arg0, arg1)
				local function __FUNC_58CF_(arg0, arg1)
					local function __FUNC_5A24_(arg0, arg1)
						local function __FUNC_5B9F_(arg0, arg1)
							local function __FUNC_5D17_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_5D17_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D17_)
						end

						if arg1.interrupted then
							__FUNC_5B9F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B9F_)
					end

					if arg1.interrupted then
						__FUNC_5A24_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A24_)
				end

				if arg1.interrupted then
					__FUNC_58CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58CF_)
			end

			if arg1.interrupted then
				__FUNC_5754_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 980.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5754_)
		end

		registerVal6:completeAnimation()
		registerVal2.PanelCircle:setAlpha(0.000000)
		__FUNC_55FD_(registerVal6, {})
		local function __FUNC_5EC9_(arg0, arg1)
			local function __FUNC_6020_(arg0, arg1)
				local function __FUNC_61BD_(arg0, arg1)
					local function __FUNC_6336_(arg0, arg1)
						local function __FUNC_64D1_(arg0, arg1)
							local function __FUNC_664A_(arg0, arg1)
								local function __FUNC_67E5_(arg0, arg1)
									local function __FUNC_695E_(arg0, arg1)
										local function __FUNC_6AF9_(arg0, arg1)
											local function __FUNC_6C72_(arg0, arg1)
												local function __FUNC_6E0D_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(0.200000)
													arg0:setZoom(-2.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_6E0D_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.200000)
												arg0:setZoom(-2.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E0D_)
											end

											if arg1.interrupted then
												__FUNC_6C72_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:setZoom(-1.080000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C72_)
										end

										if arg1.interrupted then
											__FUNC_6AF9_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:setZoom(0.770000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AF9_)
									end

									if arg1.interrupted then
										__FUNC_695E_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setZoom(1.690000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_695E_)
								end

								if arg1.interrupted then
									__FUNC_67E5_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.200000)
								arg0:setZoom(3.540000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67E5_)
							end

							if arg1.interrupted then
								__FUNC_664A_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(4.460000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_664A_)
						end

						if arg1.interrupted then
							__FUNC_64D1_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(6.310000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64D1_)
					end

					if arg1.interrupted then
						__FUNC_6336_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(7.230000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6336_)
				end

				if arg1.interrupted then
					__FUNC_61BD_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:setZoom(9.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61BD_)
			end

			if arg1.interrupted then
				__FUNC_6020_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6020_)
		end

		registerVal7:completeAnimation()
		registerVal2.BackCircleInner:setAlpha(0.000000)
		registerVal2.BackCircleInner:setZoom(10.000000)
		__FUNC_5EC9_(registerVal7, {})
		local function __FUNC_6FE3_(arg0, arg1)
			local function __FUNC_7138_(arg0, arg1)
				local function __FUNC_72B3_(arg0, arg1)
					local function __FUNC_7408_(arg0, arg1)
						local function __FUNC_7583_(arg0, arg1)
							local function __FUNC_76D8_(arg0, arg1)
								local function __FUNC_7853_(arg0, arg1)
									local function __FUNC_79A8_(arg0, arg1)
										local function __FUNC_7B23_(arg0, arg1)
											local function __FUNC_7C78_(arg0, arg1)
												local function __FUNC_7DF3_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_7DF3_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DF3_)
											end

											if arg1.interrupted then
												__FUNC_7C78_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C78_)
										end

										if arg1.interrupted then
											__FUNC_7B23_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B23_)
									end

									if arg1.interrupted then
										__FUNC_79A8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79A8_)
								end

								if arg1.interrupted then
									__FUNC_7853_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7853_)
							end

							if arg1.interrupted then
								__FUNC_76D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76D8_)
						end

						if arg1.interrupted then
							__FUNC_7583_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7583_)
					end

					if arg1.interrupted then
						__FUNC_7408_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7408_)
				end

				if arg1.interrupted then
					__FUNC_72B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72B3_)
			end

			if arg1.interrupted then
				__FUNC_7138_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7138_)
		end

		registerVal8:completeAnimation()
		registerVal2.PrimaryStatus:setAlpha(0.000000)
		__FUNC_6FE3_(registerVal8, {})
		local function __FUNC_7FA5_(arg0, arg1)
			local function __FUNC_80FC_(arg0, arg1)
				local function __FUNC_8277_(arg0, arg1)
					local function __FUNC_83CC_(arg0, arg1)
						local function __FUNC_8547_(arg0, arg1)
							local function __FUNC_869C_(arg0, arg1)
								local function __FUNC_8817_(arg0, arg1)
									local function __FUNC_896C_(arg0, arg1)
										local function __FUNC_8AE7_(arg0, arg1)
											local function __FUNC_8C3C_(arg0, arg1)
												local function __FUNC_8DB7_(arg0, arg1)
													local function __FUNC_8F0C_(arg0, arg1)
														local function __FUNC_90F6_(arg0, arg1)
															local function __FUNC_924C_(arg0, arg1)
																local function __FUNC_9436_(arg0, arg1)
																	local function __FUNC_958C_(arg0, arg1)
																		local function __FUNC_9776_(arg0, arg1)
																			local function __FUNC_995F_(arg0, arg1)
																				local function __FUNC_9AB4_(arg0, arg1)
																					local function __FUNC_9C9E_(arg0, arg1)
																						local function __FUNC_9E87_(arg0, arg1)
																							local function __FUNC_9FDC_(arg0, arg1)
																								local function __FUNC_A1C6_(arg0, arg1)
																									local function __FUNC_A3AF_(arg0, arg1)
																										local function __FUNC_A597_(arg0, arg1)
																											local function __FUNC_A6EC_(arg0, arg1)
																												local function __FUNC_A8D7_(arg0, arg1)
																													local function __FUNC_AABF_(arg0, arg1)
																														local function __FUNC_AC14_(arg0, arg1)
																															local function __FUNC_ADFF_(arg0, arg1)
																																local function __FUNC_AFE7_(arg0, arg1)
																																	local function __FUNC_B13C_(arg0, arg1)
																																		local function __FUNC_B327_(arg0, arg1)
																																			local function __FUNC_B47C_(arg0, arg1)
																																				local function __FUNC_B667_(arg0, arg1)
																																					if not arg1.interrupted then
																																						arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
																																						arg0.Semi:beginAnimation("subkeyframe", 519.000000, false, false, CoD.TweenType.Linear)
																																						arg0.Line1:beginAnimation("subkeyframe", 519.000000, false, false, CoD.TweenType.Linear)
																																						arg0.Line2:beginAnimation("subkeyframe", 519.000000, false, false, CoD.TweenType.Linear)
																																					end
																																					arg0:setAlpha(1.000000)
																																					arg0.Semi:setAlpha(0.600000)
																																					arg0.Line1:setAlpha(0.800000)
																																					arg0.Line2:setAlpha(0.800000)
																																					if arg1.interrupted then
																																						registerVal2.clipFinished(arg0, arg1)
																																					else
																																						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																					end
																																				end

																																				if arg1.interrupted then
																																					__FUNC_B667_(arg0, arg1)
																																					return 
																																				end
																																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																				arg0.Line2:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																				arg0.Line2:setAlpha(0.800000)
																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B667_)
																																			end

																																			if arg1.interrupted then
																																				__FUNC_B47C_(arg0, arg1)
																																				return 
																																			end
																																			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B47C_)
																																		end

																																		if arg1.interrupted then
																																			__FUNC_B327_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																		arg0.Line2:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																		arg0.Line2:setAlpha(0.000000)
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B327_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_B13C_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B13C_)
																																end

																																if arg1.interrupted then
																																	__FUNC_AFE7_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																arg0.Line2:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																arg0.Line2:setAlpha(0.800000)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFE7_)
																															end

																															if arg1.interrupted then
																																__FUNC_ADFF_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																															arg0.Line1:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																															arg0.Line1:setAlpha(0.800000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADFF_)
																														end

																														if arg1.interrupted then
																															__FUNC_AC14_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC14_)
																													end

																													if arg1.interrupted then
																														__FUNC_AABF_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.Line2:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.Line2:setAlpha(0.000000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AABF_)
																												end

																												if arg1.interrupted then
																													__FUNC_A8D7_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0.Line1:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0.Line1:setAlpha(0.000000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8D7_)
																											end

																											if arg1.interrupted then
																												__FUNC_A6EC_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6EC_)
																										end

																										if arg1.interrupted then
																											__FUNC_A597_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Line2:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Line2:setAlpha(0.800000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A597_)
																									end

																									if arg1.interrupted then
																										__FUNC_A3AF_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.Line1:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.Line1:setAlpha(0.800000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3AF_)
																								end

																								if arg1.interrupted then
																									__FUNC_A1C6_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								arg0.Semi:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								arg0.Semi:setAlpha(0.600000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1C6_)
																							end

																							if arg1.interrupted then
																								__FUNC_9FDC_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FDC_)
																						end

																						if arg1.interrupted then
																							__FUNC_9E87_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																						arg0.Line1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																						arg0.Line1:setAlpha(0.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E87_)
																					end

																					if arg1.interrupted then
																						__FUNC_9C9E_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0.Semi:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0.Semi:setAlpha(0.000000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C9E_)
																				end

																				if arg1.interrupted then
																					__FUNC_9AB4_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9AB4_)
																			end

																			if arg1.interrupted then
																				__FUNC_995F_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0.Line1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0.Line1:setAlpha(0.800000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_995F_)
																		end

																		if arg1.interrupted then
																			__FUNC_9776_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.Semi:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.Semi:setAlpha(0.600000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9776_)
																	end

																	if arg1.interrupted then
																		__FUNC_958C_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_958C_)
																end

																if arg1.interrupted then
																	__FUNC_9436_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.Semi:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.Semi:setAlpha(0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9436_)
															end

															if arg1.interrupted then
																__FUNC_924C_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_924C_)
														end

														if arg1.interrupted then
															__FUNC_90F6_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0.Semi:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0.Semi:setAlpha(0.600000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90F6_)
													end

													if arg1.interrupted then
														__FUNC_8F0C_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F0C_)
												end

												if arg1.interrupted then
													__FUNC_8DB7_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DB7_)
											end

											if arg1.interrupted then
												__FUNC_8C3C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C3C_)
										end

										if arg1.interrupted then
											__FUNC_8AE7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AE7_)
									end

									if arg1.interrupted then
										__FUNC_896C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_896C_)
								end

								if arg1.interrupted then
									__FUNC_8817_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8817_)
							end

							if arg1.interrupted then
								__FUNC_869C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_869C_)
						end

						if arg1.interrupted then
							__FUNC_8547_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8547_)
					end

					if arg1.interrupted then
						__FUNC_83CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83CC_)
				end

				if arg1.interrupted then
					__FUNC_8277_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8277_)
			end

			if arg1.interrupted then
				__FUNC_80FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80FC_)
		end

		registerVal9:completeAnimation()
		registerVal9.Semi:completeAnimation()
		registerVal9.Line1:completeAnimation()
		registerVal9.Line2:completeAnimation()
		registerVal2.GameTimer:setAlpha(0.000000)
		registerVal2.GameTimer.Semi:setAlpha(0.000000)
		registerVal2.GameTimer.Line1:setAlpha(0.000000)
		registerVal2.GameTimer.Line2:setAlpha(0.000000)
		__FUNC_7FA5_(registerVal9, {})
		local function __FUNC_B96C_(arg0, arg1)
			local function __FUNC_BAC4_(arg0, arg1)
				local function __FUNC_BC3F_(arg0, arg1)
					local function __FUNC_BD94_(arg0, arg1)
						local function __FUNC_BF0F_(arg0, arg1)
							local function __FUNC_C064_(arg0, arg1)
								local function __FUNC_C1DF_(arg0, arg1)
									local function __FUNC_C334_(arg0, arg1)
										local function __FUNC_C4AF_(arg0, arg1)
											local function __FUNC_C604_(arg0, arg1)
												local function __FUNC_C77F_(arg0, arg1)
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
													__FUNC_C77F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C77F_)
											end

											if arg1.interrupted then
												__FUNC_C604_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C604_)
										end

										if arg1.interrupted then
											__FUNC_C4AF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.200000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C4AF_)
									end

									if arg1.interrupted then
										__FUNC_C334_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C334_)
								end

								if arg1.interrupted then
									__FUNC_C1DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1DF_)
							end

							if arg1.interrupted then
								__FUNC_C064_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C064_)
						end

						if arg1.interrupted then
							__FUNC_BF0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF0F_)
					end

					if arg1.interrupted then
						__FUNC_BD94_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD94_)
				end

				if arg1.interrupted then
					__FUNC_BC3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC3F_)
			end

			if arg1.interrupted then
				__FUNC_BAC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAC4_)
		end

		registerVal10:completeAnimation()
		registerVal2.RoundsContainer:setAlpha(0.000000)
		__FUNC_B96C_(registerVal10, {})
		local function __FUNC_C931_(arg0, arg1)
			local function __FUNC_CA88_(arg0, arg1)
				local function __FUNC_CC03_(arg0, arg1)
					local function __FUNC_CD58_(arg0, arg1)
						local function __FUNC_CED3_(arg0, arg1)
							local function __FUNC_D028_(arg0, arg1)
								local function __FUNC_D1A3_(arg0, arg1)
									local function __FUNC_D2F8_(arg0, arg1)
										local function __FUNC_D473_(arg0, arg1)
											local function __FUNC_D5C8_(arg0, arg1)
												local function __FUNC_D743_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_D743_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D743_)
											end

											if arg1.interrupted then
												__FUNC_D5C8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5C8_)
										end

										if arg1.interrupted then
											__FUNC_D473_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.200000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D473_)
									end

									if arg1.interrupted then
										__FUNC_D2F8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D2F8_)
								end

								if arg1.interrupted then
									__FUNC_D1A3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1A3_)
							end

							if arg1.interrupted then
								__FUNC_D028_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D028_)
						end

						if arg1.interrupted then
							__FUNC_CED3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CED3_)
					end

					if arg1.interrupted then
						__FUNC_CD58_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD58_)
				end

				if arg1.interrupted then
					__FUNC_CC03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC03_)
			end

			if arg1.interrupted then
				__FUNC_CA88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA88_)
		end

		registerVal11:completeAnimation()
		registerVal2.UserScore:setAlpha(0.000000)
		__FUNC_C931_(registerVal11, {})
		local function __FUNC_D8F5_(arg0, arg1)
			local function __FUNC_DA4C_(arg0, arg1)
				local function __FUNC_DBC7_(arg0, arg1)
					local function __FUNC_DD1C_(arg0, arg1)
						local function __FUNC_DE97_(arg0, arg1)
							local function __FUNC_DFEC_(arg0, arg1)
								local function __FUNC_E167_(arg0, arg1)
									local function __FUNC_E2BC_(arg0, arg1)
										local function __FUNC_E437_(arg0, arg1)
											local function __FUNC_E58C_(arg0, arg1)
												local function __FUNC_E707_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 249.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_E707_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E707_)
											end

											if arg1.interrupted then
												__FUNC_E58C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E58C_)
										end

										if arg1.interrupted then
											__FUNC_E437_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E437_)
									end

									if arg1.interrupted then
										__FUNC_E2BC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E2BC_)
								end

								if arg1.interrupted then
									__FUNC_E167_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E167_)
							end

							if arg1.interrupted then
								__FUNC_DFEC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DFEC_)
						end

						if arg1.interrupted then
							__FUNC_DE97_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE97_)
					end

					if arg1.interrupted then
						__FUNC_DD1C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD1C_)
				end

				if arg1.interrupted then
					__FUNC_DBC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBC7_)
			end

			if arg1.interrupted then
				__FUNC_DA4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA4C_)
		end

		registerVal12:completeAnimation()
		registerVal2.EnemyScore:setAlpha(0.000000)
		__FUNC_D8F5_(registerVal12, {})
		local function __FUNC_E8B9_(arg0, arg1)
			local function __FUNC_EA10_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_EA10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA10_)
		end

		registerVal13:completeAnimation()
		registerVal2.FactionContainer:setAlpha(0.000000)
		__FUNC_E8B9_(registerVal13, {})
		local function __FUNC_EBC5_(arg0, arg1)
			local function __FUNC_ED75_(arg0, arg1)
				local function __FUNC_EF02_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 305.000000, 309.000000)
					arg0:setTopBottom(true, false, 115.000000, 119.000000)
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_EF02_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 610.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 305.000000, 309.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF02_)
			end

			if arg1.interrupted then
				__FUNC_ED75_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 115.000000, 119.000000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED75_)
		end

		registerVal14:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 220.000000, 224.000000)
		registerVal2.Dot3:setTopBottom(true, false, 145.000000, 149.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		__FUNC_EBC5_(registerVal14, {})
		local function __FUNC_F125_(arg0, arg1)
			local function __FUNC_F2D5_(arg0, arg1)
				local function __FUNC_F462_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 305.000000, 309.000000)
					arg0:setTopBottom(true, false, 186.000000, 190.000000)
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_F462_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 610.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 305.000000, 309.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F462_)
			end

			if arg1.interrupted then
				__FUNC_F2D5_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 186.000000, 190.000000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2D5_)
		end

		registerVal15:completeAnimation()
		registerVal2.Dot5:setLeftRight(true, false, 220.000000, 224.000000)
		registerVal2.Dot5:setTopBottom(true, false, 144.970000, 148.970000)
		registerVal2.Dot5:setAlpha(0.000000)
		__FUNC_F125_(registerVal15, {})
		local function __FUNC_F685_(arg0, arg1)
			local function __FUNC_F835_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 222.000000, 226.000000)
				arg0:setTopBottom(true, false, 115.000000, 119.000000)
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F835_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 115.000000, 119.000000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F835_)
		end

		registerVal16:completeAnimation()
		registerVal2.Dot6:setLeftRight(true, false, 222.000000, 226.000000)
		registerVal2.Dot6:setTopBottom(true, false, 145.000000, 149.000000)
		registerVal2.Dot6:setAlpha(0.000000)
		__FUNC_F685_(registerVal16, {})
		local function __FUNC_FA59_(arg0, arg1)
			local function __FUNC_FC09_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 222.000000, 226.000000)
				arg0:setTopBottom(true, false, 186.000000, 190.000000)
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_FC09_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 186.000000, 190.000000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC09_)
		end

		registerVal17:completeAnimation()
		registerVal2.Dot7:setLeftRight(true, false, 222.000000, 226.000000)
		registerVal2.Dot7:setTopBottom(true, false, 144.970000, 148.970000)
		registerVal2.Dot7:setAlpha(0.000000)
		__FUNC_FA59_(registerVal17, {})
	end

	registerVal19.HudStart = __FUNC_34DF_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_FE2D_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.EnemyScorePanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UserScorePanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PanelTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.PanelCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BackCircleInner:setAlpha(0.200000)
		registerVal2.BackCircleInner:setZoom(-2.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrimaryStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Semi:completeAnimation()
		registerVal9.Line1:completeAnimation()
		registerVal9.Line2:completeAnimation()
		registerVal2.GameTimer:setAlpha(1.000000)
		registerVal2.GameTimer.Semi:setAlpha(0.600000)
		registerVal2.GameTimer.Line1:setAlpha(0.800000)
		registerVal2.GameTimer.Line2:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RoundsContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.UserScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.EnemyScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FactionContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 305.000000, 309.000000)
		registerVal2.Dot3:setTopBottom(true, false, 115.000000, 119.000000)
		registerVal2.Dot3:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Dot5:setLeftRight(true, false, 305.000000, 309.000000)
		registerVal2.Dot5:setTopBottom(true, false, 186.000000, 190.000000)
		registerVal2.Dot5:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Dot6:setLeftRight(true, false, 222.000000, 226.000000)
		registerVal2.Dot6:setTopBottom(true, false, 115.000000, 119.000000)
		registerVal2.Dot6:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Dot7:setLeftRight(true, false, 222.000000, 226.000000)
		registerVal2.Dot7:setTopBottom(true, false, 186.000000, 190.000000)
		registerVal2.Dot7:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_FE2D_
	local function __FUNC_106C2_()
		registerVal2:setupElementClipCounter(15.000000)
		local function __FUNC_10F04_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.EnemyScorePanel:setAlpha(1.000000)
		__FUNC_10F04_(registerVal3, {})
		local function __FUNC_110B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.UserScorePanel:setAlpha(1.000000)
		__FUNC_110B9_(registerVal4, {})
		local function __FUNC_1126D_(arg0, arg1)
			local function __FUNC_113C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 239.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_113C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113C4_)
		end

		registerVal5:completeAnimation()
		registerVal2.PanelTimer:setAlpha(1.000000)
		__FUNC_1126D_(registerVal5, {})
		local function __FUNC_11579_(arg0, arg1)
			local function __FUNC_116D0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_116D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_116D0_)
		end

		registerVal6:completeAnimation()
		registerVal2.PanelCircle:setAlpha(1.000000)
		__FUNC_11579_(registerVal6, {})
		local function __FUNC_11885_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BackCircleInner:setAlpha(0.200000)
		registerVal2.BackCircleInner:setZoom(-2.000000)
		__FUNC_11885_(registerVal7, {})
		local function __FUNC_11A5B_(arg0, arg1)
			local function __FUNC_11BB0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 230.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_11BB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BB0_)
		end

		registerVal8:completeAnimation()
		registerVal2.PrimaryStatus:setAlpha(1.000000)
		__FUNC_11A5B_(registerVal8, {})
		local function __FUNC_11D65_(arg0, arg1)
			local function __FUNC_11EBC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 269.000000, true, false, CoD.TweenType.Bounce)
					arg0.Semi:beginAnimation("subkeyframe", 269.000000, true, false, CoD.TweenType.Bounce)
					arg0.Line1:beginAnimation("subkeyframe", 269.000000, true, false, CoD.TweenType.Bounce)
					arg0.Line2:beginAnimation("subkeyframe", 269.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				arg0.Semi:setAlpha(0.000000)
				arg0.Line1:setAlpha(0.000000)
				arg0.Line2:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_11EBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11EBC_)
		end

		registerVal9:completeAnimation()
		registerVal9.Semi:completeAnimation()
		registerVal9.Line1:completeAnimation()
		registerVal9.Line2:completeAnimation()
		registerVal2.GameTimer:setAlpha(1.000000)
		registerVal2.GameTimer.Semi:setAlpha(0.600000)
		registerVal2.GameTimer.Line1:setAlpha(0.800000)
		registerVal2.GameTimer.Line2:setAlpha(0.800000)
		__FUNC_11D65_(registerVal9, {})
		local function __FUNC_121BA_(arg0, arg1)
			local function __FUNC_12310_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12310_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12310_)
		end

		registerVal10:completeAnimation()
		registerVal2.RoundsContainer:setAlpha(1.000000)
		__FUNC_121BA_(registerVal10, {})
		local function __FUNC_124C5_(arg0, arg1)
			local function __FUNC_1261C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 260.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1261C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1261C_)
		end

		registerVal11:completeAnimation()
		registerVal2.UserScore:setAlpha(1.000000)
		__FUNC_124C5_(registerVal11, {})
		local function __FUNC_127D1_(arg0, arg1)
			local function __FUNC_12928_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12928_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12928_)
		end

		registerVal12:completeAnimation()
		registerVal2.EnemyScore:setAlpha(1.000000)
		__FUNC_127D1_(registerVal12, {})
		local function __FUNC_12ADD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.FactionContainer:setAlpha(1.000000)
		__FUNC_12ADD_(registerVal13, {})
		local function __FUNC_12C91_(arg0, arg1)
			local function __FUNC_12DE8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 220.000000, 224.000000)
				arg0:setTopBottom(true, false, 145.000000, 149.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12DE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12DE8_)
		end

		registerVal14:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 305.000000, 309.000000)
		registerVal2.Dot3:setTopBottom(true, false, 115.000000, 119.000000)
		registerVal2.Dot3:setAlpha(0.600000)
		__FUNC_12C91_(registerVal14, {})
		local function __FUNC_1300D_(arg0, arg1)
			local function __FUNC_13164_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 220.000000, 224.000000)
				arg0:setTopBottom(true, false, 144.970000, 148.970000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_13164_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13164_)
		end

		registerVal15:completeAnimation()
		registerVal2.Dot5:setLeftRight(true, false, 305.000000, 309.000000)
		registerVal2.Dot5:setTopBottom(true, false, 186.000000, 190.000000)
		registerVal2.Dot5:setAlpha(0.600000)
		__FUNC_1300D_(registerVal15, {})
		local function __FUNC_13389_(arg0, arg1)
			local function __FUNC_134E0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 222.000000, 226.000000)
				arg0:setTopBottom(true, false, 145.000000, 149.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_134E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_134E0_)
		end

		registerVal16:completeAnimation()
		registerVal2.Dot6:setLeftRight(true, false, 222.000000, 226.000000)
		registerVal2.Dot6:setTopBottom(true, false, 115.000000, 119.000000)
		registerVal2.Dot6:setAlpha(0.600000)
		__FUNC_13389_(registerVal16, {})
		local function __FUNC_13705_(arg0, arg1)
			local function __FUNC_1385C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 222.000000, 226.000000)
				arg0:setTopBottom(true, false, 144.970000, 148.970000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1385C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1385C_)
		end

		registerVal17:completeAnimation()
		registerVal2.Dot7:setLeftRight(true, false, 222.000000, 226.000000)
		registerVal2.Dot7:setTopBottom(true, false, 186.000000, 190.000000)
		registerVal2.Dot7:setAlpha(0.600000)
		__FUNC_13705_(registerVal17, {})
	end

	registerVal19.DefaultState = __FUNC_106C2_
	registerVal18.HudStart = registerVal19
	registerVal19 = {}
	local function __FUNC_13A81_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal19.DefaultClip = __FUNC_13A81_
	registerVal18.HudPause = registerVal19
	registerVal2.clipsPerState = registerVal18
	local function __FUNC_13AE2_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "HudStart")
		if registerVal2 then
			local registerVal4 = {}
			registerVal4.elementName = "FactionContainer"
			registerVal4.clipName = "Intro"
			PlayClipOnElement(registerVal2, registerVal4, arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_13AE2_)
	local function __FUNC_13BD7_(arg0)
		arg0.EnemyScorePanel:close()
		arg0.UserScorePanel:close()
		arg0.PanelTimer:close()
		arg0.PanelCircle:close()
		arg0.BackCircleInner:close()
		arg0.PrimaryStatus:close()
		arg0.GameTimer:close()
		arg0.RoundsContainer:close()
		arg0.UserScore:close()
		arg0.EnemyScore:close()
		arg0.FactionContainer:close()
		arg0.Dot3:close()
		arg0.Dot5:close()
		arg0.Dot6:close()
		arg0.Dot7:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13BD7_)
	if __FUNC_66B_ then
		__FUNC_66B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScoreInfo.new = __FUNC_6B4_
