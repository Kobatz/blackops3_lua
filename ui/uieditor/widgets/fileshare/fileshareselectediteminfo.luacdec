-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareSelectedItemAuthor")
require("ui.uieditor.widgets.FileShare.FileshareSelectedItemPublishedTime")
require("ui.uieditor.widgets.FileShare.FileshareStat")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareSelectedItemInfo = registerVal1
function CoD.FileshareSelectedItemInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSelectedItemInfo)
	registerVal2.id = "FileshareSelectedItemInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 418.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 84.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 418.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 47.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = CoD.FileshareSelectedItemAuthor.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 4.000000, 418.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 27.000000)
	local function __FUNC_D84_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.AuthorName:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "fileAuthorName", true, __FUNC_D84_)
	registerVal2:addElement(registerVal4)
	registerVal2.FileshareSelectedItemAuthor0 = registerVal4
	local registerVal5 = CoD.FileshareSelectedItemPublishedTime.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 4.000000, 351.000000)
	registerVal5:setTopBottom(true, false, 27.000000, 45.000000)
	local function __FUNC_E38_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PublishTime:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "fileCreateTime", true, __FUNC_E38_)
	registerVal2:addElement(registerVal5)
	registerVal2.FileshareSelectedItemPublishedTime0 = registerVal5
	local registerVal6 = CoD.FileshareStat.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal6:setTopBottom(true, false, 53.000000, 71.000000)
	registerVal6.Icon:setImage(RegisterImage("uie_t7_icon_menu_options_like"))
	local function __FUNC_F13_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "FileshareRoot", nil, __FUNC_F13_)
	local function __FUNC_F62_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.TextBox0:setText(Engine.Localize(SetValueIfNumberIsLessThanOrEqualTo(0.000000, "0", ShowScaledVotes(registerVal1))))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "fileLikesCount", true, __FUNC_F62_)
	registerVal2:addElement(registerVal6)
	registerVal2.StatLikes = registerVal6
	local registerVal7 = CoD.FileshareStat.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 106.000000, 206.000000)
	registerVal7:setTopBottom(true, false, 53.000000, 71.000000)
	registerVal7.Icon:setImage(RegisterImage("uie_t7_icon_menu_options_dislike"))
	registerVal2:addElement(registerVal7)
	registerVal2.StatDislikes = registerVal7
	local registerVal8 = CoD.FileshareStat.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 212.000000, 312.000000)
	registerVal8:setTopBottom(true, false, 53.000000, 71.000000)
	registerVal8.Icon:setImage(RegisterImage("uie_t7_icon_menu_options_views"))
	registerVal2:addElement(registerVal8)
	registerVal2.StatViews = registerVal8
	local registerVal9 = CoD.FileshareStat.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 318.000000, 418.000000)
	registerVal9:setTopBottom(true, false, 53.000000, 71.000000)
	registerVal9.Icon:setImage(RegisterImage("uie_t7_icon_menu_options_downloads"))
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Hidden"
	local function __FUNC_10A6_(arg0, arg2, arg3)
		local registerVal3 = FileshareCanShowDownloadsStats(arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_10A6_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.StatDownloads = registerVal9
	local function __FUNC_110C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.TextBox0:setText(Engine.Localize(SetValueIfNumberIsLessThanOrEqualTo(0.000000, "0", ShowScaledVotes(registerVal1))))
		end
	end

	registerVal2.StatDislikes:linkToElementModel(registerVal2, "fileDislikesCount", true, __FUNC_110C_)
	local function __FUNC_1252_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.TextBox0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.StatViews:linkToElementModel(registerVal2, "fileViewsCount", true, __FUNC_1252_)
	local function __FUNC_1328_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.TextBox0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.StatDownloads:linkToElementModel(registerVal2, "fileDownloadsCount", true, __FUNC_1328_)
	local function __FUNC_1400_(arg0)
		arg0.FileshareSelectedItemAuthor0:close()
		arg0.FileshareSelectedItemPublishedTime0:close()
		arg0.StatLikes:close()
		arg0.StatDislikes:close()
		arg0.StatViews:close()
		arg0.StatDownloads:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1400_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

