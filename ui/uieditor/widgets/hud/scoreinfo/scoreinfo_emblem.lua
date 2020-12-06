-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C1_(arg0, arg1, arg2)
	local registerVal3 = IsDemoPlaying()
	if registerVal3 and arg0.playerEmblem then
		arg0.playerEmblem:unsubscribeFromAllModels()
		local function __FUNC_2DD_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.playerEmblem:setupPlayerEmblemByXUID(registerVal1)
			end
		end

		arg0.playerEmblem:subscribeToGlobalModel(arg1, "Demo", "clientXUID", __FUNC_2DD_)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_Emblem = registerVal2
local function __FUNC_3A2_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_Emblem)
	registerVal2.id = "ScoreInfo_Emblem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 72.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 44.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_8BB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "PerController", "identityBadge.xuid", __FUNC_8BB_)
	registerVal2:addElement(registerVal3)
	registerVal2.playerEmblem = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -36.000000, -20.000000)
	registerVal4:setTopBottom(false, false, -22.000000, 22.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_scorewidget_emblemmask"))
	registerVal2:addElement(registerVal4)
	registerVal2.SidemaskL = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, 20.000000, 36.000000)
	registerVal5:setTopBottom(false, false, -22.000000, 22.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setYRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_scorewidget_emblemmask"))
	registerVal2:addElement(registerVal5)
	registerVal2.SidemaskR = registerVal5
	local function __FUNC_95C_(arg0)
		arg0.playerEmblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_95C_)
	if __FUNC_1C1_ then
		__FUNC_1C1_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScoreInfo_Emblem.new = __FUNC_3A2_
