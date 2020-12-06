-- Decompiled with CoDLUIDecompiler by JariK

CoD.TacticalModeUtility = {}
function CoD.TacticalModeUtility.CreateTacticalModeWidgets(arg0, arg1)
	if not CoD.TacticalModeWidget then
		DebugPrint("Cannot create TacticalModeWidget since it hasn't been included")
		return 
	end
	local registerVal2 = DataSources.WorldSpaceIndicators.getModel(arg1)
	local registerVal3 = {}
	local registerVal4 = {}
	registerVal4.name = "distance"
	registerVal4.defaultValue = 0.000000
	local registerVal5 = {}
	registerVal5.name = "isShooting"
	registerVal5.defaultValue = false
	local registerVal6 = {}
	registerVal6.name = "isShootingPlayer"
	registerVal6.defaultValue = false
	local registerVal7 = {}
	registerVal7.name = "isManeuvering"
	registerVal7.defaultValue = false
	local registerVal8 = {}
	registerVal8.name = "isSuppressed"
	registerVal8.defaultValue = false
	local registerVal9 = {}
	registerVal9.name = "health"
	registerVal9.defaultValue = 0.000000
	local registerVal10 = {}
	registerVal10.name = "archetypeImage"
	registerVal10.defaultValue = ""
	local registerVal11 = {}
	registerVal11.name = "alpha"
	registerVal11.defaultValue = 0.000000
	local registerVal12 = {}
	registerVal12.name = "showDamage"
	registerVal12.defaultValue = true
	registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal6 = Engine.CreateModel(registerVal2, ("tacticalMode" .. 0.000000))
	registerVal7, registerVal8, registerVal9 = ipairs(registerVal3)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		LUI.CreateModelAndInitialize(registerVal6, value11.name, value11.defaultValue)
	end
	registerVal7 = CoD.TacticalModeWidget.new(arg0, arg1)
	registerVal7:setModel(registerVal6)
	registerVal8 = registerVal7:setupTacticalWidget(0.000000, arg1)
	arg0.fullscreenContainer:addElement(registerVal7)
end

function CoD.TacticalModeUtility.CreateShooterSpottedWidgets(arg0, arg1)
	if not CoD.ClampedShooterWidget then
		DebugPrint("Cannot create ClampedShooterWidget since it hasn't been included")
		return 
	end
	local registerVal2 = DataSources.WorldSpaceIndicators.getModel(arg1)
	local registerVal3 = {}
	local registerVal4 = {}
	registerVal4.name = "archetypeImage"
	registerVal4.defaultValue = ""
	local registerVal5 = {}
	registerVal5.name = "alpha"
	registerVal5.defaultValue = 0.000000
	local registerVal6 = {}
	registerVal6.name = "arrowRotation"
	registerVal6.defaultValue = 0.000000
	local registerVal7 = {}
	registerVal7.name = "shootingAtPlayer"
	registerVal7.defaultValue = false
	registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
	registerVal6 = Engine.CreateModel(registerVal2, ("clampedShooter" .. 0.000000))
	registerVal7, registerVal8, registerVal9 = ipairs(registerVal3)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		LUI.CreateModelAndInitialize(registerVal6, value11.name, value11.defaultValue)
	end
	registerVal7 = CoD.ClampedShooterWidget.new(arg0, arg1)
	registerVal7:setModel(registerVal6)
	registerVal8 = registerVal7:setupClampedShooterWidget(0.000000, arg1)
	arg0.fullscreenContainer:addElement(registerVal7)
end

