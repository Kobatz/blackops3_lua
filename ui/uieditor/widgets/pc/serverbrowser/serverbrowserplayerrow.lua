-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ServerBrowserPlayerRow = registerVal1
function CoD.ServerBrowserPlayerRow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ServerBrowserPlayerRow)
	registerVal2.id = "ServerBrowserPlayerRow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.200000, 0.200000, 0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 5.000000, 257.000000)
	registerVal4:setTopBottom(true, false, 3.500000, 21.500000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_7FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "name", true, __FUNC_7FC_)
	registerVal2:addElement(registerVal4)
	registerVal2.name = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 257.000000, 347.000000)
	registerVal5:setTopBottom(true, false, 3.500000, 21.500000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8B6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(SecondsAsTimePlayedStringShort(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "timePlayed", true, __FUNC_8B6_)
	registerVal2:addElement(registerVal5)
	registerVal2.timePlayed = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_99E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_99E_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_AA4_(arg0)
		arg0.name:close()
		arg0.timePlayed:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AA4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

