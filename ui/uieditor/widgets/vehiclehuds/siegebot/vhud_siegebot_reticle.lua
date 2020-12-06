-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_missile_container")
require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_damage_bottom")
require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_damage_top")
require("ui.uieditor.widgets.VehicleHUDs.siegebot.vuhd_siegebot_lockedWidget")
require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_EMPwidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_siegebot_reticle = registerVal1
function CoD.vhud_siegebot_reticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_siegebot_reticle)
	registerVal2.id = "vhud_siegebot_reticle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -9.000000, 7.000000)
	registerVal3:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal3:setRGB(1.000000, 0.830000, 0.390000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_centerpoint"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.agrCenterPoint = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -9.000000, 7.000000)
	registerVal4:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal4:setRGB(1.000000, 0.830000, 0.390000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_centerpoint"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.agrCenterPoint0 = registerVal4
	local registerVal5 = CoD.vhud_siegebot_missile_container.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1142.000000, 1228.000000)
	registerVal5:setTopBottom(true, false, 412.000000, 567.000000)
	registerVal5:setRGB(0.800000, 0.990000, 1.000000)
	local function __FUNC_1F4C_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_1F4C_)
	registerVal2:addElement(registerVal5)
	registerVal2.vhudsiegebotmissilecontainer = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 1132.000000, 1238.000000)
	registerVal6:setTopBottom(true, false, 578.000000, 684.000000)
	registerVal6:setRGB(0.130000, 0.160000, 0.170000)
	registerVal6:setAlpha(0.400000)
	registerVal6:setYRot(-40.000000)
	registerVal6:setScale(1.300000)
	registerVal6:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_circlebacking"))
	registerVal2:addElement(registerVal6)
	registerVal2.BackingDamage = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -7.000000, 5.000000)
	registerVal7:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal7:setScale(0.600000)
	registerVal7:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_centerdot"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.CenterDOT = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -13.000000, 11.000000)
	registerVal8:setTopBottom(false, false, -32.500000, -20.500000)
	registerVal8:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_hairlinetop"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.HairlineTop = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, 15.000000, 27.000000)
	registerVal9:setTopBottom(false, false, 15.500000, 27.500000)
	registerVal9:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_hairlineside"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.HairlineRight = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -28.000000, -16.000000)
	registerVal10:setTopBottom(false, false, 15.500000, 27.500000)
	registerVal10:setYRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_hairlineside"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.HairlineLeft = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -13.000000, 11.000000)
	registerVal11:setTopBottom(false, false, -81.450000, -74.450000)
	registerVal11:setAlpha(0.800000)
	registerVal11:setZRot(90.000000)
	registerVal11:setScale(0.900000)
	registerVal11:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linetop"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal12:setTopBottom(false, false, 67.100000, 74.100000)
	registerVal12:setAlpha(0.800000)
	registerVal12:setZRot(90.000000)
	registerVal12:setScale(0.900000)
	registerVal12:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linetop"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image1 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, 67.500000, 151.500000)
	registerVal13:setTopBottom(false, false, -6.450000, 5.550000)
	registerVal13:setAlpha(0.600000)
	registerVal13:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image2 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -147.750000, -63.750000)
	registerVal14:setTopBottom(false, false, -6.450000, 5.550000)
	registerVal14:setAlpha(0.600000)
	registerVal14:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image3 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, 168.500000, 192.500000)
	registerVal15:setTopBottom(false, false, -6.450000, 5.550000)
	registerVal15:setAlpha(0.800000)
	registerVal15:setZRot(90.000000)
	registerVal15:setScale(0.900000)
	registerVal15:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_lineright"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image4 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, 206.500000, 230.500000)
	registerVal16:setTopBottom(false, false, -6.450000, 5.550000)
	registerVal16:setAlpha(0.800000)
	registerVal16:setZRot(90.000000)
	registerVal16:setScale(0.900000)
	registerVal16:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_lineright"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Image5 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -224.750000, -200.750000)
	registerVal17:setTopBottom(false, false, -6.450000, 5.550000)
	registerVal17:setAlpha(0.800000)
	registerVal17:setZRot(90.000000)
	registerVal17:setScale(0.900000)
	registerVal17:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_lineright"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Image6 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -187.750000, -163.750000)
	registerVal18:setTopBottom(false, false, -6.450000, 5.550000)
	registerVal18:setAlpha(0.800000)
	registerVal18:setZRot(90.000000)
	registerVal18:setScale(0.900000)
	registerVal18:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_lineright"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Image7 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 1132.000000, 1238.000000)
	registerVal19:setTopBottom(true, false, 578.000000, 684.000000)
	registerVal19:setRGB(0.130000, 0.160000, 0.170000)
	registerVal19:setAlpha(0.400000)
	registerVal19:setYRot(-40.000000)
	registerVal19:setScale(1.300000)
	registerVal19:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_iconbottombacking"))
	local function __FUNC_1F9E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setZRot(Multiple(-360.000000, registerVal1))
		end
	end

	registerVal19:linkToElementModel(registerVal2, "relativeYaw", true, __FUNC_1F9E_)
	registerVal2:addElement(registerVal19)
	registerVal2.BottomBacking = registerVal19
	local registerVal20 = CoD.vhud_siegebot_damage_bottom.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 1132.000000, 1238.000000)
	registerVal20:setTopBottom(true, false, 578.000000, 684.000000)
	registerVal20:setRGB(0.800000, 0.990000, 1.000000)
	registerVal20:setYRot(-40.000000)
	registerVal20:setScale(1.300000)
	local function __FUNC_2053_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setZRot(Multiple(-360.000000, registerVal1))
		end
	end

	registerVal20:linkToElementModel(registerVal2, "relativeYaw", true, __FUNC_2053_)
	local function __FUNC_2107_(arg0)
		registerVal20:setModel(arg0, arg1)
	end

	registerVal20:linkToElementModel(registerVal2, nil, false, __FUNC_2107_)
	registerVal2:addElement(registerVal20)
	registerVal2.vhudsiegebotdamagebottom = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 1132.000000, 1238.000000)
	registerVal21:setTopBottom(true, false, 578.000000, 684.000000)
	registerVal21:setRGB(0.130000, 0.160000, 0.170000)
	registerVal21:setAlpha(0.800000)
	registerVal21:setYRot(-40.000000)
	registerVal21:setScale(1.300000)
	registerVal21:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_icontopbacking"))
	registerVal2:addElement(registerVal21)
	registerVal2.TopBacking = registerVal21
	local registerVal22 = CoD.vhud_siegebot_damage_top.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 1132.000000, 1238.000000)
	registerVal22:setTopBottom(true, false, 578.000000, 684.000000)
	registerVal22:setRGB(0.800000, 0.990000, 1.000000)
	registerVal22:setYRot(-40.000000)
	registerVal22:setScale(1.300000)
	local function __FUNC_2156_(arg0)
		registerVal22:setModel(arg0, arg1)
	end

	registerVal22:linkToElementModel(registerVal2, nil, false, __FUNC_2156_)
	registerVal2:addElement(registerVal22)
	registerVal2.vhudsiegebotdamagetop = registerVal22
	local registerVal23 = CoD.vuhd_siegebot_lockedWidget.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, 606.500000, 673.500000)
	registerVal23:setTopBottom(true, false, 474.000000, 538.000000)
	registerVal2:addElement(registerVal23)
	registerVal2.vuhdsiegebotlockedWidget = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(false, false, 49.500000, 151.500000)
	registerVal24:setTopBottom(false, false, -2.000000, 1.000000)
	registerVal24:setAlpha(0.400000)
	registerVal24:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.Image20 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(false, false, -146.750000, -44.750000)
	registerVal25:setTopBottom(false, false, -2.000000, 1.000000)
	registerVal25:setAlpha(0.400000)
	registerVal25:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.Image8 = registerVal25
	local registerVal26 = CoD.vhud_siegebot_EMPwidget.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, 1113.000000, 1257.000000)
	registerVal26:setTopBottom(true, false, 427.000000, 707.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.vhudsiegebotEMPwidget = registerVal26
	local registerVal27 = {}
	local registerVal28 = {}
	local function __FUNC_21A6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal28.DefaultClip = __FUNC_21A6_
	local function __FUNC_2206_()
		registerVal2:setupElementClipCounter(22.000000)
		local function __FUNC_2AD2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.agrCenterPoint:setAlpha(0.000000)
		__FUNC_2AD2_(registerVal3, {})
		local function __FUNC_2C85_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.agrCenterPoint0:setAlpha(0.000000)
		__FUNC_2C85_(registerVal4, {})
		local function __FUNC_2E39_(arg0, arg1)
			local function __FUNC_2F90_(arg0, arg1)
				local function __FUNC_310B_(arg0, arg1)
					local function __FUNC_3283_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3283_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.370000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3283_)
				end

				if arg1.interrupted then
					__FUNC_310B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_310B_)
			end

			if arg1.interrupted then
				__FUNC_2F90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F90_)
		end

		registerVal5:completeAnimation()
		registerVal2.vhudsiegebotmissilecontainer:setAlpha(0.000000)
		__FUNC_2E39_(registerVal5, {})
		local function __FUNC_3435_(arg0, arg1)
			local function __FUNC_358C_(arg0, arg1)
				local function __FUNC_3707_(arg0, arg1)
					local function __FUNC_387F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, true, false, CoD.TweenType.Back)
						end
						arg0:setAlpha(0.300000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_387F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.110000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_387F_)
				end

				if arg1.interrupted then
					__FUNC_3707_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.260000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3707_)
			end

			if arg1.interrupted then
				__FUNC_358C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_358C_)
		end

		registerVal6:completeAnimation()
		registerVal2.BackingDamage:setAlpha(0.000000)
		__FUNC_3435_(registerVal6, {})
		local function __FUNC_3A2F_(arg0, arg1)
			local function __FUNC_3B84_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3B84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B84_)
		end

		registerVal7:completeAnimation()
		registerVal2.CenterDOT:setAlpha(0.000000)
		__FUNC_3A2F_(registerVal7, {})
		local function __FUNC_3D39_(arg0, arg1)
			local function __FUNC_3EB3_(arg0, arg1)
				local function __FUNC_402B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_402B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_402B_)
			end

			if arg1.interrupted then
				__FUNC_3EB3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EB3_)
		end

		registerVal8:completeAnimation()
		registerVal2.HairlineTop:setAlpha(0.000000)
		__FUNC_3D39_(registerVal8, {})
		local function __FUNC_41DD_(arg0, arg1)
			local function __FUNC_4357_(arg0, arg1)
				local function __FUNC_44CF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 15.000000, 27.000000)
					arg0:setTopBottom(false, false, 15.500000, 27.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_44CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44CF_)
			end

			if arg1.interrupted then
				__FUNC_4357_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4357_)
		end

		registerVal9:completeAnimation()
		registerVal2.HairlineRight:setLeftRight(false, false, 15.000000, 27.000000)
		registerVal2.HairlineRight:setTopBottom(false, false, 15.500000, 27.500000)
		registerVal2.HairlineRight:setAlpha(0.000000)
		__FUNC_41DD_(registerVal9, {})
		local function __FUNC_46F1_(arg0, arg1)
			local function __FUNC_48A3_(arg0, arg1)
				local function __FUNC_4A53_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -28.000000, -17.000000)
					arg0:setTopBottom(false, false, 15.500000, 27.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4A53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -28.000000, -16.900000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A53_)
			end

			if arg1.interrupted then
				__FUNC_48A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -28.000000, -16.800000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48A3_)
		end

		registerVal10:completeAnimation()
		registerVal2.HairlineLeft:setLeftRight(false, false, -28.000000, -16.000000)
		registerVal2.HairlineLeft:setTopBottom(false, false, 15.500000, 27.500000)
		registerVal2.HairlineLeft:setAlpha(0.000000)
		__FUNC_46F1_(registerVal10, {})
		local function __FUNC_4C75_(arg0, arg1)
			local function __FUNC_4DCC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.800000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4DCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DCC_)
		end

		registerVal11:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_4C75_(registerVal11, {})
		local function __FUNC_4F81_(arg0, arg1)
			local function __FUNC_50D8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.800000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_50D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50D8_)
		end

		registerVal12:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_4F81_(registerVal12, {})
		local function __FUNC_528D_(arg0, arg1)
			local function __FUNC_53E4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_53E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53E4_)
		end

		registerVal13:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		__FUNC_528D_(registerVal13, {})
		local function __FUNC_5599_(arg0, arg1)
			local function __FUNC_56F0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_56F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56F0_)
		end

		registerVal14:completeAnimation()
		registerVal2.Image3:setAlpha(0.000000)
		__FUNC_5599_(registerVal14, {})
		local function __FUNC_58A5_(arg0, arg1)
			local function __FUNC_59FC_(arg0, arg1)
				local function __FUNC_5B77_(arg0, arg1)
					local function __FUNC_5CEF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5CEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CEF_)
				end

				if arg1.interrupted then
					__FUNC_5B77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B77_)
			end

			if arg1.interrupted then
				__FUNC_59FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59FC_)
		end

		registerVal15:completeAnimation()
		registerVal2.Image4:setAlpha(0.000000)
		__FUNC_58A5_(registerVal15, {})
		local function __FUNC_5EA1_(arg0, arg1)
			local function __FUNC_5FF8_(arg0, arg1)
				local function __FUNC_6173_(arg0, arg1)
					local function __FUNC_62EB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_62EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62EB_)
				end

				if arg1.interrupted then
					__FUNC_6173_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6173_)
			end

			if arg1.interrupted then
				__FUNC_5FF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FF8_)
		end

		registerVal16:completeAnimation()
		registerVal2.Image5:setAlpha(0.000000)
		__FUNC_5EA1_(registerVal16, {})
		local function __FUNC_649D_(arg0, arg1)
			local function __FUNC_65F4_(arg0, arg1)
				local function __FUNC_676F_(arg0, arg1)
					local function __FUNC_68E7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_68E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68E7_)
				end

				if arg1.interrupted then
					__FUNC_676F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_676F_)
			end

			if arg1.interrupted then
				__FUNC_65F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65F4_)
		end

		registerVal17:completeAnimation()
		registerVal2.Image6:setAlpha(0.000000)
		__FUNC_649D_(registerVal17, {})
		local function __FUNC_6A99_(arg0, arg1)
			local function __FUNC_6BF0_(arg0, arg1)
				local function __FUNC_6D6B_(arg0, arg1)
					local function __FUNC_6EE3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6EE3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EE3_)
				end

				if arg1.interrupted then
					__FUNC_6D6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D6B_)
			end

			if arg1.interrupted then
				__FUNC_6BF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BF0_)
		end

		registerVal18:completeAnimation()
		registerVal2.Image7:setAlpha(0.000000)
		__FUNC_6A99_(registerVal18, {})
		local function __FUNC_7095_(arg0, arg1)
			local function __FUNC_71EC_(arg0, arg1)
				local function __FUNC_7367_(arg0, arg1)
					local function __FUNC_74DF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.400000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_74DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.040000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74DF_)
				end

				if arg1.interrupted then
					__FUNC_7367_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.340000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7367_)
			end

			if arg1.interrupted then
				__FUNC_71EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71EC_)
		end

		registerVal19:completeAnimation()
		registerVal2.BottomBacking:setAlpha(0.000000)
		__FUNC_7095_(registerVal19, {})
		local function __FUNC_7691_(arg0, arg1)
			local function __FUNC_77E8_(arg0, arg1)
				local function __FUNC_7963_(arg0, arg1)
					local function __FUNC_7ADB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, true, false, CoD.TweenType.Back)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7ADB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.130000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7ADB_)
				end

				if arg1.interrupted then
					__FUNC_7963_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7963_)
			end

			if arg1.interrupted then
				__FUNC_77E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77E8_)
		end

		registerVal20:completeAnimation()
		registerVal2.vhudsiegebotdamagebottom:setAlpha(0.000000)
		__FUNC_7691_(registerVal20, {})
		local function __FUNC_7C8B_(arg0, arg1)
			local function __FUNC_7DE0_(arg0, arg1)
				local function __FUNC_7F5B_(arg0, arg1)
					local function __FUNC_80D3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_80D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80D3_)
				end

				if arg1.interrupted then
					__FUNC_7F5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F5B_)
			end

			if arg1.interrupted then
				__FUNC_7DE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DE0_)
		end

		registerVal21:completeAnimation()
		registerVal2.TopBacking:setAlpha(0.000000)
		__FUNC_7C8B_(registerVal21, {})
		local function __FUNC_8285_(arg0, arg1)
			local function __FUNC_83DC_(arg0, arg1)
				local function __FUNC_8557_(arg0, arg1)
					local function __FUNC_86CF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, true, false, CoD.TweenType.Back)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_86CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.160000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86CF_)
				end

				if arg1.interrupted then
					__FUNC_8557_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8557_)
			end

			if arg1.interrupted then
				__FUNC_83DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83DC_)
		end

		registerVal22:completeAnimation()
		registerVal2.vhudsiegebotdamagetop:setAlpha(0.000000)
		__FUNC_8285_(registerVal22, {})
		local function __FUNC_887F_(arg0, arg1)
			local function __FUNC_89D4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_89D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89D4_)
		end

		registerVal24:completeAnimation()
		registerVal2.Image20:setAlpha(0.000000)
		__FUNC_887F_(registerVal24, {})
		local function __FUNC_8B89_(arg0, arg1)
			local function __FUNC_8CE0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8CE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CE0_)
		end

		registerVal25:completeAnimation()
		registerVal2.Image8:setAlpha(0.000000)
		__FUNC_8B89_(registerVal25, {})
	end

	registerVal28.StartUp = __FUNC_2206_
	local function __FUNC_8E95_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal3:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_9822_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -13.000000, 11.000000)
			arg0:setTopBottom(false, false, -32.500000, -20.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.HairlineTop:setLeftRight(false, false, -13.000000, 11.000000)
		registerVal2.HairlineTop:setTopBottom(false, false, -32.500000, -20.500000)
		registerVal2.HairlineTop:setAlpha(1.000000)
		__FUNC_9822_(registerVal8, {})
		local function __FUNC_9A45_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 15.000000, 27.000000)
			arg0:setTopBottom(false, false, 15.500000, 27.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.HairlineRight:setLeftRight(false, false, 15.000000, 27.000000)
		registerVal2.HairlineRight:setTopBottom(false, false, 15.500000, 27.500000)
		registerVal2.HairlineRight:setAlpha(1.000000)
		__FUNC_9A45_(registerVal9, {})
		local function __FUNC_9C69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -28.000000, -16.000000)
			arg0:setTopBottom(false, false, 15.500000, 27.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.HairlineLeft:setLeftRight(false, false, -28.000000, -16.000000)
		registerVal2.HairlineLeft:setTopBottom(false, false, 15.500000, 27.500000)
		registerVal2.HairlineLeft:setAlpha(1.000000)
		__FUNC_9C69_(registerVal10, {})
		local function __FUNC_9E8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -13.000000, 11.000000)
			arg0:setTopBottom(false, false, -21.500000, -14.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, -13.000000, 11.000000)
		registerVal2.Image0:setTopBottom(false, false, -81.450000, -74.450000)
		__FUNC_9E8D_(registerVal11, {})
		local function __FUNC_A08E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -13.000000, 11.000000)
			arg0:setTopBottom(false, false, 15.500000, 22.000000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Image1:setLeftRight(false, false, -12.000000, 12.000000)
		registerVal2.Image1:setTopBottom(false, false, 67.100000, 74.100000)
		registerVal2.Image1:setAlpha(0.800000)
		__FUNC_A08E_(registerVal12, {})
		local function __FUNC_A2B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 4.500000, 88.500000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Image2:setLeftRight(false, false, 67.500000, 151.500000)
		registerVal2.Image2:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image2:setAlpha(0.600000)
		__FUNC_A2B1_(registerVal13, {})
		local function __FUNC_A4D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -91.750000, -7.750000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Image3:setLeftRight(false, false, -147.750000, -63.750000)
		registerVal2.Image3:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image3:setAlpha(0.600000)
		__FUNC_A4D5_(registerVal14, {})
		local function __FUNC_A6F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 107.430000, 131.430000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Image4:setLeftRight(false, false, 168.500000, 192.500000)
		registerVal2.Image4:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image4:setAlpha(1.000000)
		__FUNC_A6F9_(registerVal15, {})
		local function __FUNC_A91D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 147.430000, 171.430000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.Image5:setLeftRight(false, false, 206.500000, 230.500000)
		registerVal2.Image5:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image5:setAlpha(1.000000)
		__FUNC_A91D_(registerVal16, {})
		local function __FUNC_AB41_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -166.750000, -142.750000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Image6:setLeftRight(false, false, -224.750000, -200.750000)
		registerVal2.Image6:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image6:setAlpha(1.000000)
		__FUNC_AB41_(registerVal17, {})
		local function __FUNC_AD65_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -129.570000, -105.570000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.Image7:setLeftRight(false, false, -187.750000, -163.750000)
		registerVal2.Image7:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image7:setAlpha(1.000000)
		__FUNC_AD65_(registerVal18, {})
	end

	registerVal28.Zoom = __FUNC_8E95_
	registerVal27.DefaultState = registerVal28
	registerVal28 = {}
	local function __FUNC_AF89_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal8:completeAnimation()
		registerVal2.HairlineTop:setLeftRight(false, false, -13.000000, 11.000000)
		registerVal2.HairlineTop:setTopBottom(false, false, -32.500000, -20.500000)
		registerVal2.HairlineTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.HairlineRight:setLeftRight(false, false, 15.000000, 27.000000)
		registerVal2.HairlineRight:setTopBottom(false, false, 15.500000, 27.500000)
		registerVal2.HairlineRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.HairlineLeft:setLeftRight(false, false, -28.000000, -16.000000)
		registerVal2.HairlineLeft:setTopBottom(false, false, 15.500000, 27.500000)
		registerVal2.HairlineLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, -13.000000, 11.000000)
		registerVal2.Image0:setTopBottom(false, false, -21.500000, -14.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Image1:setLeftRight(false, false, -13.000000, 11.000000)
		registerVal2.Image1:setTopBottom(false, false, 15.500000, 22.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Image2:setLeftRight(false, false, 4.500000, 88.500000)
		registerVal2.Image2:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Image3:setLeftRight(false, false, -91.750000, -7.750000)
		registerVal2.Image3:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Image4:setLeftRight(false, false, 107.430000, 131.430000)
		registerVal2.Image4:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Image5:setLeftRight(false, false, 147.430000, 171.430000)
		registerVal2.Image5:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Image6:setLeftRight(false, false, -166.750000, -142.750000)
		registerVal2.Image6:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Image7:setLeftRight(false, false, -129.570000, -105.570000)
		registerVal2.Image7:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal28.DefaultClip = __FUNC_AF89_
	local function __FUNC_B71E_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_BF5A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -13.000000, 11.000000)
			arg0:setTopBottom(false, false, -32.500000, -20.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.HairlineTop:setLeftRight(false, false, -13.000000, 11.000000)
		registerVal2.HairlineTop:setTopBottom(false, false, -32.500000, -20.500000)
		registerVal2.HairlineTop:setAlpha(0.000000)
		__FUNC_BF5A_(registerVal8, {})
		local function __FUNC_C17D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 15.000000, 27.000000)
			arg0:setTopBottom(false, false, 15.500000, 27.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.HairlineRight:setLeftRight(false, false, 15.000000, 27.000000)
		registerVal2.HairlineRight:setTopBottom(false, false, 15.500000, 27.500000)
		registerVal2.HairlineRight:setAlpha(0.000000)
		__FUNC_C17D_(registerVal9, {})
		local function __FUNC_C3A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -28.000000, -16.000000)
			arg0:setTopBottom(false, false, 15.500000, 27.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.HairlineLeft:setLeftRight(false, false, -28.000000, -16.000000)
		registerVal2.HairlineLeft:setTopBottom(false, false, 15.500000, 27.500000)
		registerVal2.HairlineLeft:setAlpha(0.000000)
		__FUNC_C3A1_(registerVal10, {})
		local function __FUNC_C5C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -13.000000, 11.000000)
			arg0:setTopBottom(false, false, -81.450000, -74.450000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, -13.000000, 11.000000)
		registerVal2.Image0:setTopBottom(false, false, -21.500000, -14.500000)
		registerVal2.Image0:setAlpha(0.800000)
		__FUNC_C5C5_(registerVal11, {})
		local function __FUNC_C7E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -12.000000, 12.000000)
			arg0:setTopBottom(false, false, 67.100000, 74.100000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Image1:setLeftRight(false, false, -13.000000, 11.000000)
		registerVal2.Image1:setTopBottom(false, false, 15.500000, 22.000000)
		registerVal2.Image1:setAlpha(0.800000)
		__FUNC_C7E9_(registerVal12, {})
		local function __FUNC_CA0D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 67.500000, 151.500000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Image2:setLeftRight(false, false, 4.500000, 88.500000)
		registerVal2.Image2:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image2:setAlpha(0.600000)
		__FUNC_CA0D_(registerVal13, {})
		local function __FUNC_CC31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -147.750000, -63.750000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Image3:setLeftRight(false, false, -91.750000, -7.750000)
		registerVal2.Image3:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image3:setAlpha(0.600000)
		__FUNC_CC31_(registerVal14, {})
		local function __FUNC_CE55_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 168.500000, 192.500000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Image4:setLeftRight(false, false, 107.430000, 131.430000)
		registerVal2.Image4:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image4:setAlpha(0.800000)
		__FUNC_CE55_(registerVal15, {})
		local function __FUNC_D079_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 206.500000, 230.500000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.Image5:setLeftRight(false, false, 147.430000, 171.430000)
		registerVal2.Image5:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image5:setAlpha(0.800000)
		__FUNC_D079_(registerVal16, {})
		local function __FUNC_D29D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -224.750000, -200.750000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Image6:setLeftRight(false, false, -166.750000, -142.750000)
		registerVal2.Image6:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image6:setAlpha(0.800000)
		__FUNC_D29D_(registerVal17, {})
		local function __FUNC_D4C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -187.750000, -163.750000)
			arg0:setTopBottom(false, false, -6.450000, 5.550000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.Image7:setLeftRight(false, false, -129.570000, -105.570000)
		registerVal2.Image7:setTopBottom(false, false, -6.450000, 5.550000)
		registerVal2.Image7:setAlpha(0.800000)
		__FUNC_D4C1_(registerVal18, {})
	end

	registerVal28.DefaultState = __FUNC_B71E_
	registerVal27.Zoom = registerVal28
	registerVal2.clipsPerState = registerVal27
	local function __FUNC_D6E5_(arg0)
		arg0.vhudsiegebotmissilecontainer:close()
		arg0.vhudsiegebotdamagebottom:close()
		arg0.vhudsiegebotdamagetop:close()
		arg0.vuhdsiegebotlockedWidget:close()
		arg0.vhudsiegebotEMPwidget:close()
		arg0.BottomBacking:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D6E5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

