-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_MapWidget.MapWidget_PanelVignetteLeft")
require("ui.uieditor.widgets.HUD.core_MapWidget.MapWidgetContainer")
local function __FUNC_222_(arg0, arg1)
	local function __FUNC_305_(arg0, arg2)
		arg0.PanelVignetteLeft:playClip("HudStop")
		arg0.MapWidgetContainer.MapWidget:playClip("HudStop")
		local function __FUNC_43A_(arg2, arg3)
			Engine.SendMenuResponse(arg1, arg0.menuName, "finished_movie_playback")
		end

		arg0.MapWidgetContainer.MapWidget:registerEventHandler("clip_over", __FUNC_43A_)
	end

	arg0:registerEventHandler("finished_movie_playback", __FUNC_305_)
	local function __FUNC_4ED_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.Movie:setAlpha(0.000000)
			arg0.PanelVignetteLeft:playClip("HudStart")
			arg0.MapWidgetContainer.MapWidget:playClip("HudStart")
			local function __FUNC_6B8_(arg1, arg2)
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
				arg0.Movie:setupMoviePlayback(registerVal1, true, true)
				arg0.Movie:setAlpha(1.000000)
			end

			arg0.MapWidgetContainer.MapWidget:registerEventHandler("clip_over", __FUNC_6B8_)
		end
	end

	arg0.Movie:linkToElementModel(arg0, "movieName", true, __FUNC_4ED_)
end

local function __FUNC_840_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("PiPMenu")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "PiPMenu.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.MapWidget_PanelVignetteLeft.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, false, -677.000000, -83.000000)
	registerVal3:setTopBottom(false, false, -371.000000, 36.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.PanelVignetteLeft = registerVal3
	local registerVal4 = CoD.MapWidgetContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 19.000000, 302.000000)
	registerVal4:setTopBottom(true, false, 4.670000, 208.670000)
	registerVal1:addElement(registerVal4)
	registerVal1.MapWidgetContainer = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 37.950000, 285.050000)
	registerVal5:setTopBottom(true, false, 26.000000, 165.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setXRot(-17.000000)
	registerVal5:setYRot(21.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.Image0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 32.610000, 290.390000)
	registerVal6:setTopBottom(true, false, 23.160000, 168.000000)
	registerVal6:setXRot(-17.000000)
	registerVal6:setYRot(21.000000)
	registerVal6:setupMoviePlayback("")
	registerVal1:addElement(registerVal6)
	registerVal1.Movie = registerVal6
	local function __FUNC_F45_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_F45_)
	local registerVal9 = {}
	registerVal9.name = "menu_loaded"
	registerVal9.controller = arg0
	registerVal1:processEvent(registerVal9)
	registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.menu = registerVal1
	registerVal1:processEvent(registerVal9)
	local function __FUNC_FD9_(arg1)
		arg1.PanelVignetteLeft:close()
		arg1.MapWidgetContainer:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "PiPMenu.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_FD9_)
	if __FUNC_222_ then
		__FUNC_222_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.PiPMenu = __FUNC_840_
