-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D0_(arg0, arg1)
	arg0:setHandleMouse(true)
	local function __FUNC_293_(arg0, arg1)
		local registerVal4 = arg0:getParent()
		if registerVal4.LeftContainer and registerVal4.ClientList then
		else
			local registerVal5 = registerVal4:getParent()
		end
		if not registerVal5 then
			return 
		end
		if arg0.currentState == "Active" then
			arg0:setState("Inactive")
			arg0:playClip("Over")
			registerVal5:setState("Left")
			registerVal5.defaultNav = "left"
			local registerVal7 = {}
			registerVal7.name = "gain_focus"
			registerVal7.controller = arg1.controller
			registerVal7.isMouse = true
			registerVal4.LeftContainer:processEvent(registerVal7)
			registerVal7 = {}
			registerVal7.name = "lose_focus"
			registerVal7.controller = arg1.controller
			registerVal7.isMouse = true
			registerVal4.ClientList:processEvent(registerVal7)
		else
			if arg0.currentState == "Inactive" then
				arg0:setState("Active")
				arg0:playClip("Over")
				registerVal5:setState("Right")
				registerVal5.defaultNav = "right"
				registerVal7 = {}
				registerVal7.name = "lose_focus"
				registerVal7.controller = arg1.controller
				registerVal7.isMouse = true
				registerVal4.LeftContainer:processEvent(registerVal7)
				registerVal7 = {}
				registerVal7.name = "gain_focus"
				registerVal7.controller = arg1.controller
				registerVal7.isMouse = true
				registerVal4.ClientList:processEvent(registerVal7)
			end
		end
	end

	arg0:registerEventHandler("button_action", __FUNC_293_)
	local function __FUNC_5A5_(arg0, arg1)
		if arg1.source == 0.000000 then
			arg0:setState("DefaultState")
		else
			if arg1.menu.currentState == "Right" then
				arg0:setState("Active")
			else
				arg0:setState("Inactive")
			end
		end
	end

	arg0:registerEventHandler("input_source_changed", __FUNC_5A5_)
end

local function __FUNC_6C2_(arg0, arg1)
	if CoD.isPC then
		__FUNC_1D0_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.fe_InspectionViewButton = registerVal3
local function __FUNC_72F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_InspectionViewButton)
	registerVal2.id = "fe_InspectionViewButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 30.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setZRot(180.000000)
	registerVal3:setScale(0.700000)
	registerVal3:setImage(RegisterImage("uie_characterminiselectorarrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.arrowButton = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_C9E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C9E_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_D9F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowButton:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.arrowButton:setAlpha(1.000000)
		registerVal2.arrowButton:setZRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_D9F_
	local function __FUNC_F00_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowButton:setRGB(1.000000, 0.450000, 0.000000)
		registerVal2.arrowButton:setAlpha(1.000000)
		registerVal2.arrowButton:setZRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Over = __FUNC_F00_
	registerVal4.Active = registerVal5
	registerVal5 = {}
	local function __FUNC_1069_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowButton:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.arrowButton:setAlpha(1.000000)
		registerVal2.arrowButton:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1069_
	local function __FUNC_11CC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowButton:setRGB(1.000000, 0.450000, 0.000000)
		registerVal2.arrowButton:setAlpha(1.000000)
		registerVal2.arrowButton:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Over = __FUNC_11CC_
	registerVal4.Inactive = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Active"
	local function __FUNC_133A_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
			if not registerVal3 then
				registerVal3 = IsMenuInState(arg0, "Right")
			else
			end
		end
		return true
	end

	registerVal7.condition = __FUNC_133A_
	local registerVal8 = {}
	registerVal8.stateName = "Inactive"
	local function __FUNC_13EF_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_13EF_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_145D_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_145D_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	if __FUNC_6C2_ then
		__FUNC_6C2_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.fe_InspectionViewButton.new = __FUNC_72F_
