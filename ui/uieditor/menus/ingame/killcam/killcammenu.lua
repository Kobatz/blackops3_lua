-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.FinalKillcamWidget")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidget")
require("ui.uieditor.widgets.MPHudWidgets.KillcamRespawnPrompt")
local function __FUNC_255_(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "hudItems.killcamAllowRespawn")
	Engine.SetModelValue(registerVal3, 0.000000)
end

local function __FUNC_34E_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("KillcamMenu")
	if __FUNC_255_ then
		__FUNC_255_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "KillcamMenu.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FinalKillcamWidget.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.FinalKillcamWidget = registerVal3
	local registerVal4 = CoD.KillcamWidget.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.KillcamWidget = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.Foreground = registerVal5
	local registerVal6 = CoD.KillcamRespawnPrompt.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, false, -171.000000, 171.000000)
	registerVal6:setTopBottom(true, false, 499.000000, 529.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_AED_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal6.RespawnPrompt:setText(Engine.Localize(KillCamAllowRespawnToString(arg0, registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg0, "HUDItems", "killcamAllowRespawn", __FUNC_AED_)
	registerVal1:addElement(registerVal6)
	registerVal1.KillcamRespawnPrompt = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_BFA_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal1.FinalKillcamWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.KillcamWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.Foreground:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.KillcamRespawnPrompt:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_BFA_
	local function __FUNC_E1C_()
		registerVal1:setupElementClipCounter(4.000000)
		local function __FUNC_101A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.FinalKillcamWidget:setAlpha(1.000000)
		__FUNC_101A_(registerVal3, {})
		local function __FUNC_11CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.KillcamWidget:setAlpha(1.000000)
		__FUNC_11CD_(registerVal4, {})
		local function __FUNC_1381_(arg0, arg1)
			local function __FUNC_14FB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_14FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14FB_)
		end

		registerVal5:completeAnimation()
		registerVal1.Foreground:setAlpha(0.000000)
		__FUNC_1381_(registerVal5, {})
		local function __FUNC_16AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.KillcamRespawnPrompt:setAlpha(1.000000)
		__FUNC_16AD_(registerVal6, {})
	end

	registerVal8.EndTransition = __FUNC_E1C_
	registerVal7.DefaultState = registerVal8
	registerVal1.clipsPerState = registerVal7
	local function __FUNC_1861_(arg1)
		local registerVal2 = IsParamModelEqualToString(arg1, "post_killcam_transition")
		if registerVal2 then
			PlayClip(registerVal1, "EndTransition", arg0)
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "PerController", "scriptNotify", __FUNC_1861_)
	local registerVal9 = {}
	registerVal9.name = "menu_loaded"
	registerVal9.controller = arg0
	registerVal1:processEvent(registerVal9)
	registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.menu = registerVal1
	registerVal1:processEvent(registerVal9)
	local function __FUNC_1929_(arg1)
		arg1.FinalKillcamWidget:close()
		arg1.KillcamWidget:close()
		arg1.KillcamRespawnPrompt:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "KillcamMenu.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1929_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.KillcamMenu = __FUNC_34E_
