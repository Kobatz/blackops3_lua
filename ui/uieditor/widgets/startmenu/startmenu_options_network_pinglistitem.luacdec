-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_Network_PingListItem = registerVal1
function CoD.StartMenu_Options_Network_PingListItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_Network_PingListItem)
	registerVal2.id = "StartMenu_Options_Network_PingListItem"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 84.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 84.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.pingImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal4:setTopBottom(true, false, 64.000000, 84.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.pingText = registerVal4
	local function __FUNC_625_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(GetScoreboardPlayerPingBarImage(registerVal1)))
		end
	end

	registerVal2.pingImage:linkToElementModel(registerVal2, "pingIndex", true, __FUNC_625_)
	local function __FUNC_709_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(GetScoreboardPlayerPingRange(registerVal1)))
		end
	end

	registerVal2.pingText:linkToElementModel(registerVal2, "pingIndex", true, __FUNC_709_)
	local function __FUNC_7F0_(arg0)
		arg0.pingImage:close()
		arg0.pingText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7F0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

