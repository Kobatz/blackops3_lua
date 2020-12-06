-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.InGameTalkersWidget")
local function __FUNC_1CC_(arg0)
	if arg0.red and arg0.green and arg0.blue then
		arg0.Fullscreen:setRGB(arg0.red, arg0.green, arg0.blue)
	end
end

local function __FUNC_2BA_(arg0)
	local registerVal3 = Engine.GetPrimaryController()
	local registerVal1 = arg0:getModel(registerVal3, "fadeOverTime")
	local registerVal4 = Engine.GetPrimaryController()
	local registerVal2 = arg0:getModel(registerVal4, "red")
	local registerVal5 = Engine.GetPrimaryController()
	registerVal3 = arg0:getModel(registerVal5, "green")
	local registerVal6 = Engine.GetPrimaryController()
	registerVal4 = arg0:getModel(registerVal6, "blue")
	if registerVal2 then
		local function __FUNC_5C7_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.red = registerVal1
				__FUNC_1CC_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal2, __FUNC_5C7_)
	end
	if registerVal3 then
		local function __FUNC_658_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.green = registerVal1
				__FUNC_1CC_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal3, __FUNC_658_)
	end
	if registerVal4 then
		local function __FUNC_6EE_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.blue = registerVal1
				__FUNC_1CC_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal4, __FUNC_6EE_)
	end
	if registerVal1 then
		local function __FUNC_781_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			local registerVal4 = Engine.GetPrimaryController()
			local registerVal2 = arg0:getModel(registerVal4, "startAlpha")
			local registerVal5 = Engine.GetPrimaryController()
			local registerVal3 = arg0:getModel(registerVal5, "endAlpha")
			if registerVal2 then
				local registerVal6 = Engine.GetModelValue(registerVal2)
			end
			if registerVal3 then
				registerVal6 = Engine.GetModelValue(registerVal3)
			end
			if registerVal1 then
				if registerVal6 == 0.000000 then
					if registerVal6 == 0.000000 or registerVal1 == 0.000000 then
						CoD.Menu.RemoveFromCurrMenuNameList(arg0.menuName)
					else
						local function __FUNC_ADB_(arg0, arg1)
							arg0.Fullscreen:registerEventHandler("clip_over", CoD.NullFunction)
							CoD.Menu.RemoveFromCurrMenuNameList(arg0.menuName)
						end

						arg0.Fullscreen:registerEventHandler("clip_over", __FUNC_ADB_)
					else
						CoD.Menu.AddToCurrMenuNameList(arg0.menuName)
					end
				end
				if 0.000000 <= registerVal6 then
					arg0.Fullscreen:setAlpha(registerVal6)
				end
				arg0.Fullscreen:beginAnimation("fadeOverTime", registerVal1)
				arg0.Fullscreen:setAlpha(registerVal6)
			end
		end

		arg0:subscribeToModel(registerVal1, __FUNC_781_)
	end
	if not registerVal2 and not registerVal3 and not registerVal4 and not registerVal1 then
		arg0.red = 0.000000
		arg0.green = 0.000000
		arg0.blue = 0.000000
		__FUNC_1CC_(arg0)
		local function __FUNC_C04_(arg1)
			arg0:close()
		end

		registerVal5 = LUI.UITimer.newElementTimer(2000.000000, true, __FUNC_C04_)
		arg0.failSafeCloseTimer = registerVal5
		arg0:addElement(arg0.failSafeCloseTimer)
		local function __FUNC_C4B_(arg0)
			if arg0.failSafeCloseTimer then
				arg0.failSafeCloseTimer:close()
			end
		end

		LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_C4B_)
	end
end

local function __FUNC_CC7_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FullScreenBlack")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "none"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FullScreenBlack.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.Fullscreen = registerVal3
	local registerVal4 = CoD.InGameTalkersWidget.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 254.000000)
	registerVal4:setTopBottom(true, false, 36.000000, 123.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_1316_(arg0, arg1, arg2)
		local registerVal3 = IsMultiplayer()
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_1316_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_1367_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1367_)
	registerVal1:addElement(registerVal4)
	registerVal1.InGameTalkersWidget = registerVal4
	local function __FUNC_148C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(registerVal1)
		end
	end

	registerVal1.Fullscreen:linkToElementModel(registerVal1, "color", true, __FUNC_148C_)
	registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local function __FUNC_151F_(arg1)
		arg1.InGameTalkersWidget:close()
		arg1.Fullscreen:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FullScreenBlack.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_151F_)
	if __FUNC_2BA_ then
		__FUNC_2BA_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.FullScreenBlack = __FUNC_CC7_
