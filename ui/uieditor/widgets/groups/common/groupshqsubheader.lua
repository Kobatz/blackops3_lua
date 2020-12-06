-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsHQSubheader = registerVal1
function CoD.GroupsHQSubheader.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 8.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsHQSubheader)
	registerVal2.id = "GroupsHQSubheader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 199.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 188.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setRGB(0.870000, 0.880000, 0.780000)
	registerVal3:setText(Engine.Localize("GROUPS_HEADQUARTERS"))
	registerVal3:setTTF("fonts/UnitedSansRgMd.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.GroupHQTitle = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 196.000000, 252.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal4:setRGB(0.870000, 0.880000, 0.780000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setTTF("fonts/UnitedSansRgMd.ttf")
	local function __FUNC_7EC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "SelectedGroup", "memberStatusText", __FUNC_7EC_)
	registerVal2:addElement(registerVal4)
	registerVal2.Label0 = registerVal4
	local function __FUNC_8A6_(arg0)
		arg0.Label0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8A6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

