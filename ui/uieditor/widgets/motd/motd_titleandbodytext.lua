-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MOTD_TitleAndBodyText = registerVal1
function CoD.MOTD_TitleAndBodyText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.MOTD_TitleAndBodyText)
	registerVal2.id = "MOTD_TitleAndBodyText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 431.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 417.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 718.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 43.000000)
	registerVal3:setTTF("fonts/escom.ttf")
	local function __FUNC_7E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "MtxCommsMOTD", "title", __FUNC_7E1_)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleLbl0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 42.290000)
	registerVal4:setTopBottom(true, false, 43.000000, 45.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.spacer = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 2.000000, 431.000000)
	registerVal5:setTopBottom(true, false, 47.000000, 69.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLineSpacing(-1.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_89A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "MtxCommsMOTD", "content_long", __FUNC_89A_)
	registerVal2:addElement(registerVal5)
	registerVal2.txtDescription = registerVal5
	local function __FUNC_952_(arg0)
		arg0.TitleLbl0:close()
		arg0.txtDescription:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_952_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

