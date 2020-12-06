-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.Toast_Container")
local function __FUNC_222_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "FrontendToast")
	local registerVal4 = Engine.CreateModel(registerVal2, "notify")
	Engine.SetModelValue(registerVal4, false)
	Engine.CreateModel(registerVal2, "state")
	Engine.CreateModel(registerVal2, "kicker")
	Engine.CreateModel(registerVal2, "description")
	Engine.CreateModel(registerVal2, "contentIcon")
	Engine.CreateModel(registerVal2, "functionIcon")
	Engine.CreateModel(registerVal2, "emblemDecal")
	Engine.CreateModel(registerVal2, "backgroundId")
end

local function __FUNC_480_(arg0, arg1, arg2)
	local function __FUNC_6FA_(arg0, arg1)
		local registerVal2 = arg0:getParent()
		if registerVal2 then
			registerVal2:playClip("Show")
		end
		arg0:setState(arg1.state)
		arg0.currentNotification = arg1
		arg0.EmblemDecal:setupDrawDecalById(arg1.emblemDecal)
		arg0.ContentIcon:setImage(RegisterImage(arg1.contentIcon))
		arg0.Description:setText(arg1.description)
		CoD.ChallengesUtility.SetCallingCardForWidget(arg0.CallingCardsFrameWidget.CardIconFrame, arg1.backgroundId, arg2.id)
		if arg1.backgroundId ~= nil and arg0.CallingCardsFrameWidget.CardIconFrame.framedWidget then
			arg0.CallingCardsFrameWidget.CardIconFrame.framedWidget:playClip("DefaultClip")
		end
		arg0.Kicker:setText(arg1.kicker)
		arg0.FunctionIcon:setImage(RegisterImage(arg1.functionIcon))
		arg0.ToastHeaderWidget.textBox:setText(arg1.description)
	end

	arg0.ToastContainer.playNotification = __FUNC_6FA_
	local function __FUNC_B58_(arg0, arg1)
		if arg1 == nil then
			return 
		end
		if arg0.currentNotification ~= nil and arg0.currentNotification.state ~= "NewMusicTrack" and arg1.state ~= "NewMusicTrack" then
			if arg0.nextNotification == nil then
				arg0.nextNotification = arg1
			else
				arg0.nextNotification.next.next = arg1
			else
				arg0:playNotification(arg1)
			end
		end
	end

	arg0.ToastContainer.appendNotification = __FUNC_B58_
	local function __FUNC_CBA_(arg0, arg1)
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "state"))
		{}.state = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "kicker"))
		{}.kicker = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "description"))
		{}.description = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "contentIcon"))
		{}.contentIcon = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "emblemDecal"))
		{}.emblemDecal = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "backgroundId"))
		{}.backgroundId = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "functionIcon"))
		{}.functionIcon = registerVal3
		return {}
	end

	arg0.ToastContainer.getModelValueTable = __FUNC_CBA_
	arg0.ToastContainer.currentNotification = nil
	arg0.ToastContainer.nextNotification = nil
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "FrontendToast")
	registerVal4 = Engine.GetModel(registerVal3, "notify")
	local function __FUNC_F1B_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 == true or registerVal1 == 1.000000 then
			Engine.SetModelValue(registerVal4, false)
			registerVal1 = arg0.ToastContainer:getModelValueTable(registerVal3)
			arg0.ToastContainer:appendNotification(registerVal1)
		end
	end

	arg0.ToastContainer:subscribeToModel(registerVal4, __FUNC_F1B_)
	local function __FUNC_106D_(arg0, arg1)
		arg0.ToastContainer.currentNotification = nil
		if arg0.ToastContainer.nextNotification ~= nil then
			arg0.ToastContainer:playNotification(arg0.ToastContainer.nextNotification)
			arg0.ToastContainer.nextNotification = arg0.ToastContainer.nextNotification.next
		end
	end

	arg0:registerEventHandler("clip_over", __FUNC_106D_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ToastNotification = registerVal3
local function __FUNC_1164_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_222_ then
		__FUNC_222_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ToastNotification)
	registerVal2.id = "ToastNotification"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Toast_Container.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -150.000000, 150.000000)
	registerVal3:setTopBottom(false, true, 5.000000, 70.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3.Kicker:setText(Engine.Localize("MENU_NEW"))
	registerVal3.ToastHeaderWidget.textBox:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	registerVal2:addElement(registerVal3)
	registerVal2.ToastContainer = registerVal3
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(true, false, -242.110000, -194.110000)
	registerVal4:setTopBottom(true, false, 329.840000, 377.840000)
	registerVal4:setPlaySoundDirect(true)
	registerVal2:addElement(registerVal4)
	registerVal2.Sound = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_16CE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ToastContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_16CE_
	local function __FUNC_17D2_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1A1A_(arg0, arg1)
			local function __FUNC_1BCB_(arg0, arg1)
				local function __FUNC_1D7B_(arg0, arg1)
					local function __FUNC_1F2B_(arg0, arg1)
						local function __FUNC_2080_(arg0, arg1)
							local function __FUNC_2210_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -150.000000, 150.000000)
								arg0:setTopBottom(false, true, 5.000000, 70.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2210_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(false, true, -115.150000, -50.150000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2210_)
						end

						if arg1.interrupted then
							__FUNC_2080_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 2809.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2080_)
					end

					if arg1.interrupted then
						__FUNC_1F2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
					arg0:setTopBottom(false, true, -94.000000, -29.000000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F2B_)
				end

				if arg1.interrupted then
					__FUNC_1D7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, true, -90.690000, -25.690000)
				arg0:setAlpha(0.980000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D7B_)
			end

			if arg1.interrupted then
				__FUNC_1BCB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(false, true, -108.630000, -43.630000)
			arg0:setAlpha(0.870000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BCB_)
		end

		registerVal3:completeAnimation()
		registerVal2.ToastContainer:setLeftRight(false, false, -150.000000, 150.000000)
		registerVal2.ToastContainer:setTopBottom(false, true, 65.000000, 130.000000)
		registerVal2.ToastContainer:setAlpha(0.000000)
		__FUNC_1A1A_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(true)
		registerVal2.Sound:playSound("uin_bm_popup", arg1)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Show = __FUNC_17D2_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_2435_(arg0)
		arg0.ToastContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2435_)
	if __FUNC_480_ then
		__FUNC_480_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ToastNotification.new = __FUNC_1164_
