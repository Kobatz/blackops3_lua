-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SplitscreenScaler = registerVal1
function CoD.SplitscreenScaler.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new(arg0)
	registerVal2:setClass(CoD.SplitscreenScaler)
	registerVal2.scale = 1.000000
	local registerVal3 = Engine.IsInGame()
	registerVal3 = Engine.SplitscreenNum()
	if registerVal3 and 1.000000 < registerVal3 then
		registerVal2.scale = arg1
		registerVal2:setScale(arg1)
	end
	registerVal3 = Dvar.r_dualPlayEnable:get()
	if registerVal3 == true then
		registerVal2:setScale(1.000000)
	end
	registerVal2:registerEventHandler("fullscreen_viewport_start", CoD.SplitscreenScaler.FullscreenViewportStart)
	registerVal2:registerEventHandler("fullscreen_viewport_stop", CoD.SplitscreenScaler.FullscreenViewportStop)
	return registerVal2
end

function CoD.SplitscreenScaler.FullscreenViewportStart(arg0, arg1)
	arg0:setScale(1.000000)
end

function CoD.SplitscreenScaler.FullscreenViewportStop(arg0, arg1)
	if arg0.scale ~= nil then
		arg0:setScale(arg0.scale)
	else
		arg0:setScale(1.000000)
	end
	local registerVal2 = Dvar.r_dualPlayEnable:get()
	if registerVal2 == true then
		arg0:setScale(1.000000)
	end
end

CoD.SplitscreenScaler.id = "LUIImage"
