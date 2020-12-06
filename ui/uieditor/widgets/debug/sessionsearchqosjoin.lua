-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SessionSearchQoSJoin = registerVal1
function CoD.SessionSearchQoSJoin.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SessionSearchQoSJoin)
	registerVal2.id = "SessionSearchQoSJoin"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 508.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 9.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 417.560000, 507.000000)
	registerVal4:setTopBottom(true, false, -2.000000, 11.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Status = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 368.260000, 410.260000)
	registerVal5:setTopBottom(true, false, -2.000000, 11.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.QoSPing = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 327.800000, 364.800000)
	registerVal6:setTopBottom(true, false, -2.000000, 11.000000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.NATType = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 265.300000, 325.800000)
	registerVal7:setTopBottom(true, false, -2.000000, 11.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.PrivateIPAddress = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 178.000000, 265.300000)
	registerVal8:setTopBottom(true, false, -2.000000, 11.000000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.PublicIPAddress = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 75.000000, 171.000000)
	registerVal9:setTopBottom(true, false, -2.000000, 11.000000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.Gamertag = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 0.000000, 73.000000)
	registerVal10:setTopBottom(true, false, -2.000000, 11.000000)
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.Xuid = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, false, -1.000000, 9.000000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.NoResults = registerVal11
	local function __FUNC_FC8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(registerVal1)
		end
	end

	registerVal2.Background:linkToElementModel(registerVal2, "searchStageColor", true, __FUNC_FC8_)
	local function __FUNC_105B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Status:linkToElementModel(registerVal2, "status", true, __FUNC_105B_)
	local function __FUNC_1112_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.QoSPing:linkToElementModel(registerVal2, "qosPing", true, __FUNC_1112_)
	local function __FUNC_11CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NATType:linkToElementModel(registerVal2, "natType", true, __FUNC_11CA_)
	local function __FUNC_1282_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.PrivateIPAddress:linkToElementModel(registerVal2, "privateIPAddress", true, __FUNC_1282_)
	local function __FUNC_133A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.PublicIPAddress:linkToElementModel(registerVal2, "publicIPAddress", true, __FUNC_133A_)
	local function __FUNC_13F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Gamertag:linkToElementModel(registerVal2, "gamertag", true, __FUNC_13F2_)
	local function __FUNC_14AA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Xuid:linkToElementModel(registerVal2, "xuid", true, __FUNC_14AA_)
	local function __FUNC_1562_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NoResults:linkToElementModel(registerVal2, "noResults", true, __FUNC_1562_)
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_161A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_161A_
	local function __FUNC_167A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.FadeIn = __FUNC_167A_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_16DA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_16DA_
	local function __FUNC_173A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.FadeIn = __FUNC_173A_
	local function __FUNC_179A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.Right = __FUNC_179A_
	registerVal12.Left = registerVal13
	registerVal13 = {}
	local function __FUNC_17FA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_17FA_
	local function __FUNC_185A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.FadeIn = __FUNC_185A_
	local function __FUNC_18BA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.Left = __FUNC_18BA_
	registerVal12.Right = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Left"
	local function __FUNC_191A_(arg0, arg1, arg2)
		return IsWidgetInFocus(registerVal2, "LeftContainer", arg2)
	end

	registerVal15.condition = __FUNC_191A_
	local registerVal16 = {}
	registerVal16.stateName = "Right"
	local function __FUNC_198C_(arg0, arg1, arg2)
		return IsWidgetInFocus(registerVal2, "ClientList", arg2)
	end

	registerVal16.condition = __FUNC_198C_
	registerVal14 = {registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_19FD_(arg0)
		arg0.Background:close()
		arg0.Status:close()
		arg0.QoSPing:close()
		arg0.NATType:close()
		arg0.PrivateIPAddress:close()
		arg0.PublicIPAddress:close()
		arg0.Gamertag:close()
		arg0.Xuid:close()
		arg0.NoResults:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_19FD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

