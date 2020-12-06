-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Competitive_CharacterDraft_CharacterSelection = registerVal1
function CoD.Competitive_CharacterDraft_CharacterSelection.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Competitive_CharacterDraft_CharacterSelection)
	registerVal2.id = "Competitive_CharacterDraft_CharacterSelection"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal3:setShaderVector(0.000000, 0.190000, 0.000000, 0.180000, 0.530000)
	registerVal2:addElement(registerVal3)
	registerVal2.HeroLobbyClientExtraCamRender = registerVal3
	local function __FUNC_5FB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupCharacterExtraCamRenderForLobbyClient(registerVal1)
		end
	end

	registerVal2.HeroLobbyClientExtraCamRender:linkToElementModel(registerVal2, "xuid", true, __FUNC_5FB_)
	local function __FUNC_6AF_(arg0)
		arg0.HeroLobbyClientExtraCamRender:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6AF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

