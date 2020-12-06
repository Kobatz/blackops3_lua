-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_SciFi_ufolights")
require("ui.uieditor.widgets.CallingCards.CallingCards_SciFi_Steam")
require("ui.uieditor.widgets.CallingCards.CallingCards_SciFi_LenseFlare")
require("ui.uieditor.widgets.CallingCards.CallingCards_SciFi_Headlights")
require("ui.uieditor.widgets.CallingCards.CallingCards_Scifi_Fog")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_SciFiWidget = registerVal1
function CoD.CallingCards_SciFiWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_SciFiWidget)
	registerVal2.id = "CallingCards_SciFiWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_scifi_lrg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 288.430000, 418.570000)
	registerVal4:setTopBottom(true, false, -102.850000, 222.850000)
	registerVal4:setRGB(0.830000, 0.970000, 1.000000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = CoD.CallingCards_SciFi_ufolights.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 123.000000, 553.810000)
	registerVal5:setTopBottom(true, false, -12.420000, 82.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardsSciFiufolights = registerVal5
	local registerVal6 = CoD.CallingCards_SciFi_Steam.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 176.000000, 529.810000)
	registerVal6:setTopBottom(true, false, -6.880000, 126.880000)
	registerVal2:addElement(registerVal6)
	registerVal2.CallingCardsSciFiSteam = registerVal6
	local registerVal7 = CoD.CallingCards_SciFi_LenseFlare.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -118.190000, 601.810000)
	registerVal7:setTopBottom(true, false, -21.210000, 98.790000)
	registerVal2:addElement(registerVal7)
	registerVal2.CallingCardsSciFiLenseFlare = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 288.430000, 419.370000)
	registerVal8:setTopBottom(true, false, 18.240000, 118.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_mp_scifi_aliens"))
	registerVal2:addElement(registerVal8)
	registerVal2.Aliens = registerVal8
	local registerVal9 = CoD.CallingCards_SciFi_Headlights.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 29.000000, 338.410000)
	registerVal9:setTopBottom(true, false, 69.120000, 131.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.CallingCardsSciFiHeadlights = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 95.240000, 197.000000)
	registerVal10:setTopBottom(true, false, 18.240000, 120.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcard_mp_scifi_man"))
	registerVal2:addElement(registerVal10)
	registerVal2.Man = registerVal10
	local registerVal11 = CoD.CallingCards_Scifi_Fog.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, -171.040000, 538.440000)
	registerVal11:setTopBottom(true, false, -52.500000, 146.500000)
	registerVal2:addElement(registerVal11)
	registerVal2.CallingCardsScifiFog = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_E0B_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_F14_(arg0, arg1)
			local function __FUNC_108F_(arg0, arg1)
				local function __FUNC_1207_(arg0, arg1)
					local function __FUNC_137F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_137F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1290.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.460000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_137F_)
				end

				if arg1.interrupted then
					__FUNC_1207_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1207_)
			end

			if arg1.interrupted then
				__FUNC_108F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.550000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108F_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(1.000000)
		__FUNC_F14_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_E0B_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_1531_(arg0)
		arg0.CallingCardsSciFiufolights:close()
		arg0.CallingCardsSciFiSteam:close()
		arg0.CallingCardsSciFiLenseFlare:close()
		arg0.CallingCardsSciFiHeadlights:close()
		arg0.CallingCardsScifiFog:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1531_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

