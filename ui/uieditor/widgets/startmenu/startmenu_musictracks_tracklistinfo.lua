-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_MusicTracks_TrackListInfo = registerVal1
function CoD.StartMenu_MusicTracks_TrackListInfo.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 5.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_MusicTracks_TrackListInfo)
	registerVal2.id = "StartMenu_MusicTracks_TrackListInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 501.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 124.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_741_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(LocalizeIntoStrXIfEqualsElseY("MENU_ALL", "MENU_SHOWING_ALL_TRACKS", "MENU_SHOWING_X_TRACKS", registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "MusicTracksBase", "currentFilter", __FUNC_741_)
	registerVal2:addElement(registerVal3)
	registerVal2.selectedFilter = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_861_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_861_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_8C2_(arg0)
		arg0.selectedFilter:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8C2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

