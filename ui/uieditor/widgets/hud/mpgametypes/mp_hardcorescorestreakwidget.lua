-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MP_HardcoreScorestreakWidget = registerVal1
function CoD.MP_HardcoreScorestreakWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MP_HardcoreScorestreakWidget)
	registerVal2.id = "MP_HardcoreScorestreakWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal3:setRGB(0.640000, 0.670000, 0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 10.000000, 193.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4:setText(Engine.Localize("MENU_NEW"))
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_78B_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_78B_)
	registerVal2:addElement(registerVal4)
	registerVal2.text = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7E9_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_7E9_
	local function __FUNC_937_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_B1E_(arg0, arg1)
			local function __FUNC_C97_(arg0, arg1)
				local function __FUNC_DEC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_DEC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1769.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEC_)
			end

			if arg1.interrupted then
				__FUNC_C97_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C97_)
		end

		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.000000)
		__FUNC_B1E_(registerVal3, {})
		local function __FUNC_FA1_(arg0, arg1)
			local function __FUNC_111B_(arg0, arg1)
				local function __FUNC_1270_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1270_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1719.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1270_)
			end

			if arg1.interrupted then
				__FUNC_111B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_111B_)
		end

		registerVal4:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_FA1_)
	end

	registerVal6.Show = __FUNC_937_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1425_(arg0)
		arg0.Panel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1425_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

