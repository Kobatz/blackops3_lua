-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_172_(arg0, arg1)
	local function __FUNC_30F_(arg0, arg2)
		Engine.SendMenuResponse(arg1, arg0.menuName, "finished_movie_playback")
	end

	arg0:registerEventHandler("finished_movie_playback", __FUNC_30F_)
	local function __FUNC_3BD_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			local registerVal3 = arg0:getModel()
			local registerVal2 = CoD.SafeGetModelValue(registerVal3, "additive")
			if registerVal2 then
				if registerVal2 == 0.000000 then
				end
			end
			local registerVal4 = arg0:getModel()
			registerVal3 = CoD.SafeGetModelValue(registerVal4, "looping")
			if registerVal3 then
				if registerVal3 == 0.000000 then
				end
			end
			registerVal4 = Engine.IsSplitscreen()
			if true and registerVal4 then
				arg0.SplitscreenSideBarLeft:setAlpha(100.000000)
				arg0.SplitscreenSideBarRight:setAlpha(100.000000)
			end
			local registerVal5 = arg0:getModel()
			registerVal4 = CoD.SafeGetModelValue(registerVal5, "movieKey")
			if not registerVal4 then
			end
			arg0.Movie:setupMoviePlayback(registerVal1, true, true, "")
		end
	end

	arg0.Movie:linkToElementModel(arg0, "movieName", true, __FUNC_3BD_)
	local function __FUNC_673_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if arg1 or registerVal1 == 0.000000 then
			arg0.BlackBg:setAlpha(0.000000)
		end
	end

	arg0.BlackBg:linkToElementModel(arg0, "showBlackScreen", true, __FUNC_673_)
	local function __FUNC_72F_(arg0)
		arg0.Movie:close()
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_72F_)
end

local function __FUNC_78A_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FullscreenMovie")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FullscreenMovie.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, 640.000000, 1115.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.SplitscreenSideBarRight = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -1141.000000, -640.000000)
	registerVal4:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.SplitscreenSideBarLeft = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.BlackBg = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal6:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal6:setupMoviePlayback("")
	registerVal1:addElement(registerVal6)
	registerVal1.Movie = registerVal6
	local registerVal9 = {}
	registerVal9.name = "menu_loaded"
	registerVal9.controller = arg0
	registerVal1:processEvent(registerVal9)
	registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.menu = registerVal1
	registerVal1:processEvent(registerVal9)
	local function __FUNC_DE4_(arg1)
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FullscreenMovie.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_DE4_)
	if __FUNC_172_ then
		__FUNC_172_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.FullscreenMovie = __FUNC_78A_
