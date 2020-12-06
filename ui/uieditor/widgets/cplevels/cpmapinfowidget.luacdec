-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CPMapInfoWidget = registerVal1
function CoD.CPMapInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CPMapInfoWidget)
	registerVal2.id = "CPMapInfoWidget"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 587.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 281.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 587.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 281.000000)
	local function __FUNC_7AB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "Image", true, __FUNC_7AB_)
	registerVal2:addElement(registerVal3)
	registerVal2.MapPreviewImage = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 8.000000, -8.000000)
	registerVal4:setTopBottom(true, false, 236.000000, 258.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_85C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "mapName", true, __FUNC_85C_)
	registerVal2:addElement(registerVal4)
	registerVal2.MapName = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 8.000000, -8.000000)
	registerVal5:setTopBottom(true, false, 258.000000, 276.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_916_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "mapLocation", true, __FUNC_916_)
	registerVal2:addElement(registerVal5)
	registerVal2.MapLocation = registerVal5
	local function __FUNC_9CE_(arg0)
		arg0.MapPreviewImage:close()
		arg0.MapName:close()
		arg0.MapLocation:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9CE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

