-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Controls_GenericControllerItem")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.StartMenu.StartMenu_lineGraphics_Options")
require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
local registerVal2 = {}
registerVal2.m_isFlipped = false
local function __FUNC_663_(arg0)
	DataSources.ButtonLayoutLabels.m_lastController = arg0
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModel(registerVal2, "ButtonLayoutLabels")
	if registerVal1 == nil then
		local registerVal3 = Engine.GetModelForController(arg0)
		registerVal2 = Engine.CreateModel(registerVal3, "ButtonLayoutLabels")
		local function __FUNC_99B_(arg0)
			Engine.CreateModel(registerVal2, (arg0 .. ".text"))
			Engine.CreateModel(registerVal2, (arg0 .. ".isDefault"))
		end

		__FUNC_99B_("xbA_psCross")
		__FUNC_99B_("xbB_psCircle")
		__FUNC_99B_("xbX_psSquare")
		__FUNC_99B_("xbY_psTriangle")
		__FUNC_99B_("back")
		__FUNC_99B_("start")
		__FUNC_99B_("lb")
		__FUNC_99B_("rb")
		__FUNC_99B_("leftTrig")
		__FUNC_99B_("rightTrig")
		__FUNC_99B_("leftDpad")
		__FUNC_99B_("rightDpad")
		__FUNC_99B_("upDpad")
		__FUNC_99B_("downDpad")
		__FUNC_99B_("leftStick")
		__FUNC_99B_("rightStick")
	end
	return registerVal2
end

registerVal2.getModel = __FUNC_663_
local function __FUNC_A54_(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.CreateModel(arg0, (arg2 .. ".text"))
	Engine.SetModelValue(registerVal5, arg1[arg3])
	registerVal5 = Engine.CreateModel(arg0, (arg2 .. ".isDefault"))
	if arg1[arg3] ~= {}.ButtonStrings[(CoD.BUTTONS_DEFAULT + 1.000000)][arg3] then
	end
	Engine.SetModelValue(registerVal5, true)
end

registerVal2.setButtonModel = __FUNC_A54_
local function __FUNC_BF5_()
	local registerVal3 = Engine.GetModelForController(DataSources.ButtonLayoutLabels.m_lastController)
	local registerVal2 = Engine.GetModel(registerVal3, "ButtonLayoutLabels")
	if DataSources.ButtonLayoutLabels.m_buttonStringsTable or not DataSources.ButtonLayoutLabels.m_buttonStringsTable then
		return 
	end
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "xbA_psCross", "BUTTON_A")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "xbB_psCircle", "BUTTON_B")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "xbX_psSquare", "BUTTON_X")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "xbY_psTriangle", "BUTTON_Y")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "back", "BUTTON_BACK")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "start", "BUTTON_START")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "leftDpad", "BUTTON_LEFT")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "rightDpad", "BUTTON_RIGHT")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "upDpad", "BUTTON_UP")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "downDpad", "BUTTON_DOWN")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "leftStick", "BUTTON_LSTICK")
	DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "rightStick", "BUTTON_RSTICK")
	if DataSources.ButtonLayoutLabels.m_isFlipped then
		DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "lb", "BUTTON_LTRIG")
		DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "rb", "BUTTON_RTRIG")
		DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "leftTrig", "BUTTON_LBUMP")
		DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "rightTrig", "BUTTON_RBUMP")
	else
		DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "lb", "BUTTON_LBUMP")
		DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "rb", "BUTTON_RBUMP")
		DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "leftTrig", "BUTTON_LTRIG")
		DataSources.ButtonLayoutLabels.setButtonModel(registerVal2, DataSources.ButtonLayoutLabels.m_buttonStringsTable, "rightTrig", "BUTTON_RTRIG")
	end
end

registerVal2.setModels = __FUNC_BF5_
DataSources.ButtonLayoutLabels = registerVal2
{}.ButtonStrings = {}
local function __FUNC_13C8_()
	local registerVal2 = {}
	registerVal2.BUTTON_A = "MENU_JUMP"
	registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
	registerVal2.BUTTON_X = "MENU_USE_RELOAD"
	registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
	local registerVal3 = CoD.CPMPZMINV("MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_SPECIAL_GRENADE", "MENU_THROW_TACTICALS_OR_SPECIAL")
	registerVal2.BUTTON_LBUMP = registerVal3
	registerVal2.BUTTON_RBUMP = "MENU_THROW_FRAG_GRENADE"
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_ENHANCED_VISION", "MENU_SCORESTREAK_SELECTION", "MENU_USE_GOBBLEGUM", "")
	registerVal2.BUTTON_UP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_CYBERNETIC_WHEEL_CONTROL", "MENU_SCORESTREAK_SELECTION", "MENU_EQUIP_SPECIAL_ITEM", "")
	registerVal2.BUTTON_DOWN = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_EQUIP_HEAVY_WEAPON", "", "", "MENU_DPAD_SESSION_SPECIFIC")
	registerVal2.BUTTON_LEFT = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_DNI_TACTICAL_MODE", "MENU_USE_SCORESTREAK", "MENU_PLACE_TRIPMINES", "")
	registerVal2.BUTTON_RIGHT = registerVal3
	registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
	registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
	registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
	registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
	registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
	registerVal2.BUTTON_RSTICK = "MENU_MELEE_ATTACK"
	{}.ButtonStrings[(CoD.BUTTONS_DEFAULT + 1.000000)] = registerVal2
	registerVal2 = {}
	registerVal2.BUTTON_A = "MENU_JUMP"
	registerVal2.BUTTON_B = "MENU_MELEE_ATTACK"
	registerVal2.BUTTON_X = "MENU_USE_RELOAD"
	registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
	registerVal3 = CoD.CPMPZMINV("MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_SPECIAL_GRENADE", "MENU_THROW_TACTICALS_OR_SPECIAL")
	registerVal2.BUTTON_LBUMP = registerVal3
	registerVal2.BUTTON_RBUMP = "MENU_THROW_FRAG_GRENADE"
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_ENHANCED_VISION", "MENU_SCORESTREAK_SELECTION", "MENU_USE_GOBBLEGUM", "")
	registerVal2.BUTTON_UP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_CYBERNETIC_WHEEL_CONTROL", "MENU_SCORESTREAK_SELECTION", "MENU_EQUIP_SPECIAL_ITEM", "")
	registerVal2.BUTTON_DOWN = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_EQUIP_HEAVY_WEAPON", "", "", "MENU_DPAD_SESSION_SPECIFIC")
	registerVal2.BUTTON_LEFT = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_DNI_TACTICAL_MODE", "MENU_USE_SCORESTREAK", "MENU_PLACE_TRIPMINES", "")
	registerVal2.BUTTON_RIGHT = registerVal3
	registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
	registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
	registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
	registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
	registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
	registerVal2.BUTTON_RSTICK = "MENU_CROUCH_PRONE"
	{}.ButtonStrings[(CoD.BUTTONS_EXPERIMENTAL + 1.000000)] = registerVal2
	registerVal2 = {}
	registerVal2.BUTTON_A = "MENU_JUMP"
	registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
	registerVal2.BUTTON_X = "MENU_USE_RELOAD"
	registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
	registerVal2.BUTTON_LBUMP = "MENU_THROW_FRAG_GRENADE"
	registerVal3 = CoD.CPMPZMINV("MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_SPECIAL_GRENADE", "MENU_THROW_TACTICALS_OR_SPECIAL")
	registerVal2.BUTTON_RBUMP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_ENHANCED_VISION", "MENU_SCORESTREAK_SELECTION", "MENU_USE_GOBBLEGUM", "")
	registerVal2.BUTTON_UP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_CYBERNETIC_WHEEL_CONTROL", "MENU_SCORESTREAK_SELECTION", "MENU_EQUIP_SPECIAL_ITEM", "")
	registerVal2.BUTTON_DOWN = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_EQUIP_HEAVY_WEAPON", "", "", "MENU_DPAD_SESSION_SPECIFIC")
	registerVal2.BUTTON_LEFT = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_DNI_TACTICAL_MODE", "MENU_USE_SCORESTREAK", "MENU_PLACE_TRIPMINES", "")
	registerVal2.BUTTON_RIGHT = registerVal3
	registerVal2.BUTTON_LTRIG = "MENU_FIRE_WEAPON"
	registerVal2.BUTTON_RTRIG = "MENU_AIM_DOWN_SIGHT"
	registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
	registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
	registerVal2.BUTTON_LSTICK = "MENU_MELEE_ATTACK"
	registerVal2.BUTTON_RSTICK = "MENU_SPRINT_HOLD_BREATH"
	{}.ButtonStrings[(CoD.BUTTONS_LEFTY + 1.000000)] = registerVal2
	registerVal2 = {}
	registerVal2.BUTTON_A = "MENU_JUMP"
	registerVal2.BUTTON_B = "MENU_MELEE_ATTACK"
	registerVal2.BUTTON_X = "MENU_USE_RELOAD"
	registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
	registerVal3 = CoD.CPMPZMINV("MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_SPECIAL_GRENADE", "MENU_THROW_TACTICALS_OR_SPECIAL")
	registerVal2.BUTTON_LBUMP = registerVal3
	registerVal2.BUTTON_RBUMP = "MENU_THROW_FRAG_GRENADE"
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_ENHANCED_VISION", "MENU_SCORESTREAK_SELECTION", "MENU_USE_GOBBLEGUM", "")
	registerVal2.BUTTON_UP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_CYBERNETIC_WHEEL_CONTROL", "MENU_SCORESTREAK_SELECTION", "MENU_EQUIP_SPECIAL_ITEM", "")
	registerVal2.BUTTON_DOWN = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_EQUIP_HEAVY_WEAPON", "", "", "MENU_DPAD_SESSION_SPECIFIC")
	registerVal2.BUTTON_LEFT = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_DNI_TACTICAL_MODE", "MENU_USE_SCORESTREAK", "MENU_PLACE_TRIPMINES", "")
	registerVal2.BUTTON_RIGHT = registerVal3
	registerVal2.BUTTON_LTRIG = "MENU_TOGGLE_AIM_DOWN_THE_SIGHT"
	registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
	registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
	registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
	registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
	registerVal2.BUTTON_RSTICK = "MENU_CROUCH_PRONE"
	{}.ButtonStrings[(CoD.BUTTONS_NOMAD + 1.000000)] = registerVal2
	registerVal2 = {}
	registerVal2.BUTTON_A = "MENU_JUMP"
	registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
	registerVal2.BUTTON_X = "MENU_USE_RELOAD"
	registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
	registerVal3 = CoD.CPMPZMINV("MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_SPECIAL_GRENADE", "MENU_THROW_TACTICALS_OR_SPECIAL")
	registerVal2.BUTTON_LBUMP = registerVal3
	registerVal2.BUTTON_RBUMP = "MENU_TOGGLE_AIM_DOWN_THE_SIGHT"
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_ENHANCED_VISION", "MENU_SCORESTREAK_SELECTION", "MENU_USE_GOBBLEGUM", "")
	registerVal2.BUTTON_UP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_CYBERNETIC_WHEEL_CONTROL", "MENU_SCORESTREAK_SELECTION", "MENU_EQUIP_SPECIAL_ITEM", "")
	registerVal2.BUTTON_DOWN = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_EQUIP_HEAVY_WEAPON", "", "", "MENU_DPAD_SESSION_SPECIFIC")
	registerVal2.BUTTON_LEFT = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_DNI_TACTICAL_MODE", "MENU_USE_SCORESTREAK", "MENU_PLACE_TRIPMINES", "")
	registerVal2.BUTTON_RIGHT = registerVal3
	registerVal2.BUTTON_LTRIG = "MENU_THROW_FRAG_GRENADE"
	registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
	registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
	registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
	registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
	registerVal2.BUTTON_RSTICK = "MENU_MELEE_ATTACK"
	{}.ButtonStrings[(CoD.BUTTONS_CHARLIE + 1.000000)] = registerVal2
	registerVal2 = {}
	registerVal3 = CoD.CPMPZMINV("MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_SPECIAL_GRENADE", "MENU_THROW_TACTICALS_OR_SPECIAL")
	registerVal2.BUTTON_A = registerVal3
	registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
	registerVal2.BUTTON_X = "MENU_USE_RELOAD"
	registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
	registerVal2.BUTTON_LBUMP = "MENU_JUMP"
	registerVal2.BUTTON_RBUMP = "MENU_THROW_FRAG_GRENADE"
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_ENHANCED_VISION", "MENU_SCORESTREAK_SELECTION", "MENU_USE_GOBBLEGUM", "")
	registerVal2.BUTTON_UP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_CYBERNETIC_WHEEL_CONTROL", "MENU_SCORESTREAK_SELECTION", "MENU_EQUIP_SPECIAL_ITEM", "")
	registerVal2.BUTTON_DOWN = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_EQUIP_HEAVY_WEAPON", "", "", "MENU_DPAD_SESSION_SPECIFIC")
	registerVal2.BUTTON_LEFT = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_DNI_TACTICAL_MODE", "MENU_USE_SCORESTREAK", "MENU_PLACE_TRIPMINES", "")
	registerVal2.BUTTON_RIGHT = registerVal3
	registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
	registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
	registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
	registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
	registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
	registerVal2.BUTTON_RSTICK = "MENU_MELEE_ATTACK"
	{}.ButtonStrings[(CoD.BUTTONS_BUMPERJUMPER + 1.000000)] = registerVal2
	registerVal2 = {}
	registerVal2.BUTTON_A = "MENU_MELEE_ATTACK"
	registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
	registerVal2.BUTTON_X = "MENU_USE_RELOAD"
	registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
	registerVal3 = CoD.CPMPZMINV("MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_SPECIAL_GRENADE", "MENU_THROW_TACTICALS_OR_SPECIAL")
	registerVal2.BUTTON_LBUMP = registerVal3
	registerVal2.BUTTON_RBUMP = "MENU_THROW_FRAG_GRENADE"
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_ENHANCED_VISION", "MENU_SCORESTREAK_SELECTION", "MENU_USE_GOBBLEGUM", "")
	registerVal2.BUTTON_UP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_CYBERNETIC_WHEEL_CONTROL", "MENU_SCORESTREAK_SELECTION", "MENU_EQUIP_SPECIAL_ITEM", "")
	registerVal2.BUTTON_DOWN = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_EQUIP_HEAVY_WEAPON", "", "", "MENU_DPAD_SESSION_SPECIFIC")
	registerVal2.BUTTON_LEFT = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_DNI_TACTICAL_MODE", "MENU_USE_SCORESTREAK", "MENU_PLACE_TRIPMINES", "")
	registerVal2.BUTTON_RIGHT = registerVal3
	registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
	registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
	registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
	registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
	registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
	registerVal2.BUTTON_RSTICK = "MENU_JUMP"
	{}.ButtonStrings[(CoD.BUTTONS_STICKMOVE + 1.000000)] = registerVal2
	registerVal2 = {}
	registerVal2.BUTTON_A = "MENU_JUMP"
	registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
	registerVal2.BUTTON_X = "MENU_USE_RELOAD"
	registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
	registerVal2.BUTTON_LBUMP = "MENU_FIRE_WEAPON"
	registerVal3 = CoD.CPMPZMINV("MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_SPECIAL_GRENADE", "MENU_THROW_TACTICALS_OR_SPECIAL")
	registerVal2.BUTTON_RBUMP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_ENHANCED_VISION", "MENU_SCORESTREAK_SELECTION", "MENU_USE_GOBBLEGUM", "")
	registerVal2.BUTTON_UP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_CYBERNETIC_WHEEL_CONTROL", "MENU_SCORESTREAK_SELECTION", "MENU_EQUIP_SPECIAL_ITEM", "")
	registerVal2.BUTTON_DOWN = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_EQUIP_HEAVY_WEAPON", "", "", "MENU_DPAD_SESSION_SPECIFIC")
	registerVal2.BUTTON_LEFT = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_DNI_TACTICAL_MODE", "MENU_USE_SCORESTREAK", "MENU_PLACE_TRIPMINES", "")
	registerVal2.BUTTON_RIGHT = registerVal3
	registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
	registerVal2.BUTTON_RTRIG = "MENU_THROW_FRAG_GRENADE"
	registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
	registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
	registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
	registerVal2.BUTTON_RSTICK = "MENU_MELEE_ATTACK"
	{}.ButtonStrings[(CoD.BUTTONS_GUNSLINGER + 1.000000)] = registerVal2
	registerVal2 = {}
	registerVal3 = CoD.CPMPZMINV("MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_TACTICAL_GRENADE", "MENU_THROW_SPECIAL_GRENADE", "MENU_THROW_TACTICALS_OR_SPECIAL")
	registerVal2.BUTTON_A = registerVal3
	registerVal2.BUTTON_B = "MENU_MELEE_ATTACK"
	registerVal2.BUTTON_X = "MENU_USE_RELOAD"
	registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
	registerVal2.BUTTON_LBUMP = "MENU_JUMP"
	registerVal2.BUTTON_RBUMP = "MENU_THROW_FRAG_GRENADE"
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_ENHANCED_VISION", "MENU_SCORESTREAK_SELECTION", "MENU_USE_GOBBLEGUM", "")
	registerVal2.BUTTON_UP = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_CYBERNETIC_WHEEL_CONTROL", "MENU_SCORESTREAK_SELECTION", "MENU_EQUIP_SPECIAL_ITEM", "")
	registerVal2.BUTTON_DOWN = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_EQUIP_HEAVY_WEAPON", "", "", "MENU_DPAD_SESSION_SPECIFIC")
	registerVal2.BUTTON_LEFT = registerVal3
	registerVal3 = CoD.CPMPZMINV("MENU_TOGGLE_DNI_TACTICAL_MODE", "MENU_USE_SCORESTREAK", "MENU_PLACE_TRIPMINES", "")
	registerVal2.BUTTON_RIGHT = registerVal3
	registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
	registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
	registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
	registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
	registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
	registerVal2.BUTTON_RSTICK = "MENU_CROUCH_PRONE"
	{}.ButtonStrings[(CoD.BUTTONS_BUMPERTACTICAL + 1.000000)] = registerVal2
end

local function __FUNC_23B6_(arg0)
	DataSources.ButtonLayoutLabels.m_buttonStringsTable = {}.ButtonStrings[(arg0 + 1.000000)]
	DataSources.ButtonLayoutLabels.setModels()
end

local function __FUNC_24B2_(arg0)
	if arg0 ~= CoD.TRIGGERS_FLIPPED then
	end
	DataSources.ButtonLayoutLabels.m_isFlipped = true
	DataSources.ButtonLayoutLabels.setModels()
end

local function __FUNC_25B0_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_DEFAULT_CAPS")
	registerVal3.name = registerVal4
	registerVal3.value = CoD.BUTTONS_DEFAULT
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_TACTICAL_CAPS")
	registerVal4.name = registerVal5
	registerVal4.value = CoD.BUTTONS_EXPERIMENTAL
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_LEFTY_CAPS")
	registerVal5.name = registerVal6
	registerVal5.value = CoD.BUTTONS_LEFTY
	registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_NOMAD_CAPS")
	registerVal6.name = registerVal7
	registerVal6.value = CoD.BUTTONS_NOMAD
	registerVal7 = {}
	local registerVal8 = Engine.Localize("MENU_CHARLIE_CAPS")
	registerVal7.name = registerVal8
	registerVal7.value = CoD.BUTTONS_CHARLIE
	registerVal8 = {}
	local registerVal9 = Engine.Localize("MENU_GUNSLINGER_CAPS")
	registerVal8.name = registerVal9
	registerVal8.value = CoD.BUTTONS_GUNSLINGER
	registerVal9 = {}
	local registerVal10 = Engine.Localize("MENU_BUMPERJUMPER_CAPS")
	registerVal9.name = registerVal10
	registerVal9.value = CoD.BUTTONS_BUMPERJUMPER
	registerVal10 = {}
	local registerVal11 = Engine.Localize("MENU_BUMPERTACTICAL_CAPS")
	registerVal10.name = registerVal11
	registerVal10.value = CoD.BUTTONS_BUMPERTACTICAL
	registerVal11 = {}
	local registerVal12 = Engine.Localize("MENU_STICKMOVE_CAPS")
	registerVal11.name = registerVal12
	registerVal11.value = CoD.BUTTONS_STICKMOVE
	registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal3 = {}
	registerVal4 = {}
	registerVal4.name = "PLATFORM_BUTTON_LAYOUT_CAPS"
	registerVal5 = CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, "ButtonLayoutOptions_ButtonLayout", registerVal2, "gpad_buttonsConfig", __FUNC_23B6_, nil, nil)
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "gpad_buttonsConfig")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_2BA3_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_DEFAULT_CAPS")
	registerVal3.name = registerVal4
	registerVal3.value = CoD.TRIGGERS_DEFAULT
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_FLIPPED_CAPS")
	registerVal4.name = registerVal5
	registerVal4.value = CoD.TRIGGERS_FLIPPED
	registerVal2 = {registerVal3, registerVal4}
	registerVal3 = {}
	registerVal4 = {}
	registerVal4.name = "PLATFORM_TRIGGER_CONFIG"
	registerVal5 = CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, "ButtonLayoutOptions_TriggerConfig", registerVal2, "flipped_control_config", __FUNC_24B2_, nil, nil)
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "flipped_control_config")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	if (registerVal3.models.currentSelection - 1.000000) ~= CoD.TRIGGERS_FLIPPED then
	end
	DataSources.ButtonLayoutLabels.m_isFlipped = true
	return registerVal3
end

local function __FUNC_2F39_(arg0)
	table.insert({}, __FUNC_25B0_(arg0))
	table.insert({}, __FUNC_2BA3_(arg0))
	return {}
end

local registerVal7 = DataSourceHelpers.ListSetup("ButtonLayout", __FUNC_2F39_, true)
DataSources.ButtonLayout = registerVal7
if CoD.isPC then
	local function __FUNC_2FD3_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		registerVal5.value = CoD.BUTTONS_DEFAULT
		registerVal5.valueDisplay = "MENU_DEFAULT_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.BUTTONS_EXPERIMENTAL
		registerVal5.valueDisplay = "MENU_TACTICAL_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.BUTTONS_LEFTY
		registerVal5.valueDisplay = "MENU_LEFTY_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.BUTTONS_NOMAD
		registerVal5.valueDisplay = "MENU_NOMAD_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.BUTTONS_CHARLIE
		registerVal5.valueDisplay = "MENU_CHARLIE_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.BUTTONS_GUNSLINGER
		registerVal5.valueDisplay = "MENU_GUNSLINGER_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.BUTTONS_BUMPERJUMPER
		registerVal5.valueDisplay = "MENU_BUMPERJUMPER_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.BUTTONS_BUMPERTACTICAL
		registerVal5.valueDisplay = "MENU_BUMPERTACTICAL_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.BUTTONS_STICKMOVE
		registerVal5.valueDisplay = "MENU_STICKMOVE_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		return {}
	end

	registerVal7 = DataSourceHelpers.ListSetup("PC.ButtonLayoutDropdownPresets", __FUNC_2FD3_, true)
	DataSources.ButtonLayoutDropdownPresets = registerVal7
	local function __FUNC_3475_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		registerVal5.value = CoD.TRIGGERS_DEFAULT
		registerVal5.valueDisplay = "MENU_DEFAULT_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.TRIGGERS_FLIPPED
		registerVal5.valueDisplay = "MENU_FLIPPED_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		return {}
	end

	registerVal7 = DataSourceHelpers.ListSetup("PC.ButtonLayoutDropdownTriggerConfig", __FUNC_3475_, true)
	DataSources.ButtonLayoutDropdownTriggerConfig = registerVal7
	local function __FUNC_35EB_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		registerVal5.label = "PLATFORM_BUTTON_LAYOUT_CAPS"
		registerVal5.profileVarName = "gpad_buttonsConfig"
		registerVal5.profileType = "user"
		registerVal5.datasource = "ButtonLayoutDropdownPresets"
		registerVal5.widgetType = "dropdown"
		registerVal4.models = registerVal5
		registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.label = "PLATFORM_TRIGGER_CONFIG"
		registerVal5.profileVarName = "flipped_control_config"
		registerVal5.profileType = "user"
		registerVal5.datasource = "ButtonLayoutDropdownTriggerConfig"
		registerVal5.widgetType = "dropdown"
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_397A_(arg0, arg1, arg2)
			local registerVal3 = CoD.PCUtil.GetElementModelValues(arg2, "value")
			if registerVal3 then
				__FUNC_24B2_(registerVal3)
			end
			return CoD.PCUtil.OptionsDropdownItemSelected(arg0, arg1, arg2)
		end

		registerVal5.dropDownItemSelected = __FUNC_397A_
		registerVal5.dropDownRefresh = CoD.PCUtil.OptionsDropdownRefresh
		registerVal5.dropDownCurrentValue = CoD.PCUtil.OptionsDropdownCurrentValue
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		return {}
	end

	registerVal7 = DataSourceHelpers.ListSetup("ButtonLayoutDropdown", __FUNC_35EB_, true)
	DataSources.ButtonLayoutDropdown = registerVal7
	function DataSources.ButtonLayoutDropdown.getWidgetTypeForItem(arg0, arg1, arg2)
		if arg1 then
			local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "widgetType"))
			if registerVal3 == "dropdown" then
				return CoD.OptionDropdown
			else
				if registerVal3 == "checkbox" then
					return CoD.StartMenu_Options_CheckBoxOption
				end
			end
		end
		return nil
	end

end
local function __FUNC_3BE8_()
	__FUNC_13C8_()
end

local function __FUNC_3C1C_(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.name = "options_refresh"
	registerVal5.controller = arg1
	arg0:dispatchEventToChildren(registerVal5)
	local function __FUNC_3E20_(arg0, arg1)
		for index2=1.000000, arg0.buttonLayoutDropdownList.requestedRowCount, 1.000000 do
			local registerVal6 = arg0.buttonLayoutDropdownList:getItemAtPosition(index2, 1.000000)
			if arg1.inUse then
				if registerVal6 ~= arg1.widget then
					registerVal6.m_inputDisabled = true
				else
					registerVal6.m_inputDisabled = nil
				end
			end
		end
	end

	arg0:registerEventHandler("dropdown_triggered", __FUNC_3E20_)
	arg0.buttonLayoutDropdownList.m_managedItemPriority = true
	local function __FUNC_3F5C_(arg0, arg2)
		if not arg2.inUse then
			local registerVal2 = arg2.widget.dropDownCurrentValue(arg1, arg0)
			__FUNC_23B6_(registerVal2)
		end
		arg0:dispatchEventToParent(arg2)
	end

	arg0.buttonLayoutDropdownList:registerEventHandler("dropdown_triggered", __FUNC_3F5C_)
	local function __FUNC_4034_(arg2, arg3)
		arg0:updateState(arg3)
		arg0.buttonLayoutButtonList:updateDataSource()
		arg0.buttonLayoutDropdownList:updateDataSource()
		local registerVal2 = Engine.LastInput_Gamepad()
		if registerVal2 then
			local registerVal4 = {}
			registerVal4.name = "gain_focus"
			registerVal4.controller = arg1
			arg0.buttonLayoutButtonList:processEvent(registerVal4)
			registerVal4 = {}
			registerVal4.name = "lose_focus"
			registerVal4.controller = arg1
			arg0.buttonLayoutDropdownList:processEvent(registerVal4)
		else
			registerVal4 = {}
			registerVal4.name = "lose_focus"
			registerVal4.controller = arg1
			arg0.buttonLayoutButtonList:processEvent(registerVal4)
			registerVal4 = {}
			registerVal4.name = "gain_focus"
			registerVal4.controller = arg1
			arg0.buttonLayoutDropdownList:processEvent(registerVal4)
		end
		registerVal4 = {}
		registerVal4.name = "options_refresh"
		registerVal4.controller = arg1
		arg0:dispatchEventToChildren(registerVal4)
	end

	arg0:registerEventHandler("input_source_changed", __FUNC_4034_)
	local function __FUNC_42B2_()
		CoD.PCUtil.RefreshAllOptions(arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_42B2_)
end

local function __FUNC_433C_(arg0, arg1, arg2)
	arg0.buttonLayoutButtonList.navigation = nil
	arg0.buttonLayoutDropdownList.navigation = nil
	if CoD.isPC then
		__FUNC_3C1C_(arg0, arg1, arg2)
	end
	local function __FUNC_4493_()
		Engine.UnsubscribeAndFreeModel(DataSources.ButtonLayoutLabels.getModel(arg1))
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_4493_)
end

local function __FUNC_4568_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Controls_ButtonLayout")
	if __FUNC_3BE8_ then
		__FUNC_3BE8_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Controls_ButtonLayout.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 31.500000, 701.500000)
	registerVal4:setTopBottom(true, false, 108.000000, 220.000000)
	registerVal4:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal4:setVerticalCount(2.000000)
	registerVal4:setDataSource("ButtonLayout")
	registerVal1:addElement(registerVal4)
	registerVal1.buttonLayoutButtonList = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 415.000000, 865.000000)
	registerVal5:setTopBottom(true, false, 234.000000, 684.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage(ImageIsOnlyOnDurangoOrPc("uie_xenonone_controller_top")))
	registerVal1:addElement(registerVal5)
	registerVal1.durangoControllerImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 415.000000, 865.000000)
	registerVal6:setTopBottom(true, false, 234.000000, 684.000000)
	registerVal6:setImage(RegisterImage(ImageIsEverywhereButDurango("uie_ps4_controller_top")))
	registerVal1:addElement(registerVal6)
	registerVal1.orbisControllerImage = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 131.400000, 1147.500000)
	registerVal7:setTopBottom(true, false, 226.500000, 680.500000)
	registerVal7:setImage(RegisterImage(ImageIsOnlyOnOrbis("uie_img_t7_menu_startmenu_option_psvita")))
	registerVal1:addElement(registerVal7)
	registerVal1.vitaControllerImage = registerVal7
	local registerVal8 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 379.500000, 579.500000)
	registerVal8:setTopBottom(true, false, 592.000000, 617.000000)
	registerVal8.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	local function __FUNC_6D0D_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "leftStick", __FUNC_6D0D_)
	registerVal1:addElement(registerVal8)
	registerVal1.leftStickText = registerVal8
	local registerVal9 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 162.500000, 444.500000)
	registerVal9:setTopBottom(true, false, 283.000000, 308.000000)
	registerVal9.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	local function __FUNC_6D5E_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "leftTrig", __FUNC_6D5E_)
	registerVal1:addElement(registerVal9)
	registerVal1.leftTriggerText = registerVal9
	local registerVal10 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 131.400000, 411.500000)
	registerVal10:setTopBottom(true, false, 309.500000, 334.500000)
	registerVal10.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	local function __FUNC_6DAE_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "lb", __FUNC_6DAE_)
	registerVal1:addElement(registerVal10)
	registerVal1.leftBumperText = registerVal10
	local registerVal11 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 695.000000, 895.000000)
	registerVal11:setTopBottom(true, false, 592.000000, 617.000000)
	registerVal11.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_6DFE_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "rightStick", __FUNC_6DFE_)
	registerVal1:addElement(registerVal11)
	registerVal1.rightStickText = registerVal11
	local registerVal12 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 831.500000, 1190.500000)
	registerVal12:setTopBottom(true, false, 270.500000, 295.500000)
	registerVal12.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_6E4E_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "rightTrig", __FUNC_6E4E_)
	registerVal1:addElement(registerVal12)
	registerVal1.rightTriggerText = registerVal12
	local registerVal13 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 852.500000, 1190.500000)
	registerVal13:setTopBottom(true, false, 308.000000, 333.000000)
	registerVal13.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_6E9E_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "rb", __FUNC_6E9E_)
	registerVal1:addElement(registerVal13)
	registerVal1.rightBumperText = registerVal13
	local registerVal14 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 947.500000, 1147.500000)
	registerVal14:setTopBottom(true, false, 466.000000, 491.000000)
	registerVal14.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_6EEE_(arg1)
		registerVal14:setModel(arg1, arg0)
	end

	registerVal14:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "xbA_psCross", __FUNC_6EEE_)
	registerVal1:addElement(registerVal14)
	registerVal1.XBAPSCrossText = registerVal14
	local registerVal15 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 947.500000, 1216.000000)
	registerVal15:setTopBottom(true, false, 434.000000, 459.000000)
	registerVal15.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_6F3E_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "xbB_psCircle", __FUNC_6F3E_)
	registerVal1:addElement(registerVal15)
	registerVal1.XBBPSCircleText = registerVal15
	local registerVal16 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 947.500000, 1216.000000)
	registerVal16:setTopBottom(true, false, 404.790000, 429.790000)
	registerVal16.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_6F8E_(arg1)
		registerVal16:setModel(arg1, arg0)
	end

	registerVal16:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "xbX_psSquare", __FUNC_6F8E_)
	registerVal1:addElement(registerVal16)
	registerVal1.XBXPSSquareText = registerVal16
	local registerVal17 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 947.500000, 1216.000000)
	registerVal17:setTopBottom(true, false, 375.000000, 400.000000)
	registerVal17.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_6FDE_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "xbY_psTriangle", __FUNC_6FDE_)
	registerVal1:addElement(registerVal17)
	registerVal1.XBYPSTriangleText = registerVal17
	local registerVal18 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 540.000000, 740.000000)
	registerVal18:setTopBottom(true, false, 283.000000, 308.000000)
	registerVal18.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_702E_(arg1)
		registerVal18:setModel(arg1, arg0)
	end

	registerVal18:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "back", __FUNC_702E_)
	registerVal1:addElement(registerVal18)
	registerVal1.backButtonText = registerVal18
	local registerVal19 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 620.000000, 820.000000)
	registerVal19:setTopBottom(true, false, 245.500000, 270.500000)
	registerVal19.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_707E_(arg1)
		registerVal19:setModel(arg1, arg0)
	end

	registerVal19:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "start", __FUNC_707E_)
	registerVal1:addElement(registerVal19)
	registerVal1.startButtonText = registerVal19
	local registerVal20 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 74.000000, 336.500000)
	registerVal20:setTopBottom(true, false, 434.000000, 459.000000)
	registerVal20.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	local function __FUNC_70CE_(arg1)
		registerVal20:setModel(arg1, arg0)
	end

	registerVal20:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "leftDpad", __FUNC_70CE_)
	registerVal1:addElement(registerVal20)
	registerVal1.leftButtonText = registerVal20
	local registerVal21 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal21:setLeftRight(true, false, 74.000000, 336.500000)
	registerVal21:setTopBottom(true, false, 404.790000, 429.790000)
	registerVal21.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	local function __FUNC_711E_(arg1)
		registerVal21:setModel(arg1, arg0)
	end

	registerVal21:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "rightDpad", __FUNC_711E_)
	registerVal1:addElement(registerVal21)
	registerVal1.rightButtonText = registerVal21
	local registerVal22 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal22:setLeftRight(true, false, 74.000000, 337.000000)
	registerVal22:setTopBottom(true, false, 375.000000, 400.000000)
	registerVal22.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	local function __FUNC_716E_(arg1)
		registerVal22:setModel(arg1, arg0)
	end

	registerVal22:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "upDpad", __FUNC_716E_)
	registerVal1:addElement(registerVal22)
	registerVal1.upButtonText = registerVal22
	local registerVal23 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal23:setLeftRight(true, false, 74.000000, 337.000000)
	registerVal23:setTopBottom(true, false, 466.000000, 491.000000)
	registerVal23.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	local function __FUNC_71BE_(arg1)
		registerVal23:setModel(arg1, arg0)
	end

	registerVal23:subscribeToGlobalModel(arg0, "ButtonLayoutLabels", "downDpad", __FUNC_71BE_)
	registerVal1:addElement(registerVal23)
	registerVal1.downButtonText = registerVal23
	local registerVal24 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal24:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal24:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal24.titleLabel:setText(Engine.Localize("PLATFORM_BUTTON_LAYOUT_CAPS"))
	registerVal24.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("PLATFORM_BUTTON_LAYOUT_CAPS"))
	registerVal24.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal24)
	registerVal1.MenuFrame = registerVal24
	local registerVal25 = CoD.StartMenu_lineGraphics_Options.new(registerVal1, arg0)
	registerVal25:setLeftRight(true, false, 1.000000, 69.000000)
	registerVal25:setTopBottom(true, false, -13.000000, 657.000000)
	registerVal1:addElement(registerVal25)
	registerVal1.StartMenulineGraphicsOptions0 = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(true, false, 349.000000, 932.500000)
	registerVal26:setTopBottom(true, false, 273.500000, 586.090000)
	registerVal26:setImage(RegisterImage(ImageIsEverywhereButDurango(AppendCurrentSessionMode("uie_img_t7_menu_startmenu_option_lines_orbis"))))
	registerVal1:addElement(registerVal26)
	registerVal1.OrbisLines = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(true, false, 375.500000, 1047.500000)
	registerVal27:setTopBottom(true, false, 273.500000, 633.500000)
	registerVal27:setImage(RegisterImage(ImageIsOnlyOnDurangoOrPc(AppendCurrentSessionMode("uie_img_t7_menu_startmenu_option_lines_durango"))))
	registerVal1:addElement(registerVal27)
	registerVal1.DurangoLines = registerVal27
	local registerVal28 = LUI.UIList.new(registerVal1, arg0, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal28:makeFocusable()
	registerVal28:setLeftRight(true, false, 74.000000, 574.000000)
	registerVal28:setTopBottom(true, false, 130.000000, 198.000000)
	registerVal28:setAlpha(0.000000)
	registerVal28:setWidgetType(CoD.OptionDropdown)
	registerVal28:setVerticalCount(2.000000)
	registerVal28:setSpacing(0.000000)
	registerVal28:setDataSource("ButtonLayoutDropdown")
	registerVal1:addElement(registerVal28)
	registerVal1.buttonLayoutDropdownList = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(true, false, 349.000000, 926.630000)
	registerVal29:setTopBottom(true, false, 232.510000, 551.490000)
	registerVal29:setImage(RegisterImage(ImageIsOnlyOnOrbis("uie_img_t7_menu_startmenu_option_lines_vita")))
	registerVal1:addElement(registerVal29)
	registerVal1.VitaLines = registerVal29
	local registerVal30 = {}
	registerVal30.left = registerVal28
	registerVal30.up = registerVal28
	registerVal4.navigation = registerVal30
	registerVal30 = {}
	registerVal30.up = registerVal4
	registerVal30.right = registerVal4
	registerVal28.navigation = registerVal30
	registerVal30 = {}
	local registerVal31 = {}
	local function __FUNC_720E_()
		registerVal1:setupElementClipCounter(27.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.buttonLayoutButtonList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.durangoControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.orbisControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.vitaControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.leftStickText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.leftTriggerText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.leftBumperText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.rightStickText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.rightTriggerText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.rightBumperText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.XBAPSCrossText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.XBBPSCircleText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.XBXPSSquareText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.XBYPSTriangleText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.backButtonText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.startButtonText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.leftButtonText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.rightButtonText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.upButtonText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.downButtonText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.MenuFrame:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal1.StartMenulineGraphicsOptions0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal1.OrbisLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal1.DurangoLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal1.buttonLayoutDropdownList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal1.VitaLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_720E_
	registerVal30.DefaultState = registerVal31
	registerVal31 = {}
	local function __FUNC_7C92_()
		registerVal1:setupElementClipCounter(24.000000)
		registerVal4:completeAnimation()
		registerVal1.buttonLayoutButtonList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.durangoControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.orbisControllerImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.vitaControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal8.defaultText:completeAnimation()
		registerVal1.leftStickText:setLeftRight(true, false, 408.000000, 608.000000)
		registerVal1.leftStickText:setTopBottom(true, false, 591.000000, 616.000000)
		registerVal1.leftStickText.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.leftTriggerText:setLeftRight(true, false, 162.500000, 444.500000)
		registerVal1.leftTriggerText:setTopBottom(true, false, 283.000000, 308.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.leftBumperText:setLeftRight(true, false, 131.400000, 411.500000)
		registerVal1.leftBumperText:setTopBottom(true, false, 309.500000, 334.500000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.defaultText:completeAnimation()
		registerVal1.rightStickText:setLeftRight(true, false, 672.000000, 872.000000)
		registerVal1.rightStickText:setTopBottom(true, false, 591.000000, 616.000000)
		registerVal1.rightStickText.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.rightTriggerText:setLeftRight(true, false, 831.500000, 1190.500000)
		registerVal1.rightTriggerText:setTopBottom(true, false, 270.500000, 295.500000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.rightBumperText:setLeftRight(true, false, 852.500000, 1190.500000)
		registerVal1.rightBumperText:setTopBottom(true, false, 308.000000, 333.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.XBAPSCrossText:setLeftRight(true, false, 947.500000, 1147.500000)
		registerVal1.XBAPSCrossText:setTopBottom(true, false, 466.000000, 491.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.XBBPSCircleText:setLeftRight(true, false, 947.500000, 1216.000000)
		registerVal1.XBBPSCircleText:setTopBottom(true, false, 434.000000, 459.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.XBXPSSquareText:setLeftRight(true, false, 947.500000, 1216.000000)
		registerVal1.XBXPSSquareText:setTopBottom(true, false, 404.790000, 429.790000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.XBYPSTriangleText:setLeftRight(true, false, 947.500000, 1216.000000)
		registerVal1.XBYPSTriangleText:setTopBottom(true, false, 375.000000, 400.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.backButtonText:setLeftRight(true, false, 540.000000, 740.000000)
		registerVal1.backButtonText:setTopBottom(true, false, 283.000000, 308.000000)
		registerVal1.backButtonText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal19.defaultText:completeAnimation()
		registerVal1.startButtonText:setLeftRight(true, false, 620.000000, 820.000000)
		registerVal1.startButtonText:setTopBottom(true, false, 245.500000, 270.500000)
		registerVal1.startButtonText:setAlpha(1.000000)
		registerVal1.startButtonText.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.leftButtonText:setLeftRight(true, false, 74.000000, 336.500000)
		registerVal1.leftButtonText:setTopBottom(true, false, 434.000000, 459.000000)
		registerVal1.leftButtonText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.rightButtonText:setLeftRight(true, false, 74.000000, 336.500000)
		registerVal1.rightButtonText:setTopBottom(true, false, 404.790000, 429.790000)
		registerVal1.rightButtonText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.upButtonText:setLeftRight(true, false, 74.000000, 337.000000)
		registerVal1.upButtonText:setTopBottom(true, false, 375.000000, 400.000000)
		registerVal1.upButtonText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.downButtonText:setLeftRight(true, false, 74.000000, 337.000000)
		registerVal1.downButtonText:setTopBottom(true, false, 466.000000, 491.000000)
		registerVal1.downButtonText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal26:completeAnimation()
		registerVal1.OrbisLines:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal1.DurangoLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal1.buttonLayoutDropdownList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal1.VitaLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_7C92_
	registerVal30.Orbis = registerVal31
	registerVal31 = {}
	local function __FUNC_8C86_()
		registerVal1:setupElementClipCounter(24.000000)
		registerVal4:completeAnimation()
		registerVal1.buttonLayoutButtonList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.durangoControllerImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.orbisControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.vitaControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.leftStickText:setLeftRight(true, false, 64.000000, 405.500000)
		registerVal1.leftStickText:setTopBottom(true, false, 404.790000, 429.790000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.leftTriggerText:setLeftRight(true, false, 64.000000, 441.000000)
		registerVal1.leftTriggerText:setTopBottom(true, false, 273.500000, 298.500000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.leftBumperText:setLeftRight(true, false, 64.000000, 420.000000)
		registerVal1.leftBumperText:setTopBottom(true, false, 309.500000, 334.500000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.rightStickText:setLeftRight(true, false, 483.000000, 920.000000)
		registerVal1.rightStickText:setTopBottom(true, false, 586.090000, 611.090000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.rightTriggerText:setLeftRight(true, false, 835.500000, 1216.000000)
		registerVal1.rightTriggerText:setTopBottom(true, false, 270.500000, 295.500000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.rightBumperText:setLeftRight(true, false, 856.500000, 1216.000000)
		registerVal1.rightBumperText:setTopBottom(true, false, 308.000000, 333.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.XBAPSCrossText:setLeftRight(true, false, 939.500000, 1216.000000)
		registerVal1.XBAPSCrossText:setTopBottom(true, false, 466.000000, 491.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.XBBPSCircleText:setLeftRight(true, false, 939.500000, 1216.000000)
		registerVal1.XBBPSCircleText:setTopBottom(true, false, 434.000000, 459.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.XBXPSSquareText:setLeftRight(true, false, 939.500000, 1216.000000)
		registerVal1.XBXPSSquareText:setTopBottom(true, false, 404.790000, 429.790000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.XBYPSTriangleText:setLeftRight(true, false, 939.500000, 1216.000000)
		registerVal1.XBYPSTriangleText:setTopBottom(true, false, 375.000000, 400.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.backButtonText:setLeftRight(true, false, 507.000000, 707.000000)
		registerVal1.backButtonText:setTopBottom(true, false, 283.000000, 308.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.startButtonText:setLeftRight(true, false, 578.500000, 778.500000)
		registerVal1.startButtonText:setTopBottom(true, false, 258.000000, 283.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.leftButtonText:setLeftRight(true, false, 64.000000, 405.000000)
		registerVal1.leftButtonText:setTopBottom(true, false, 485.500000, 510.500000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.rightButtonText:setLeftRight(true, false, 64.000000, 404.500000)
		registerVal1.rightButtonText:setTopBottom(true, false, 511.000000, 536.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.upButtonText:setLeftRight(true, false, 69.000000, 405.500000)
		registerVal1.upButtonText:setTopBottom(true, false, 453.500000, 478.500000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.downButtonText:setLeftRight(true, false, 64.000000, 405.000000)
		registerVal1.downButtonText:setTopBottom(true, false, 541.000000, 566.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal26:completeAnimation()
		registerVal1.OrbisLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal1.DurangoLines:setLeftRight(true, false, 413.500000, 934.500000)
		registerVal1.DurangoLines:setTopBottom(true, false, 283.000000, 586.090000)
		registerVal1.DurangoLines:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal1.buttonLayoutDropdownList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal1.VitaLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_8C86_
	registerVal30.Durango = registerVal31
	registerVal31 = {}
	local function __FUNC_9A9C_()
		registerVal1:setupElementClipCounter(23.000000)
		registerVal4:completeAnimation()
		registerVal1.buttonLayoutButtonList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal1.orbisControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.vitaControllerImage:setLeftRight(true, false, 151.390000, 1130.110000)
		registerVal1.vitaControllerImage:setTopBottom(true, false, 228.850000, 666.150000)
		registerVal1.vitaControllerImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.leftStickText:setLeftRight(true, false, 248.000000, 448.000000)
		registerVal1.leftStickText:setTopBottom(true, false, 571.000000, 596.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.leftTriggerText:setLeftRight(true, false, 184.000000, 384.000000)
		registerVal1.leftTriggerText:setTopBottom(true, false, 251.000000, 276.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.leftBumperText:setLeftRight(true, false, 248.000000, 448.000000)
		registerVal1.leftBumperText:setTopBottom(true, false, 488.000000, 513.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.defaultText:completeAnimation()
		registerVal1.rightStickText:setLeftRight(true, false, 832.000000, 1032.000000)
		registerVal1.rightStickText:setTopBottom(true, false, 571.000000, 596.000000)
		registerVal1.rightStickText.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.rightTriggerText:setLeftRight(true, false, 896.000000, 1096.000000)
		registerVal1.rightTriggerText:setTopBottom(true, false, 251.000000, 276.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.rightBumperText:setLeftRight(true, false, 832.000000, 1032.000000)
		registerVal1.rightBumperText:setTopBottom(true, false, 488.000000, 513.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.XBAPSCrossText:setLeftRight(true, false, 896.000000, 1096.000000)
		registerVal1.XBAPSCrossText:setTopBottom(true, false, 400.000000, 425.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.XBBPSCircleText:setLeftRight(true, false, 896.000000, 1164.500000)
		registerVal1.XBBPSCircleText:setTopBottom(true, false, 335.790000, 360.790000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.XBXPSSquareText:setLeftRight(true, false, 896.000000, 1164.500000)
		registerVal1.XBXPSSquareText:setTopBottom(true, false, 366.000000, 391.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.XBYPSTriangleText:setLeftRight(true, false, 896.000000, 1164.500000)
		registerVal1.XBYPSTriangleText:setTopBottom(true, false, 303.000000, 328.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.backButtonText:setLeftRight(true, false, 544.000000, 736.000000)
		registerVal1.backButtonText:setTopBottom(true, false, 368.000000, 393.000000)
		registerVal1.backButtonText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal19.defaultText:completeAnimation()
		registerVal1.startButtonText:setLeftRight(true, false, 896.000000, 1088.000000)
		registerVal1.startButtonText:setTopBottom(true, false, 443.000000, 468.000000)
		registerVal1.startButtonText.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.leftButtonText:setLeftRight(true, false, 121.500000, 384.000000)
		registerVal1.leftButtonText:setTopBottom(true, false, 363.500000, 388.500000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.rightButtonText:setLeftRight(true, false, 89.000000, 351.500000)
		registerVal1.rightButtonText:setTopBottom(true, false, 332.790000, 357.790000)
		registerVal1.rightButtonText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.upButtonText:setLeftRight(true, false, 89.000000, 352.000000)
		registerVal1.upButtonText:setTopBottom(true, false, 303.000000, 328.000000)
		registerVal1.upButtonText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.downButtonText:setLeftRight(true, false, 121.500000, 384.500000)
		registerVal1.downButtonText:setTopBottom(true, false, 331.000000, 356.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal26:completeAnimation()
		registerVal1.OrbisLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal1.DurangoLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal1.buttonLayoutDropdownList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal1.VitaLines:setLeftRight(true, false, 343.180000, 937.000000)
		registerVal1.VitaLines:setTopBottom(true, false, 264.500000, 584.500000)
		registerVal1.VitaLines:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_9A9C_
	registerVal30.Vita = registerVal31
	registerVal31 = {}
	local function __FUNC_AA19_()
		registerVal1:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal1.buttonLayoutButtonList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.durangoControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.orbisControllerImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.vitaControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal26:completeAnimation()
		registerVal1.OrbisLines:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal1.DurangoLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal1.buttonLayoutDropdownList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal1.VitaLines:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_AA19_
	registerVal30.PC = registerVal31
	registerVal1.clipsPerState = registerVal30
	local registerVal32 = {}
	local registerVal33 = {}
	registerVal33.stateName = "Orbis"
	local function __FUNC_ADC1_(arg1, arg2, arg3)
		return IsOrbisGamepad(arg0)
	end

	registerVal33.condition = __FUNC_ADC1_
	local registerVal34 = {}
	registerVal34.stateName = "Durango"
	local function __FUNC_AE14_(arg1, arg2, arg3)
		return IsDurangoGamepad(arg0)
	end

	registerVal34.condition = __FUNC_AE14_
	local registerVal35 = {}
	registerVal35.stateName = "Vita"
	local function __FUNC_AE6A_(arg1, arg2, arg3)
		return IsVitaGamepad(arg0)
	end

	registerVal35.condition = __FUNC_AE6A_
	local registerVal36 = {}
	registerVal36.stateName = "PC"
	local function __FUNC_AEBB_(arg0, arg1, arg2)
		return IsPC()
	end

	registerVal36.condition = __FUNC_AEBB_
	registerVal32 = {registerVal33, registerVal34, registerVal35, registerVal36}
	registerVal1:mergeStateConditions(registerVal32)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_AEFE_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_AEFE_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal33 = Engine.GetModelForController(arg0)
	registerVal32 = Engine.GetModel(registerVal33, "LastInput")
	local function __FUNC_AF87_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal32, __FUNC_AF87_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_B0A3_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ForceNotifyControllerModel(arg2, "forceUpdateVehicleBindings")
		UpdateGamerprofile(registerVal1, arg0, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_B1A5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_B0A3_, __FUNC_B1A5_, false)
	local function __FUNC_B2A1_(arg1, arg2)
		local registerVal2 = IsMenuInState(registerVal1, "PC")
		if registerVal2 then
			SetFocusToElement(registerVal1, "buttonLayoutDropdownList", arg0)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "setState", __FUNC_B2A1_)
	registerVal4.id = "buttonLayoutButtonList"
	registerVal24:setModel(registerVal1.buttonModel, arg0)
	registerVal28.id = "buttonLayoutDropdownList"
	registerVal32 = {}
	registerVal32.name = "menu_loaded"
	registerVal32.controller = arg0
	registerVal1:processEvent(registerVal32)
	registerVal32 = {}
	registerVal32.name = "update_state"
	registerVal32.menu = registerVal1
	registerVal1:processEvent(registerVal32)
	registerVal30 = registerVal1:restoreState()
	if not registerVal30 then
		registerVal32 = {}
		registerVal32.name = "gain_focus"
		registerVal32.controller = arg0
		registerVal1.buttonLayoutButtonList:processEvent(registerVal32)
	end
	local function __FUNC_B358_(arg1)
		arg1.buttonLayoutButtonList:close()
		arg1.leftStickText:close()
		arg1.leftTriggerText:close()
		arg1.leftBumperText:close()
		arg1.rightStickText:close()
		arg1.rightTriggerText:close()
		arg1.rightBumperText:close()
		arg1.XBAPSCrossText:close()
		arg1.XBBPSCircleText:close()
		arg1.XBXPSSquareText:close()
		arg1.XBYPSTriangleText:close()
		arg1.backButtonText:close()
		arg1.startButtonText:close()
		arg1.leftButtonText:close()
		arg1.rightButtonText:close()
		arg1.upButtonText:close()
		arg1.downButtonText:close()
		arg1.MenuFrame:close()
		arg1.StartMenulineGraphicsOptions0:close()
		arg1.buttonLayoutDropdownList:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Controls_ButtonLayout.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_B358_)
	if __FUNC_433C_ then
		__FUNC_433C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_Controls_ButtonLayout = __FUNC_4568_
