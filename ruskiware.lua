---remove ur parents
getgenv().values = {}
local library = {}
local Signal = loadstring(game:HttpGet("https://raw.githubusercontent.com/Quenty/NevermoreEngine/version2/Modules/Shared/Events/Signal.lua"))()
--local Api = loadstring(game:HttpGet("https://pastebin.com/raw/5L3wV43u"))()
local ConfigSave = Signal.new("ConfigSave")
local ConfigLoad = Signal.new("ConfigLoad")

local txt = game:GetService("TextService")
local TweenService = game:GetService("TweenService")
function library:Tween(...) TweenService:Create(...):Play() end
local cfglocation = "cripbot-pastecfg/"
makefolder("cripbot-pastecfg")
function rgbtotbl(rgb)
	return {R = rgb.R, G = rgb.G, B = rgb.B}
end
function tbltorgb(tbl)
	return Color3.new(tbl.R, tbl.G, tbl.B)
end
local function deepCopy(original)
	local copy = {}
	for k, v in pairs(original) do
		if type(v) == "table" then
			v = deepCopy(v)
		end
		copy[k] = v
	end
	return copy
end

---Varechkaa#9443 ?

local function IsAlive(plr)
    if plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
        return true
    end

    return false
end

local function CreateThread(func, ...) -- pasted from bbot fr
    local thread = coroutine.create(func)
    coroutine.resume(thread, ...)
    return thread
end

function insertwithoutdupes(tab, thethingyouneedtoinsert)
	if not table.find(tab, thethingyouneedtoinsert) then
		table.insert(tab, thethingyouneedtoinsert)
	end
end	
function removewithoutdupes(tab, thethingyouneedtoremove)
	if table.find(tab, thethingyouneedtoremove) then
		table.remove(tab, table.find(tab, thethingyouneedtoremove))
	end
end	
local loopkillplr = {}
for _,v in pairs(game.Players:GetPlayers()) do 
	table.insert(loopkillplr, v.Name)
end

local Vec2 = Vector2.new      
local Vec3 = Vector3.new      
local CF = CFrame.new      
local INST = Instance.new      
local COL3 = Color3.new      
local COL3RGB = Color3.fromRGB      
local COL3HSV = Color3.fromHSV      
local CLAMP = math.clamp      
local DEG = math.deg      
local FLOOR = math.floor      
local ACOS = math.acos      
local RANDOM = math.random      
local ATAN2 = math.atan2      
local HUGE = math.huge      
local RAD = math.rad      
local MIN = math.min      
local POW = math.pow      
local UDIM2 = UDim2.new      
local CFAngles = CFrame.Angles      

local FIND = string.find      
local LEN = string.len      
local SUB = string.sub      
local GSUB = string.gsub      
local RAY = Ray.new      

local INSERT = table.insert      
local TBLFIND = table.find      
local TBLREMOVE = table.remove      
local TBLSORT = table.sort      

---Slava russie🇷🇺

local MX_ONHIT = Instance.new("ScreenGui")
do
local OnHitFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local SampleFrame = Instance.new("Frame")
local Grad = Instance.new("Frame")
local SampleLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")

MX_ONHIT.Name = "MX_ONHIT"
MX_ONHIT.Parent = game.CoreGui
MX_ONHIT.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OnHitFrame.Name = "OnHitFrame"
OnHitFrame.Parent = MX_ONHIT
OnHitFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OnHitFrame.BackgroundTransparency = 1.000
OnHitFrame.Position = UDim2.new(0, 52, 0, -15)
OnHitFrame.Size = UDim2.new(0, 300, 0, 500)

UIListLayout.Parent = OnHitFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

SampleFrame.Name = "SampleFrame"
SampleFrame.Parent = OnHitFrame
SampleFrame.AutomaticSize = Enum.AutomaticSize.XY
SampleFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SampleFrame.BackgroundTransparency = 1.000
SampleFrame.BorderColor3 = Color3.fromRGB(7, 0, 0)
SampleFrame.Size = UDim2.new(0, 0, 0, 24)

Grad.Name = "Grad"
Grad.Parent = SampleFrame
Grad.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Grad.BackgroundTransparency = 1.000
Grad.AutomaticSize = Enum.AutomaticSize.Y
Grad.BorderSizePixel = 0
Grad.Size = UDim2.new(0, 3, 0, 24)

SampleLabel.Name = "SampleLabel"
SampleLabel.Parent = Grad
SampleLabel.BackgroundColor3 = Color3.fromRGB(87, 255, 161)
SampleLabel.BackgroundTransparency = 1.000
SampleLabel.BorderSizePixel = 0
SampleLabel.Position = UDim2.new(1.97835922, 0, 0, 0)
SampleLabel.Size = UDim2.new(0, 0, 0, 24)
SampleLabel.Font = Enum.Font.Ubuntu
SampleLabel.Text = "TEST"
SampleLabel.TextTruncate = Enum.TextTruncate.AtEnd
SampleLabel.AutomaticSize = Enum.AutomaticSize.XY
SampleLabel.TextColor3 = Color3.fromRGB(87, 255, 161)
SampleLabel.TextSize = 13.000
SampleLabel.TextStrokeTransparency = 0.000
SampleLabel.TextTransparency = 1.000
SampleLabel.TextXAlignment = Enum.TextXAlignment.Left

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.41, Color3.fromRGB(87, 22, 161)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Rotation = 90
UIGradient.Parent = SampleFrame
end
 
local function CreateHitElement(text,col,time, size, size2, size3, size4)
	spawn(function()
		local Frame = MX_ONHIT.OnHitFrame.SampleFrame:Clone()
		local Grad = Frame.Grad
		local Label = Grad.SampleLabel
		
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(size, size2, size3, size4)}) 
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(size, size2, size3, size4)}) 	
		
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.000})       
		library:Tween(Grad, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.000})  
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0.000}) 
		
		Frame.Parent = MX_ONHIT.OnHitFrame
		Grad.Parent = Frame
		Label.Parent = Grad
		Label.TextColor3 = col
		Label.Text = text
		wait(time)
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1.000})       
		library:Tween(Grad, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1.000})  
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1.000})
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextStrokeTransparency = 1.000})
		
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, size3, size4)}) 
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, size3, size4)}) 
		
		wait(0.8)
		Frame:Destroy()
		Grad:Destroy()
		Label:Destroy()
	end)
end

function library:ConfigFix(cfg)
	local copy = game:GetService("HttpService"):JSONDecode(readfile(cfglocation..cfg..".txt"))
	for i,Tabs in pairs(copy) do
		for i,Sectors in pairs(Tabs) do
			for i,Elements in pairs(Sectors) do
				if Elements.Color ~= nil then
					local a = Elements.Color
					Elements.Color = tbltorgb(a)
				end
			end
		end
	end
	return copy
end
function library:SaveConfig(cfg)
	local copy = deepCopy(values)
	for i,Tabs in pairs(copy) do
		for i,Sectors in pairs(Tabs) do
			for i,Elements in pairs(Sectors) do
				if Elements.Color ~= nil then
					Elements.Color = {R=Elements.Color.R, G=Elements.Color.G, B=Elements.Color.B}
				end
			end
		end
	end
	writefile(cfglocation..cfg..".txt", game:GetService("HttpService"):JSONEncode(copy))
end

function library:New(name)
	local menu = {}

	local Aristois = Instance.new("ScreenGui")
	local Menu = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local TabButtons = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Tabs = Instance.new("Frame")

	Aristois.Name = "Aristois"
	Aristois.ResetOnSpawn = false
	Aristois.ZIndexBehavior = "Global"
	Aristois.DisplayOrder = 420133769

	local UIScale = Instance.new("UIScale")
	UIScale.Parent = Aristois

	function menu:SetScale(scale)
		UIScale.Scale = scale
	end

	local but = Instance.new("TextButton")
	but.Modal = true
	but.Text = ""
	but.BackgroundTransparency = 1
	but.Parent = Aristois

	local cursor = Instance.new("ImageLabel")
    cursor.Name = "cursor"
    cursor.Parent = Aristois
    cursor.BackgroundTransparency = 1
    cursor.Size = UDim2.new(0,17,0,17)
    cursor.Image = "rbxassetid://518398610"
    cursor.ZIndex = 1000
    cursor.ImageColor3 = Color3.fromRGB(255,255,255)

	local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local Mouse = LocalPlayer:GetMouse()

    game:GetService("RunService").RenderStepped:connect(function()
        cursor.Visible = Aristois.Enabled
        cursor.Position = UDim2.new(0,Mouse.X-3,0,Mouse.Y+1)
    end)

	Menu.Name = "Menu"
	Menu.Parent = Aristois
	Menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Menu.Position = UDim2.new(0.5, -300, 0.5, -300)
	Menu.Size = UDim2.new(0, 600, 0, 600)
	Menu.Image = "http://www.roblox.com/asset/?id=6724360483"

	library.uiopen = true

	game:GetService("UserInputService").InputBegan:Connect(function(key)
		if key.KeyCode == Enum.KeyCode.J then
			Aristois.Enabled = not Aristois.Enabled
			library.uiopen = Aristois.Enabled
		end
	end)

	local KeybindList = Instance.new("ScreenGui")
	do
		local TextLabel = Instance.new("TextLabel")
		local Frame = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")

		KeybindList.Name = "KeybindList"
		KeybindList.ZIndexBehavior = Enum.ZIndexBehavior.Global
		KeybindList.Enabled = false

		TextLabel.Parent = KeybindList
		TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 39)
		TextLabel.BorderColor3 = Color3.fromRGB(255, 37, 110)
		TextLabel.Position = UDim2.new(0, 1, 0.300000012, 0)
		TextLabel.Size = UDim2.new(0, 155, 0, 24)
		TextLabel.ZIndex = 2
		TextLabel.Font = Enum.Font.SourceSansSemibold
		TextLabel.Text = "keybinds"
		TextLabel.TextColor3 = Color3.fromRGB(255, 37, 110)
		TextLabel.TextSize = 14.000

		Frame.Parent = TextLabel
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 1.000
		Frame.Position = UDim2.new(0, 0, 1, 1)
		Frame.Size = UDim2.new(1, 0, 1, 0)

		UIListLayout.Parent = Frame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		KeybindList.Parent = game.CoreGui
	end

	function keybindadd(text)
		if not KeybindList.TextLabel.Frame:FindFirstChild(text) then
			local TextLabel = Instance.new("TextLabel")
			TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 39)
			TextLabel.BorderColor3 = Color3.fromRGB(255, 37, 110)
			TextLabel.BorderSizePixel = 0
			TextLabel.Size = UDim2.new(0, 155, 0, 24)
			TextLabel.ZIndex = 2
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.Text = text
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.Name = text
			TextLabel.Parent = KeybindList.TextLabel.Frame
		end
	end

	function keybindremove(text)
		if KeybindList.TextLabel.Frame:FindFirstChild(text) then
			KeybindList.TextLabel.Frame:FindFirstChild(text):Destroy()
		end
	end

	function library:SetKeybindVisible(Joe)
		KeybindList.Enabled = Joe
	end

	library.dragging = false
	do
		local UserInputService = game:GetService("UserInputService")
		local a = Menu
		local dragInput
		local dragStart
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			a.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
		a.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				library.dragging = true
				dragStart = input.Position
				startPos = a.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						library.dragging = false
					end
				end)
			end
		end)
		a.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and library.dragging then
				update(input)
			end
		end)
	end

	TextLabel.Parent = Menu
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDim2.new(0, 7, 0, 0)
	TextLabel.Size = UDim2.new(0, 0, 0, 29)
	TextLabel.Size = UDim2.new(0, txt:GetTextSize(name, 15, Enum.Font.SourceSansSemibold, Vector2.new(700, TextLabel.AbsoluteSize.Y)).X, 0, 29)
	TextLabel.Font = Enum.Font.SourceSansSemibold
	TextLabel.Text = name
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 15.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	TabButtons.Name = "TabButtons"
	TabButtons.Parent = Menu
	TabButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabButtons.BackgroundTransparency = 1
	TabButtons.Position = UDim2.new(TextLabel.Size.X.Scale, TextLabel.Size.X.Offset+10, 0, 0)
	TabButtons.Size = UDim2.new(TextLabel.Size.X.Scale, 590-TextLabel.Size.X.Offset, 0, 29)

	UIListLayout.Parent = TabButtons
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

	Tabs.Name = "Tabs"
	Tabs.Parent = Menu
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.Position = UDim2.new(0, 0, 0, 32)
	Tabs.Size = UDim2.new(0, 600, 0, 568)

	local first = true
	local currenttab

	function menu:Tab(text)
		local tabname
		tabname = text
		local Tab = {}
		values[tabname] = {}

		local TextButton = Instance.new("TextButton")
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.BackgroundTransparency = 1
		TextButton.Size = UDim2.new(0, txt:GetTextSize(text, 15, Enum.Font.SourceSansSemibold, Vector2.new(700,700)).X+12, 1, 0)
		TextButton.Font = Enum.Font.SourceSansSemibold
		TextButton.Text = text
		TextButton.TextColor3 = Color3.fromRGB(200, 200, 200)
		TextButton.TextSize = 15.000
		TextButton.Parent = TabButtons

		local TabGui = Instance.new("ScrollingFrame")
		local Left = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local Right = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")

		TabGui.Name = "TabGui"
		TabGui.Parent = Tabs
		TabGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabGui.BackgroundTransparency = 1.000
		TabGui.Size = UDim2.new(1, 0, 1, 0)
		TabGui.Visible = false

		Left.Name = "Left"
		Left.Parent = TabGui
		Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Left.BackgroundTransparency = 1.000
		Left.Position = UDim2.new(0, 15, 0, 11)
		Left.Size = UDim2.new(0, 279, 0, 543)

		UIListLayout.Parent = Left
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 10)

		Right.Name = "Right"
		Right.Parent = TabGui
		Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Right.BackgroundTransparency = 1.000
		Right.Position = UDim2.new(0, 303, 0, 11)
		Right.Size = UDim2.new(0, 279, 0, 543)

		UIListLayout_2.Parent = Right
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 10)

		if first then
			TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			currenttab = text
			TabGui.Visible = true
			first = false
		end

		TextButton.MouseButton1Down:Connect(function()
			if currenttab ~= text then
				for i,v in pairs(TabButtons:GetChildren()) do
					if v:IsA("TextButton") then
						library:Tween(v, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
					end
				end
				for i,v in pairs(Tabs:GetChildren()) do
					v.Visible = false
				end
				library:Tween(TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
				currenttab = text
				TabGui.Visible = true
			end
		end)

		function Tab:MSector(text, side)
			local sectorname = text
			local MSector = {}
			values[tabname][text] = {}


			local Section = Instance.new("Frame")
			local SectionText = Instance.new("TextLabel")
			local Inner = Instance.new("Frame")
			local sectiontabs = Instance.new("Frame")
			local UIListLayout_2 = Instance.new("UIListLayout")

			Section.Name = "Section"
			Section.Parent = TabGui[side]
			Section.BackgroundColor3 = Color3.fromRGB(27, 27, 35)
			Section.BorderColor3 = Color3.fromRGB(27, 27, 35)
			Section.BorderSizePixel = 0
			Section.Size = UDim2.new(1, 0, 0, 33)

			SectionText.Name = "SectionText"
			SectionText.Parent = Section
			SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionText.BackgroundTransparency = 1.000
			SectionText.Position = UDim2.new(0, 7, 0, -12)
			SectionText.Size = UDim2.new(0, 270, 0, 19)
			SectionText.ZIndex = 2
			SectionText.Font = Enum.Font.SourceSansSemibold
			SectionText.Text = text
			SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
			SectionText.TextSize = 15.000
			SectionText.TextXAlignment = Enum.TextXAlignment.Left

			Inner.Name = "Inner"
			Inner.Parent = Section
			Inner.BackgroundColor3 = Color3.fromRGB(30, 30, 39)
			Inner.BorderColor3 = Color3.fromRGB(27, 27, 35)
			Inner.BorderSizePixel = 0
			Inner.Position = UDim2.new(0, 1, 0, 1)
			Inner.Size = UDim2.new(1, -2, 1, -9)

			sectiontabs.Name = "sectiontabs"
			sectiontabs.Parent = Section
			sectiontabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			sectiontabs.BackgroundTransparency = 1.000
			sectiontabs.Position = UDim2.new(0, 0, 0, 6)
			sectiontabs.Size = UDim2.new(1, 0, 0, 22)

			UIListLayout_2.Parent = sectiontabs
			UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.Padding = UDim.new(0,4)

			local firs = true
			local selected
			function MSector:Tab(text)
				local tab = {}
				values[tabname][sectorname][text] = {}
				local tabtext = text

				local tabsize = UDim2.new(1, 0, 0, 44)

				local tab1 = Instance.new("Frame")
				local UIPadding = Instance.new("UIPadding")
				local UIListLayout = Instance.new("UIListLayout")
				local TextButton = Instance.new("TextButton")

				tab1.Name = text
				tab1.Parent = Inner
				tab1.BackgroundColor3 = Color3.fromRGB(30, 30, 39)
				tab1.BorderColor3 = Color3.fromRGB(27, 27, 35)
				tab1.BorderSizePixel = 0
				tab1.Position = UDim2.new(0, 0, 0, 30)
				tab1.Size = UDim2.new(1, 0, 1, -21)
				tab1.Name = text
				tab1.Visible = false
	
				UIPadding.Parent = tab1
				UIPadding.PaddingTop = UDim.new(0, 0)
	
				UIListLayout.Parent = tab1
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 1)

				TextButton.Parent = sectiontabs
				TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.BackgroundTransparency = 1.000
				TextButton.Size = UDim2.new(0, txt:GetTextSize(text, 14, Enum.Font.SourceSansSemibold, Vector2.new(700,700)).X + 2, 1, 0)
				TextButton.Font = Enum.Font.SourceSansSemibold
				TextButton.Text = text
				TextButton.TextColor3 = Color3.fromRGB(200, 200, 200)
				TextButton.TextSize = 14.000
				TextButton.Name = text

				TextButton.MouseButton1Down:Connect(function()
					for i,v in pairs(Inner:GetChildren()) do
						v.Visible = false
					end
					for i,v in pairs(sectiontabs:GetChildren()) do
						if v:IsA("TextButton") then
							library:Tween(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200,200,200)})
						end
					end
					Section.Size = tabsize
					tab1.Visible = true
					library:Tween(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
				end)

				function tab:Element(type, text, data, callback)
					local Element = {}
					data = data or {}
					callback = callback or function() end
					values[tabname][sectorname][tabtext][text] = {}
	
					if type == "Jumbobox" then
						tabsize = tabsize + UDim2.new(0,0,0, 39)
						Element.value = {Jumbobox = {}}
						data.options = data.options or {}
	
						local Dropdown = Instance.new("Frame")
						local Button = Instance.new("TextButton")
						local TextLabel = Instance.new("TextLabel")
						local Drop = Instance.new("ScrollingFrame")
						local Button_2 = Instance.new("TextButton")
						local TextLabel_2 = Instance.new("TextLabel")
						local UIListLayout = Instance.new("UIListLayout")
						local ImageLabel = Instance.new("ImageLabel")
						local TextLabel_3 = Instance.new("TextLabel")
	
						Dropdown.Name = "Dropdown"
						Dropdown.Parent = tab1
						Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Dropdown.BackgroundTransparency = 1.000
						Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)
						Dropdown.Size = UDim2.new(1, 0, 0, 39)
	
						Button.Name = "Button"
						Button.Parent = Dropdown
						Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Button.Position = UDim2.new(0, 30, 0, 16)
						Button.Size = UDim2.new(0, 175, 0, 17)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.SourceSans
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 14.000
	
						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
						TextLabel.Position = UDim2.new(0, 5, 0, 0)
						TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = "..."
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	
						local abcd = TextLabel
	
						Drop.Name = "Drop"
						Drop.Parent = Button
						Drop.Active = true
						Drop.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Drop.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Drop.Position = UDim2.new(0, 0, 1, 1)
						Drop.Size = UDim2.new(1, 0, 0, 20)
						Drop.Visible = false
						Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.CanvasSize = UDim2.new(0, 0, 0, 0)
						Drop.ScrollBarThickness = 4
						Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.AutomaticCanvasSize = "Y"
						Drop.ZIndex = 5
						Drop.ScrollBarImageColor3 = Color3.fromRGB(255, 37, 110)
	
						UIListLayout.Parent = Drop
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
						values[tabname][sectorname][tabtext][text] = Element.value
						local num = #data.options
						if num > 5 then
							Drop.Size = UDim2.new(1, 0, 0, 85)
						else
							Drop.Size = UDim2.new(1, 0, 0, 17*num)
						end
						local first = true
	
						local function updatetext()
							local old = {}
							for i,v in ipairs(data.options) do
								if table.find(Element.value.Jumbobox, v) then
									table.insert(old, v)
								else
								end
							end
							local str = ""
	
	
							if #old == 0 then
								str = "..."
							else
								if #old == 1 then
									str = old[1]
								else
									for i,v in ipairs(old) do
										if i == 1 then
											str = v
										else
											if i > 2 then
												if i < 4 then
													str = str..",  ..."
												end
											else
												str = str..",  "..v
											end
										end
									end
								end
							end
	
							abcd.Text = str
						end
						for i,v in ipairs(data.options) do
							do
								local Button = Instance.new("TextButton")
								local TextLabel = Instance.new("TextLabel")
	
								Button.Name = v
								Button.Parent = Drop
								Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
								Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
								Button.Position = UDim2.new(0, 30, 0, 16)
								Button.Size = UDim2.new(0, 175, 0, 17)
								Button.AutoButtonColor = false
								Button.Font = Enum.Font.SourceSans
								Button.Text = ""
								Button.TextColor3 = Color3.fromRGB(0, 0, 0)
								Button.TextSize = 14.000
								Button.BorderSizePixel = 0
								Button.ZIndex = 6
	
								TextLabel.Parent = Button
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel.BackgroundTransparency = 1.000
								TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
								TextLabel.Position = UDim2.new(0, 5, 0, -1)
								TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
								TextLabel.Font = Enum.Font.SourceSansSemibold
								TextLabel.Text = v
								TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
								TextLabel.TextSize = 14.000
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left
								TextLabel.ZIndex = 6
	
								Button.MouseButton1Down:Connect(function()
									if table.find(Element.value.Jumbobox, v) then
										for i,a in pairs(Element.value.Jumbobox) do
											if a == v then
												table.remove(Element.value.Jumbobox, i)
											end
										end
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
									else
										table.insert(Element.value.Jumbobox, v)
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(175, 42, 86)})
									end
									updatetext()
	
									values[tabname][sectorname][tabtext][text] = Element.value
									callback(Element.value)
								end)
								Button.MouseEnter:Connect(function()
									if not table.find(Element.value.Jumbobox, v) then
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
									end
								end)
								Button.MouseLeave:Connect(function()
									if not table.find(Element.value.Jumbobox, v) then
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
									end
								end)
	
								first = false
							end
						end
						function Element:SetValue(val)
							Element.value = val
							for i,v in pairs(Drop:GetChildren()) do
								if v.Name ~= "UIListLayout" then
									if table.find(val.Jumbobox, v.Name) then
										v.TextLabel.TextColor3 = Color3.fromRGB(175, 42, 86)
									else
										v.TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
									end
								end
							end
							updatetext()
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(val)
						end
						if data.default then
							Element:SetValue(data.default)
						end
	
						ImageLabel.Parent = Button
						ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ImageLabel.BackgroundTransparency = 1.000
						ImageLabel.Position = UDim2.new(0, 165, 0, 6)
						ImageLabel.Size = UDim2.new(0, 6, 0, 4)
						ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"
	
						TextLabel_3.Parent = Dropdown
						TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel_3.BackgroundTransparency = 1.000
						TextLabel_3.Position = UDim2.new(0, 32, 0, -1)
						TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)
						TextLabel_3.Font = Enum.Font.SourceSansSemibold
						TextLabel_3.Text = text
						TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel_3.TextSize = 14.000
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
	
						Button.MouseButton1Down:Connect(function()
							Drop.Visible = not Drop.Visible
							if not Drop.Visible then
								Drop.CanvasPosition = Vector2.new(0,0)
							end
						end)
						local indrop = false
						local ind = false
						Drop.MouseEnter:Connect(function()
							indrop = true
						end)
						Drop.MouseLeave:Connect(function()
							indrop = false
						end)
						Button.MouseEnter:Connect(function()
							ind = true
						end)
						Button.MouseLeave:Connect(function()
							ind = false
						end)
						game:GetService("UserInputService").InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
								if Drop.Visible == true and not indrop and not ind then
									Drop.Visible = false
									Drop.CanvasPosition = Vector2.new(0,0)
								end
							end
						end)
					elseif type == "TextBox" then
						
					elseif type == "ToggleKeybind" then
						tabsize = tabsize + UDim2.new(0,0,0,16)
						Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = "Always", Active = true}
	
						local Toggle = Instance.new("Frame")
						local Button = Instance.new("TextButton")
						local Color = Instance.new("Frame")
						local TextLabel = Instance.new("TextLabel")
	
						Toggle.Name = "Toggle"
						Toggle.Parent = tab1
						Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Toggle.BackgroundTransparency = 1.000
						Toggle.Size = UDim2.new(1, 0, 0, 15)
	
						Button.Name = "Button"
						Button.Parent = Toggle
						Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Size = UDim2.new(1, 0, 1, 0)
						Button.Font = Enum.Font.SourceSans
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 14.000
	
						Color.Name = "Color"
						Color.Parent = Button
						Color.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Color.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Color.Position = UDim2.new(0, 15, 0.5, -5)
						Color.Size = UDim2.new(0, 8, 0, 8)
						local binding = false
						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0, 32, 0, -1)
						TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	
						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(155, 22, 66)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
							else
								keybindremove(text)
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(33, 35, 47)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
							end
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end
	
						Button.MouseButton1Down:Connect(function()
							if not binding then
								Element.value.Toggle = not Element.value.Toggle
								update()
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end
						end)
						if data.default then
							update()
						end
						values[tabname][sectorname][tabtext][text] = Element.value
						do
							local Keybind = Instance.new("TextButton")
							local Frame = Instance.new("Frame")
							local Always = Instance.new("TextButton")
							local UIListLayout = Instance.new("UIListLayout")
							local Hold = Instance.new("TextButton")
							local Toggle = Instance.new("TextButton")
	
							Keybind.Name = "Keybind"
							Keybind.Parent = Button
							Keybind.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
							Keybind.BorderColor3 = Color3.fromRGB(27, 27, 35)
							Keybind.Position = UDim2.new(0, 270, 0.5, -6)
							Keybind.Text = "NONE"
							Keybind.Size = UDim2.new(0, 43, 0, 12)
							Keybind.Size = UDim2.new(0,txt:GetTextSize("NONE", 14, Enum.Font.SourceSansSemibold, Vector2.new(700, 12)).X + 5,0, 12)
							Keybind.AutoButtonColor = false
							Keybind.Font = Enum.Font.SourceSansSemibold
							Keybind.TextColor3 = Color3.fromRGB(200, 200, 200)
							Keybind.TextSize = 14.000
							Keybind.AnchorPoint = Vector2.new(1,0)
							Keybind.ZIndex = 3
	
							Frame.Parent = Keybind
							Frame.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
							Frame.BorderColor3 = Color3.fromRGB(27, 27, 35)
							Frame.Position = UDim2.new(1, -49, 0, 1)
							Frame.Size = UDim2.new(0, 49, 0, 49)
							Frame.Visible = false
							Frame.ZIndex = 3
	
							Always.Name = "Always"
							Always.Parent = Frame
							Always.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
							Always.BackgroundTransparency = 1.000
							Always.BorderColor3 = Color3.fromRGB(27, 27, 35)
							Always.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
							Always.Size = UDim2.new(1, 0, 0, 16)
							Always.AutoButtonColor = false
							Always.Font = Enum.Font.SourceSansBold
							Always.Text = "Always"
							Always.TextColor3 = Color3.fromRGB(173, 24, 74)
							Always.TextSize = 14.000
							Always.ZIndex = 3
	
							UIListLayout.Parent = Frame
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
							Hold.Name = "Hold"
							Hold.Parent = Frame
							Hold.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
							Hold.BackgroundTransparency = 1.000
							Hold.BorderColor3 = Color3.fromRGB(27, 27, 35)
							Hold.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
							Hold.Size = UDim2.new(1, 0, 0, 16)
							Hold.AutoButtonColor = false
							Hold.Font = Enum.Font.SourceSansSemibold
							Hold.Text = "Hold"
							Hold.TextColor3 = Color3.fromRGB(200, 200, 200)
							Hold.TextSize = 14.000
							Hold.ZIndex = 3
	
							Toggle.Name = "Toggle"
							Toggle.Parent = Frame
							Toggle.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
							Toggle.BackgroundTransparency = 1.000
							Toggle.BorderColor3 = Color3.fromRGB(27, 27, 35)
							Toggle.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
							Toggle.Size = UDim2.new(1, 0, 0, 16)
							Toggle.AutoButtonColor = false
							Toggle.Font = Enum.Font.SourceSansSemibold
							Toggle.Text = "Toggle"
							Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
							Toggle.TextSize = 14.000
							Toggle.ZIndex = 3
	
							for _,button in pairs(Frame:GetChildren()) do
								if button:IsA("TextButton") then
									button.MouseButton1Down:Connect(function()
										Element.value.Type = button.Text
										Frame.Visible = false
										Element.value.Active = Element.value.Type == "Always" and true or false
										if Element.value.Type == "Always" then
											keybindremove(text)
										end
										for _,button in pairs(Frame:GetChildren()) do
											if button:IsA("TextButton") and button.Text ~= Element.value.Type then
												button.Font = Enum.Font.SourceSansSemibold
												library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200,200,200)})
											end
										end
										button.Font = Enum.Font.SourceSansBold
										button.TextColor3 = Color3.fromRGB(173, 24, 74)
										values[tabname][sectorname][tabtext][text] = Element.value
										callback(Element.value)
									end)
									button.MouseEnter:Connect(function()
										if Element.value.Type ~= button.Text then
											library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255,255,255)})
										end
									end)
									button.MouseLeave:Connect(function()
										if Element.value.Type ~= button.Text then
											library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200,200,200)})
										end
									end)
								end
							end
							Keybind.MouseButton1Down:Connect(function()
								if not binding then
									wait()
									binding = true
									Keybind.Text = "..."
									Keybind.Size = UDim2.new(0,txt:GetTextSize("...", 14, Enum.Font.SourceSansSemibold, Vector2.new(700, 12)).X + 4,0, 12)
								end
							end)
							Keybind.MouseButton2Down:Connect(function()
								if not binding then
									Frame.Visible = not Frame.Visible
								end
							end)
							local Player = game.Players.LocalPlayer
							local Mouse = Player:GetMouse()
							local InFrame = false
							Frame.MouseEnter:Connect(function()
								InFrame = true
							end)
							Frame.MouseLeave:Connect(function()
								InFrame = false
							end)
							local InFrame2 = false
							Keybind.MouseEnter:Connect(function()
								InFrame2 = true
							end)
							Keybind.MouseLeave:Connect(function()
								InFrame2 = false
							end)
							game:GetService("UserInputService").InputBegan:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 and not binding then
									if Frame.Visible == true and not InFrame and not InFrame2 then
										Frame.Visible = false
									end
								end
								if binding then
									binding = false
									Keybind.Text = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name:upper() or input.UserInputType.Name:upper()
									Keybind.Size = UDim2.new(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vector2.new(700, 12)).X + 5,0, 12)
									Element.value.Key = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name or input.UserInputType.Name
									if input.KeyCode.Name == "Backspace" then
										Keybind.Text = "NONE"
										Keybind.Size = UDim2.new(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vector2.new(700, 12)).X + 4,0, 12)
										Element.value.Key = nil
									end
								else
									if Element.value.Key ~= nil then
										if string.find(Element.value.Key, "Mouse") then
											if input.UserInputType == Enum.UserInputType[Element.value.Key] then
												if Element.value.Type == "Hold" then
													Element.value.Active = true
													if Element.value.Active and Element.value.Toggle then
														keybindadd(text)
													else
														keybindremove(text)
													end
												elseif Element.value.Type == "Toggle" then
													Element.value.Active = not Element.value.Active
													if Element.value.Active and Element.value.Toggle then
														keybindadd(text)
													else
														keybindremove(text)
													end
												end
											end
										else
											if input.KeyCode == Enum.KeyCode[Element.value.Key] then
												if Element.value.Type == "Hold" then
													Element.value.Active = true
													if Element.value.Active and Element.value.Toggle then
														keybindadd(text)
													else
														keybindremove(text)
													end
												elseif Element.value.Type == "Toggle" then
													Element.value.Active = not Element.value.Active
													if Element.value.Active and Element.value.Toggle then
														keybindadd(text)
													else
														keybindremove(text)
													end
												end
											end
										end
									else
										Element.value.Active = true
									end
								end
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end)
							game:GetService("UserInputService").InputEnded:Connect(function(input)
								if Element.value.Key ~= nil then
									if string.find(Element.value.Key, "Mouse") then
										if input.UserInputType == Enum.UserInputType[Element.value.Key] then
											if Element.value.Type == "Hold" then
												Element.value.Active = false
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											end
										end
									else
										if input.KeyCode == Enum.KeyCode[Element.value.Key] then
											if Element.value.Type == "Hold" then
												Element.value.Active = false
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											end
										end
									end
								end
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end)
						end
						function Element:SetValue(value)
							Element.value = value
							update()
						end
					elseif type == "Toggle" then
						tabsize = tabsize + UDim2.new(0,0,0,16)
						Element.value = {Toggle = data.default and data.default.Toggle or false}
	
						local Toggle = Instance.new("Frame")
						local Button = Instance.new("TextButton")
						local Color = Instance.new("Frame")
						local TextLabel = Instance.new("TextLabel")
	
						Toggle.Name = "Toggle"
						Toggle.Parent = tab1
						Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Toggle.BackgroundTransparency = 1.000
						Toggle.Size = UDim2.new(1, 0, 0, 15)
	
						Button.Name = "Button"
						Button.Parent = Toggle
						Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Size = UDim2.new(1, 0, 1, 0)
						Button.Font = Enum.Font.SourceSans
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 14.000
	
						Color.Name = "Color"
						Color.Parent = Button
						Color.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Color.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Color.Position = UDim2.new(0, 15, 0.5, -5)
						Color.Size = UDim2.new(0, 8, 0, 8)
	
						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0, 32, 0, -1)
						TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	
						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(155, 22, 66)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
							else
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(33, 35, 47)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
							end
							values[tabname][sectorname][tabtext][text] = Element.value
						end
	
						Button.MouseButton1Down:Connect(function()
							Element.value.Toggle = not Element.value.Toggle
							update()
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end)
						if data.default then
							update()
						end
						values[tabname][sectorname][tabtext][text] = Element.value
						function Element:SetValue(value)
							Element.value = value
							values[tabname][sectorname][tabtext][text] = Element.value
							update()
							callback(Element.value)
						end
					elseif type == "ToggleColor" then
						tabsize = tabsize + UDim2.new(0,0,0,16)
						Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or Color3.fromRGB(255,255,255)}
	
						local Toggle = Instance.new("Frame")
						local Button = Instance.new("TextButton")
						local Color = Instance.new("Frame")
						local TextLabel = Instance.new("TextLabel")
	
						Toggle.Name = "Toggle"
						Toggle.Parent = tab1
						Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Toggle.BackgroundTransparency = 1.000
						Toggle.Size = UDim2.new(1, 0, 0, 15)
	
						Button.Name = "Button"
						Button.Parent = Toggle
						Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Size = UDim2.new(1, 0, 1, 0)
						Button.Font = Enum.Font.SourceSans
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 14.000
	
						Color.Name = "Color"
						Color.Parent = Button
						Color.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Color.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Color.Position = UDim2.new(0, 15, 0.5, -5)
						Color.Size = UDim2.new(0, 8, 0, 8)
	
						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0, 32, 0, -1)
						TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	
						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(155, 22, 66)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
							else
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(33, 35, 47)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
							end
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end
	
						local ColorH,ColorS,ColorV
	
						local ColorP = Instance.new("TextButton")
						local Frame = Instance.new("Frame")
						local Colorpick = Instance.new("ImageButton")
						local ColorDrag = Instance.new("Frame")
						local Huepick = Instance.new("ImageButton")
						local Huedrag = Instance.new("Frame")
	
						ColorP.Name = "ColorP"
						ColorP.Parent = Button
						ColorP.AnchorPoint = Vector2.new(1, 0)
						ColorP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						ColorP.BorderColor3 = Color3.fromRGB(27, 27, 35)
						ColorP.Position = UDim2.new(0, 270, 0.5, -4)
						ColorP.Size = UDim2.new(0, 18, 0, 8)
						ColorP.AutoButtonColor = false
						ColorP.Font = Enum.Font.SourceSansSemibold
						ColorP.Text = ""
						ColorP.TextColor3 = Color3.fromRGB(200, 200, 200)
						ColorP.TextSize = 14.000
	
						Frame.Parent = ColorP
						Frame.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Frame.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Frame.Position = UDim2.new(-0.666666687, -170, 1.375, 0)
						Frame.Size = UDim2.new(0, 200, 0, 170)
						Frame.Visible = false
						Frame.ZIndex = 3
	
						Colorpick.Name = "Colorpick"
						Colorpick.Parent = Frame
						Colorpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Colorpick.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Colorpick.ClipsDescendants = false
						Colorpick.Position = UDim2.new(0, 40, 0, 10)
						Colorpick.Size = UDim2.new(0, 150, 0, 150)
						Colorpick.AutoButtonColor = false
						Colorpick.Image = "rbxassetid://4155801252"
						Colorpick.ImageColor3 = Color3.fromRGB(255, 0, 0)
						Colorpick.ZIndex = 3
	
						ColorDrag.Name = "ColorDrag"
						ColorDrag.Parent = Colorpick
						ColorDrag.AnchorPoint = Vector2.new(0.5, 0.5)
						ColorDrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ColorDrag.BorderColor3 = Color3.fromRGB(27, 27, 35)
						ColorDrag.Size = UDim2.new(0, 4, 0, 4)
						ColorDrag.ZIndex = 3
	
						Huepick.Name = "Huepick"
						Huepick.Parent = Frame
						Huepick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Huepick.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Huepick.ClipsDescendants = false
						Huepick.Position = UDim2.new(0, 10, 0, 10)
						Huepick.Size = UDim2.new(0, 20, 0, 150)
						Huepick.AutoButtonColor = false
						Huepick.Image = "rbxassetid://3641079629"
						Huepick.ImageColor3 = Color3.fromRGB(255, 0, 0)
						Huepick.ImageTransparency = 1
						Huepick.BackgroundTransparency = 0
						Huepick.ZIndex = 3
	
						local HueFrameGradient = Instance.new("UIGradient")
						HueFrameGradient.Rotation = 90
						HueFrameGradient.Name = "HueFrameGradient"
						HueFrameGradient.Parent = Huepick
						HueFrameGradient.Color = ColorSequence.new {
							ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
							ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),
							ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),
							ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)),
							ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),
							ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),
							ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
						}	
	
						Huedrag.Name = "Huedrag"
						Huedrag.Parent = Huepick
						Huedrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Huedrag.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Huedrag.Size = UDim2.new(1, 0, 0, 2)
						Huedrag.ZIndex = 3
	
						ColorP.MouseButton1Down:Connect(function()
							Frame.Visible = not Frame.Visible
						end)
						local abc = false
						local inCP = false
						ColorP.MouseEnter:Connect(function()
							abc = true
						end)
						ColorP.MouseLeave:Connect(function()
							abc = false
						end)
						Frame.MouseEnter:Connect(function()
							inCP = true
						end)
						Frame.MouseLeave:Connect(function()
							inCP = false
						end)
	
						ColorH = (math.clamp(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)
						ColorS = 1-(math.clamp(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
						ColorV = 1-(math.clamp(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)
	
						if data.default.Color ~= nil then
							ColorH, ColorS, ColorV = data.default.Color:ToHSV()
	
							ColorH = math.clamp(ColorH,0,1)
							ColorS = math.clamp(ColorS,0,1)
							ColorV = math.clamp(ColorV,0,1)
							ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)
							Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
	
							ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
							Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)
						end
	
						local mouse = game:GetService("Players").LocalPlayer:GetMouse()
						game:GetService("UserInputService").InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
								if not dragging and not abc and not inCP then
									Frame.Visible = false
								end
							end
						end)
	
						local function updateColor()
							local ColorX = (math.clamp(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
							local ColorY = (math.clamp(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)
							ColorDrag.Position = UDim2.new(ColorX, 0, ColorY, 0)
							ColorS = 1-ColorX
							ColorV = 1-ColorY
							Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
							values[tabname][sectorname][tabtext][text] = Element.value
							Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)
							callback(Element.value)
						end
						local function updateHue()
							local y = math.clamp(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)
							Huedrag.Position = UDim2.new(0, 0, 0, y)
							hue = y/148
							ColorH = 1-hue
							Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
							values[tabname][sectorname][tabtext][text] = Element.value
							Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)
							callback(Element.value)
						end
						Colorpick.MouseButton1Down:Connect(function()
							updateColor()
							moveconnection = mouse.Move:Connect(function()
								updateColor()
							end)
							releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									updateColor()
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
						Huepick.MouseButton1Down:Connect(function()
							updateHue()
							moveconnection = mouse.Move:Connect(function()
								updateHue()
							end)
							releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									updateHue()
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
	
						Button.MouseButton1Down:Connect(function()
							Element.value.Toggle = not Element.value.Toggle
							update()
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end)
						if data.default then
							update()
						end
						values[tabname][sectorname][tabtext][text] = Element.value
						function Element:SetValue(value)
							Element.value = value
							local duplicate = Color3.new(value.Color.R, value.Color.G, value.Color.B)
							ColorH, ColorS, ColorV = duplicate:ToHSV()
							ColorH = math.clamp(ColorH,0,1)
							ColorS = math.clamp(ColorS,0,1)
							ColorV = math.clamp(ColorV,0,1)
	
							ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)
							Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
							update()
							Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)
						end
					elseif type == "ToggleTrans" then
						tabsize = tabsize + UDim2.new(0,0,0,16)
						Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or Color3.fromRGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}
	
						local Toggle = Instance.new("Frame")
						local Button = Instance.new("TextButton")
						local Color = Instance.new("Frame")
						local TextLabel = Instance.new("TextLabel")
	
						Toggle.Name = "Toggle"
						Toggle.Parent = tab1
						Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Toggle.BackgroundTransparency = 1.000
						Toggle.Size = UDim2.new(1, 0, 0, 15)
	
						Button.Name = "Button"
						Button.Parent = Toggle
						Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Size = UDim2.new(1, 0, 1, 0)
						Button.Font = Enum.Font.SourceSans
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 14.000
	
						Color.Name = "Color"
						Color.Parent = Button
						Color.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Color.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Color.Position = UDim2.new(0, 15, 0.5, -5)
						Color.Size = UDim2.new(0, 8, 0, 8)
	
						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0, 32, 0, -1)
						TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	
						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(155, 22, 66)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
							else
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(33, 35, 47)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
							end
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end
	
						local ColorH,ColorS,ColorV
	
						local ColorP = Instance.new("TextButton")
						local Frame = Instance.new("Frame")
						local Colorpick = Instance.new("ImageButton")
						local ColorDrag = Instance.new("Frame")
						local Huepick = Instance.new("ImageButton")
						local Huedrag = Instance.new("Frame")
	
						ColorP.Name = "ColorP"
						ColorP.Parent = Button
						ColorP.AnchorPoint = Vector2.new(1, 0)
						ColorP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						ColorP.BorderColor3 = Color3.fromRGB(27, 27, 35)
						ColorP.Position = UDim2.new(0, 270, 0.5, -4)
						ColorP.Size = UDim2.new(0, 18, 0, 8)
						ColorP.AutoButtonColor = false
						ColorP.Font = Enum.Font.SourceSansSemibold
						ColorP.Text = ""
						ColorP.TextColor3 = Color3.fromRGB(200, 200, 200)
						ColorP.TextSize = 14.000
	
						Frame.Parent = ColorP
						Frame.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Frame.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Frame.Position = UDim2.new(-0.666666687, -170, 1.375, 0)
						Frame.Size = UDim2.new(0, 200, 0, 190)
						Frame.Visible = false
						Frame.ZIndex = 3
	
						Colorpick.Name = "Colorpick"
						Colorpick.Parent = Frame
						Colorpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Colorpick.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Colorpick.ClipsDescendants = false
						Colorpick.Position = UDim2.new(0, 40, 0, 10)
						Colorpick.Size = UDim2.new(0, 150, 0, 150)
						Colorpick.AutoButtonColor = false
						Colorpick.Image = "rbxassetid://4155801252"
						Colorpick.ImageColor3 = Color3.fromRGB(255, 0, 0)
						Colorpick.ZIndex = 3
	
						ColorDrag.Name = "ColorDrag"
						ColorDrag.Parent = Colorpick
						ColorDrag.AnchorPoint = Vector2.new(0.5, 0.5)
						ColorDrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ColorDrag.BorderColor3 = Color3.fromRGB(27, 27, 35)
						ColorDrag.Size = UDim2.new(0, 4, 0, 4)
						ColorDrag.ZIndex = 3
	
						Huepick.Name = "Huepick"
						Huepick.Parent = Frame
						Huepick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Huepick.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Huepick.ClipsDescendants = true
						Huepick.Position = UDim2.new(0, 10, 0, 10)
						Huepick.Size = UDim2.new(0, 20, 0, 150)
						Huepick.AutoButtonColor = false
						Huepick.Image = "rbxassetid://3641079629"
						Huepick.ImageColor3 = Color3.fromRGB(255, 0, 0)
						Huepick.ImageTransparency = 1
						Huepick.BackgroundTransparency = 0
						Huepick.ZIndex = 3
	
						local HueFrameGradient = Instance.new("UIGradient")
						HueFrameGradient.Rotation = 90
						HueFrameGradient.Name = "HueFrameGradient"
						HueFrameGradient.Parent = Huepick
						HueFrameGradient.Color = ColorSequence.new {
							ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
							ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),
							ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),
							ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)),
							ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),
							ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),
							ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
						}	
	
						Huedrag.Name = "Huedrag"
						Huedrag.Parent = Huepick
						Huedrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Huedrag.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Huedrag.Size = UDim2.new(1, 0, 0, 2)
						Huedrag.ZIndex = 3
	
						local Transpick = Instance.new("ImageButton")
						local Transcolor = Instance.new("ImageLabel")
						local Transdrag = Instance.new("Frame")
	
						Transpick.Name = "Transpick"
						Transpick.Parent = Frame
						Transpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Transpick.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Transpick.Position = UDim2.new(0, 10, 0, 167)
						Transpick.Size = UDim2.new(0, 180, 0, 15)
						Transpick.AutoButtonColor = false
						Transpick.Image = "rbxassetid://3887014957"
						Transpick.ScaleType = Enum.ScaleType.Tile
						Transpick.TileSize = UDim2.new(0, 10, 0, 10)
						Transpick.ZIndex = 3
	
						Transcolor.Name = "Transcolor"
						Transcolor.Parent = Transpick
						Transcolor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Transcolor.BackgroundTransparency = 1.000
						Transcolor.Size = UDim2.new(1, 0, 1, 0)
						Transcolor.Image = "rbxassetid://3887017050"
						Transcolor.ImageColor3 = Color3.fromRGB(255, 0, 4)
						Transcolor.ZIndex = 3
	
						Transdrag.Name = "Transdrag"
						Transdrag.Parent = Transcolor
						Transdrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Transdrag.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Transdrag.Position = UDim2.new(0, -1, 0, 0)
						Transdrag.Size = UDim2.new(0, 2, 1, 0)
						Transdrag.ZIndex = 3
	
						ColorP.MouseButton1Down:Connect(function()
							Frame.Visible = not Frame.Visible
						end)
						local abc = false
						local inCP = false
						ColorP.MouseEnter:Connect(function()
							abc = true
						end)
						ColorP.MouseLeave:Connect(function()
							abc = false
						end)
						Frame.MouseEnter:Connect(function()
							inCP = true
						end)
						Frame.MouseLeave:Connect(function()
							inCP = false
						end)
	
						ColorH = (math.clamp(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)
						ColorS = 1-(math.clamp(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
						ColorV = 1-(math.clamp(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)
	
						if data.default.Color ~= nil then
							ColorH, ColorS, ColorV = data.default.Color:ToHSV()
	
							ColorH = math.clamp(ColorH,0,1)
							ColorS = math.clamp(ColorS,0,1)
							ColorV = math.clamp(ColorV,0,1)
							ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)
							Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
	
							Transcolor.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
	
							ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
							Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)
						end
						if data.default.Transparency ~= nil then
							Transdrag.Position = UDim2.new(data.default.Transparency, -1, 0, 0)
						end
						local mouse = game:GetService("Players").LocalPlayer:GetMouse()
						game:GetService("UserInputService").InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
								if not dragging and not abc and not inCP then
									Frame.Visible = false
								end
							end
						end)
	
						local function updateColor()
							local ColorX = (math.clamp(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
							local ColorY = (math.clamp(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)
							ColorDrag.Position = UDim2.new(ColorX, 0, ColorY, 0)
							ColorS = 1-ColorX
							ColorV = 1-ColorY
							Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
							Transcolor.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
							values[tabname][sectorname][tabtext][text] = Element.value
							Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)
							callback(Element.value)
						end
						local function updateHue()
							local y = math.clamp(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)
							Huedrag.Position = UDim2.new(0, 0, 0, y)
							hue = y/148
							ColorH = 1-hue
							Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
							Transcolor.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
							values[tabname][sectorname][tabtext][text] = Element.value
							Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)
							callback(Element.value)
						end
						local function updateTrans()
							local x = math.clamp(mouse.X - Transpick.AbsolutePosition.X, 0, 178)
							Transdrag.Position = UDim2.new(0, x, 0, 0)
							Element.value.Transparency = (x/178)
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end
						Transpick.MouseButton1Down:Connect(function()
							updateTrans()
							moveconnection = mouse.Move:Connect(function()
								updateTrans()
							end)
							releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									updateTrans()
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
						Colorpick.MouseButton1Down:Connect(function()
							updateColor()
							moveconnection = mouse.Move:Connect(function()
								updateColor()
							end)
							releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									updateColor()
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
						Huepick.MouseButton1Down:Connect(function()
							updateHue()
							moveconnection = mouse.Move:Connect(function()
								updateHue()
							end)
							releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									updateHue()
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
	
						Button.MouseButton1Down:Connect(function()
							Element.value.Toggle = not Element.value.Toggle
							update()
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end)
						if data.default then
							update()
						end
						values[tabname][sectorname][tabtext][text] = Element.value
						function Element:SetValue(value)
							Element.value = value
							local duplicate = Color3.new(value.Color.R, value.Color.G, value.Color.B)
							ColorH, ColorS, ColorV = duplicate:ToHSV()
							ColorH = math.clamp(ColorH,0,1)
							ColorS = math.clamp(ColorS,0,1)
							ColorV = math.clamp(ColorV,0,1)
	
							ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)
							Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
							update()
							Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)
						end
					elseif type == "Dropdown" then
						tabsize = tabsize + UDim2.new(0,0,0,39)
						Element.value = {Dropdown = data.options[1]}
	
						local Dropdown = Instance.new("Frame")
						local Button = Instance.new("TextButton")
						local TextLabel = Instance.new("TextLabel")
						local Drop = Instance.new("ScrollingFrame")
						local Button_2 = Instance.new("TextButton")
						local TextLabel_2 = Instance.new("TextLabel")
						local UIListLayout = Instance.new("UIListLayout")
						local ImageLabel = Instance.new("ImageLabel")
						local TextLabel_3 = Instance.new("TextLabel")
	
						Dropdown.Name = "Dropdown"
						Dropdown.Parent = tab1
						Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Dropdown.BackgroundTransparency = 1.000
						Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)
						Dropdown.Size = UDim2.new(1, 0, 0, 39)
	
						Button.Name = "Button"
						Button.Parent = Dropdown
						Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Button.Position = UDim2.new(0, 30, 0, 16)
						Button.Size = UDim2.new(0, 175, 0, 17)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.SourceSans
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 14.000
	
						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
						TextLabel.Position = UDim2.new(0, 5, 0, 0)
						TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = Element.value.Dropdown
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	
						local abcd = TextLabel
	
						Drop.Name = "Drop"
						Drop.Parent = Button
						Drop.Active = true
						Drop.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Drop.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Drop.Position = UDim2.new(0, 0, 1, 1)
						Drop.Size = UDim2.new(1, 0, 0, 20)
						Drop.Visible = false
						Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.CanvasSize = UDim2.new(0, 0, 0, 0)
						Drop.ScrollBarThickness = 4
						Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.AutomaticCanvasSize = "Y"
						Drop.ZIndex = 5
						Drop.ScrollBarImageColor3 = Color3.fromRGB(255, 37, 110)
	
						UIListLayout.Parent = Drop
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
						local num = #data.options
						if num > 5 then
							Drop.Size = UDim2.new(1, 0, 0, 85)
						else
							Drop.Size = UDim2.new(1, 0, 0, 17*num)
						end
						local first = true
						for i,v in ipairs(data.options) do
							do
								local Button = Instance.new("TextButton")
								local TextLabel = Instance.new("TextLabel")
	
								Button.Name = v
								Button.Parent = Drop
								Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
								Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
								Button.Position = UDim2.new(0, 30, 0, 16)
								Button.Size = UDim2.new(0, 175, 0, 17)
								Button.AutoButtonColor = false
								Button.Font = Enum.Font.SourceSans
								Button.Text = ""
								Button.TextColor3 = Color3.fromRGB(0, 0, 0)
								Button.TextSize = 14.000
								Button.BorderSizePixel = 0
								Button.ZIndex = 6
	
								TextLabel.Parent = Button
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel.BackgroundTransparency = 1.000
								TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
								TextLabel.Position = UDim2.new(0, 5, 0, -1)
								TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
								TextLabel.Font = Enum.Font.SourceSansSemibold
								TextLabel.Text = v
								TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
								TextLabel.TextSize = 14.000
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left
								TextLabel.ZIndex = 6
	
								Button.MouseButton1Down:Connect(function()
									Drop.Visible = false
									Element.value.Dropdown = v
									abcd.Text = v
									values[tabname][sectorname][tabtext][text] = Element.value
									callback(Element.value)
									Drop.CanvasPosition = Vector2.new(0,0)
								end)
								Button.MouseEnter:Connect(function()
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(255, 255, 255)})
								end)
								Button.MouseLeave:Connect(function()
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(200, 200, 200)})
								end)
	
								first = false
							end
						end
	
						function Element:SetValue(val)
							Element.value = val
							abcd.Text = val.Dropdown
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(val)
						end
	
						ImageLabel.Parent = Button
						ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ImageLabel.BackgroundTransparency = 1.000
						ImageLabel.Position = UDim2.new(0, 165, 0, 6)
						ImageLabel.Size = UDim2.new(0, 6, 0, 4)
						ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"
	
						TextLabel_3.Parent = Dropdown
						TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel_3.BackgroundTransparency = 1.000
						TextLabel_3.Position = UDim2.new(0, 32, 0, -1)
						TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)
						TextLabel_3.Font = Enum.Font.SourceSansSemibold
						TextLabel_3.Text = text
						TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel_3.TextSize = 14.000
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
	
						Button.MouseButton1Down:Connect(function()
							Drop.Visible = not Drop.Visible
							if not Drop.Visible then
								Drop.CanvasPosition = Vector2.new(0,0)
							end
						end)
						local indrop = false
						local ind = false
						Drop.MouseEnter:Connect(function()
							indrop = true
						end)
						Drop.MouseLeave:Connect(function()
							indrop = false
						end)
						Button.MouseEnter:Connect(function()
							ind = true
						end)
						Button.MouseLeave:Connect(function()
							ind = false
						end)
						game:GetService("UserInputService").InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
								if Drop.Visible == true and not indrop and not ind then
									Drop.Visible = false
									Drop.CanvasPosition = Vector2.new(0,0)
								end
							end
						end)
						values[tabname][sectorname][tabtext][text] = Element.value
					elseif type == "Slider" then
	
						tabsize = tabsize + UDim2.new(0,0,0,25)
	
						local Slider = Instance.new("Frame")
						local TextLabel = Instance.new("TextLabel")
						local Button = Instance.new("TextButton")
						local Frame = Instance.new("Frame")
						local UIGradient = Instance.new("UIGradient")
						local Value = Instance.new("TextLabel")
	
						Slider.Name = "Slider"
						Slider.Parent = tab1
						Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Slider.BackgroundTransparency = 1.000
						Slider.Position = UDim2.new(0, 0, 0.653061211, 0)
						Slider.Size = UDim2.new(1, 0, 0, 25)
	
						TextLabel.Parent = Slider
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0, 32, 0, -2)
						TextLabel.Size = UDim2.new(0, 100, 0, 15)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	
						Button.Name = "Button"
						Button.Parent = Slider
						Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Button.Position = UDim2.new(0, 30, 0, 15)
						Button.Size = UDim2.new(0, 175, 0, 5)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.SourceSans
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 14.000
	
						Frame.Parent = Button
						Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Frame.BorderSizePixel = 0
						Frame.Size = UDim2.new(0.5, 0, 1, 0)
	
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(153, 22, 65)), ColorSequenceKeypoint.new(1, Color3.fromRGB(109, 16, 46))}
						UIGradient.Rotation = 90
						UIGradient.Parent = Frame
	
						Value.Name = "Value"
						Value.Parent = Slider
						Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Value.BackgroundTransparency = 1.000
						Value.Position = UDim2.new(0, 150, 0, -1)
						Value.Size = UDim2.new(0, 55, 0, 15)
						Value.Font = Enum.Font.SourceSansSemibold
						Value.Text = "50"
						Value.TextColor3 = Color3.fromRGB(200, 200, 200)
						Value.TextSize = 14.000
						Value.TextXAlignment = Enum.TextXAlignment.Right
						local min, max, default = data.min or 0, data.max or 100, data.default or 0
						Element.value = {Slider = default}
	
						function Element:SetValue(value)
							Element.value = value
							local a
							if min > 0 then
								a = ((Element.value.Slider - min)) / (max-min)
							else
								a = (Element.value.Slider-min)/(max-min)
							end
							Value.Text = Element.value.Slider
							Frame.Size = UDim2.new(a,0,1,0)
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(value)
						end
						local a
						if min > 0 then
							a = ((Element.value.Slider - min)) / (max-min)
						else
							a = (Element.value.Slider-min)/(max-min)
						end
						Value.Text = Element.value.Slider
						Frame.Size = UDim2.new(a,0,1,0)
						values[tabname][sectorname][tabtext][text] = Element.value
						local uis = game:GetService("UserInputService")
						local mouse = game.Players.LocalPlayer:GetMouse()
						local val
						Button.MouseButton1Down:Connect(function()
							Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
							val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0
							Value.Text = val
							Element.value.Slider = val
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
							moveconnection = mouse.Move:Connect(function()
								Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
								val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
								Value.Text = val
								Element.value.Slider = val
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end)
							releaseconnection = uis.InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
									val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
									values[tabname][sectorname][tabtext][text] = Element.value
									callback(Element.value)
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
					elseif type == "Button" then
	
						tabsize = tabsize + UDim2.new(0,0,0,24)
						local Button = Instance.new("Frame")
						local Button_2 = Instance.new("TextButton")
						local TextLabel = Instance.new("TextLabel")
	
						Button.Name = "Button"
						Button.Parent = tab1
						Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Position = UDim2.new(0, 0, 0.236059487, 0)
						Button.Size = UDim2.new(1, 0, 0, 24)
	
						Button_2.Name = "Button"
						Button_2.Parent = Button
						Button_2.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Button_2.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Button_2.Position = UDim2.new(0, 30, 0.5, -9)
						Button_2.Size = UDim2.new(0, 175, 0, 18)
						Button_2.AutoButtonColor = false
						Button_2.Font = Enum.Font.SourceSans
						Button_2.Text = ""
						Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button_2.TextSize = 14.000
	
						TextLabel.Parent = Button_2
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 14.000
	
						function Element:SetValue()
						end
	
						Button_2.MouseButton1Down:Connect(function()
							TextLabel.TextColor3 = Color3.fromRGB(175, 42, 86)
							library:Tween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
							callback()
						end)
						Button_2.MouseEnter:Connect(function()
							library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
						end)
						Button_2.MouseLeave:Connect(function()
							library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
						end)
					end
					ConfigLoad:Connect(function(cfg)
						local fix = library:ConfigFix(cfg)
						if fix[tabname][sectorname][tabtext][text] ~= nil then
							Element:SetValue(fix[tabname][sectorname][tabtext][text])
						end
					end)
	
					return Element
				end
	

				if firs then
					coroutine.wrap(function()
						game:GetService("RunService").RenderStepped:Wait()
						Section.Size = tabsize
					end)()
					selected = text
					TextButton.TextColor3 = Color3.fromRGB(255,255,255)
					tab1.Visible = true
					firs = false
				end
				
				return tab
			end

			return MSector
		end
		function Tab:Sector(text, side)
			local sectorname = text
			local Sector = {}
			values[tabname][text] = {}
			local Section = Instance.new("Frame")
			local SectionText = Instance.new("TextLabel")
			local Inner = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")

			Section.Name = "Section"
			Section.Parent = TabGui[side]
			Section.BackgroundColor3 = Color3.fromRGB(27, 27, 35)
			Section.BorderColor3 = Color3.fromRGB(27, 27, 35)
			Section.BorderSizePixel = 0
			Section.Position = UDim2.new(0.00358422939, 0, 0, 0)
			Section.Size = UDim2.new(1, 0, 0, 22)

			SectionText.Name = "SectionText"
			SectionText.Parent = Section
			SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionText.BackgroundTransparency = 1.000
			SectionText.Position = UDim2.new(0, 7, 0, -12)
			SectionText.Size = UDim2.new(0, 270, 0, 19)
			SectionText.ZIndex = 2
			SectionText.Font = Enum.Font.SourceSansSemibold
			SectionText.Text = text
			SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
			SectionText.TextSize = 15.000
			SectionText.TextXAlignment = Enum.TextXAlignment.Left

			Inner.Name = "Inner"
			Inner.Parent = Section
			Inner.BackgroundColor3 = Color3.fromRGB(30, 30, 39)
			Inner.BorderColor3 = Color3.fromRGB(27, 27, 35)
			Inner.BorderSizePixel = 0
			Inner.Position = UDim2.new(0, 1, 0, 1)
			Inner.Size = UDim2.new(1, -2, 1, -2)

			local UIPadding = Instance.new("UIPadding")
-- what are u doing here
			UIPadding.Parent = Inner
			UIPadding.PaddingTop = UDim.new(0, 10)

			UIListLayout.Parent = Inner
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0,1)

			function Sector:Element(type, text, data, callback)
				local Element = {}
				data = data or {}
				callback = callback or function() end
				values[tabname][sectorname][text] = {}
				if type == "ScrollDrop" then
					Section.Size = Section.Size + UDim2.new(0,0,0,39)
					Element.value = {Scroll = {}, Dropdown = ""}

					for i,v in pairs(data.options) do
						Element.value.Scroll[i] = v[1]
					end

					local joe = {}
					if data.alphabet then
						local copy = {}
						for i,v in pairs(data.options) do
							table.insert(copy, i)
						end
						table.sort(copy, function(a,b)
							return a < b
						end)
						joe = copy
					else
						for i,v in pairs(data.options) do
							table.insert(joe, i)
						end
					end

					local Dropdown = Instance.new("Frame")
					local Button = Instance.new("TextButton")
					local TextLabel = Instance.new("TextLabel")
					local Drop = Instance.new("ScrollingFrame")
					local Button_2 = Instance.new("TextButton")
					local TextLabel_2 = Instance.new("TextLabel")
					local UIListLayout = Instance.new("UIListLayout")
					local ImageLabel = Instance.new("ImageLabel")
					local TextLabel_3 = Instance.new("TextLabel")

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = Inner
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.Position = UDim2.new(0, 0, 0, 0)
					Dropdown.Size = UDim2.new(1, 0, 0, 39)

					Button.Name = "Button"
					Button.Parent = Dropdown
					Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Button.Position = UDim2.new(0, 30, 0, 16)
					Button.Size = UDim2.new(0, 175, 0, 17)
					Button.AutoButtonColor = false
					Button.Font = Enum.Font.SourceSans
					Button.Text = ""
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)
					Button.TextSize = 14.000

					local TextLabel = Instance.new("TextLabel")

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
					TextLabel.Position = UDim2.new(0, 5, 0, 0)
					TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = "lol"
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local abcd = TextLabel

					Drop.Name = "Drop"
					Drop.Parent = Button
					Drop.Active = true
					Drop.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Drop.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Drop.Position = UDim2.new(0, 0, 1, 1)
					Drop.Size = UDim2.new(1, 0, 0, 20)
					Drop.Visible = false
					Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.CanvasSize = UDim2.new(0, 0, 0, 0)
					Drop.ScrollBarThickness = 4
					Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.AutomaticCanvasSize = "Y"
					Drop.ZIndex = 5
					Drop.ScrollBarImageColor3 = Color3.fromRGB(255, 37, 110)

					UIListLayout.Parent = Drop
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder


					local amount = data.Amount or 6
					Section.Size = Section.Size + UDim2.new(0,0,0,amount * 16 + 8)

					local num = #joe
					if num > 5 then
						Drop.Size = UDim2.new(1, 0, 0, 85)
					else
						Drop.Size = UDim2.new(1, 0, 0, 17*num)
					end
					local first = true
					for i,v in ipairs(joe) do
						do
							local joell = v
							local Scroll = Instance.new("Frame")
							local joe2 = data.options[v]
							local Button = Instance.new("TextButton")
							local TextLabel = Instance.new("TextLabel")

							Button.Name = v
							Button.Parent = Drop
							Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
							Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
							Button.Position = UDim2.new(0, 30, 0, 16)
							Button.Size = UDim2.new(0, 175, 0, 17)
							Button.AutoButtonColor = false
							Button.Font = Enum.Font.SourceSans
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 14.000
							Button.BorderSizePixel = 0
							Button.ZIndex = 6

							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
							TextLabel.Position = UDim2.new(0, 5, 0, -1)
							TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
							TextLabel.Font = Enum.Font.SourceSansSemibold
							TextLabel.Text = v
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 14.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
							TextLabel.ZIndex = 6

							Button.MouseButton1Down:Connect(function()
								Drop.Visible = false
								Drop.CanvasPosition = Vector2.new(0,0)
								abcd.Text = v
								for i,v in pairs(Scroll.Parent:GetChildren()) do
									if v:IsA("Frame") then
										v.Visible = false
									end
								end
								Element.value.Dropdown = v
								Scroll.Visible = true
								callback(Element.value)
							end)
							Button.MouseEnter:Connect(function()
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(255, 255, 255)})
							end)
							Button.MouseLeave:Connect(function()
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(200, 200, 200)})
							end)

							if first then
								abcd.Text = v
								Element.value.Dropdown = v
							end
							local Frame = Instance.new("ScrollingFrame")
							local UIListLayout = Instance.new("UIListLayout")

							Scroll.Name = "Scroll"
							Scroll.Parent = Dropdown
							Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Scroll.BackgroundTransparency = 1.000
							Scroll.Position = UDim2.new(0, 0, 0, 0)
							Scroll.Size = UDim2.new(1, 0, 0, amount * 16 + 8)
							Scroll.Visible = first
							Scroll.Name = v


							Frame.Name = "Frame"
							Frame.Parent = Scroll
							Frame.Active = true
							Frame.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
							Frame.BorderColor3 = Color3.fromRGB(27, 27, 35)
							Frame.Position = UDim2.new(0, 30, 0, 40)
							Frame.Size = UDim2.new(0, 175, 0, 16 * amount)
							Frame.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
							Frame.CanvasSize = UDim2.new(0, 0, 0, 0)
							Frame.MidImage = "http://www.roblox.com/asset/?id=6724808282"
							Frame.ScrollBarThickness = 4
							Frame.TopImage = "http://www.roblox.com/asset/?id=6724808282"
							Frame.AutomaticCanvasSize = "Y"
							Frame.ScrollBarImageColor3 = Color3.fromRGB(255, 37, 110)

							UIListLayout.Parent = Frame
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
							local joll = true
							for i,v in ipairs(joe2) do
								local Button = Instance.new("TextButton")
								local TextLabel = Instance.new("TextLabel")

								Button.Name = v
								Button.Parent = Frame
								Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
								Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
								Button.BorderSizePixel = 0
								Button.Position = UDim2.new(0, 30, 0, 16)
								Button.Size = UDim2.new(1, 0, 0, 16)
								Button.AutoButtonColor = false
								Button.Font = Enum.Font.SourceSans
								Button.Text = ""
								Button.TextColor3 = Color3.fromRGB(0, 0, 0)
								Button.TextSize = 14.000

								TextLabel.Parent = Button
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel.BackgroundTransparency = 1.000
								TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
								TextLabel.Position = UDim2.new(0, 4, 0, -1)
								TextLabel.Size = UDim2.new(1, 1, 1, 1)
								TextLabel.Font = Enum.Font.SourceSansSemibold
								TextLabel.Text = v
								TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
								TextLabel.TextSize = 14.000
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left
								if joll then
									joll = false
									TextLabel.TextColor3 = Color3.fromRGB(255, 37, 110)
								end

								Button.MouseButton1Down:Connect(function()

									for i,v in pairs(Frame:GetChildren()) do
										if v:IsA("TextButton") then
											library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
										end
									end

									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 37, 110)})

									Element.value.Scroll[joell] = v

									values[tabname][sectorname][text] = Element.value
									callback(Element.value)
								end)
								Button.MouseEnter:Connect(function()
									if Element.value.Scroll[joell] ~= v then
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
									end
								end)
								Button.MouseLeave:Connect(function()
									if Element.value.Scroll[joell] ~= v then
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
									end
								end)
							end
							first = false
						end
					end

					ImageLabel.Parent = Button
					ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ImageLabel.BackgroundTransparency = 1.000
					ImageLabel.Position = UDim2.new(0, 165, 0, 6)
					ImageLabel.Size = UDim2.new(0, 6, 0, 4)
					ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"

					TextLabel_3.Parent = Dropdown
					TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_3.BackgroundTransparency = 1.000
					TextLabel_3.Position = UDim2.new(0, 32, 0, -1)
					TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)
					TextLabel_3.Font = Enum.Font.SourceSansSemibold
					TextLabel_3.Text = text
					TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel_3.TextSize = 14.000
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

					Button.MouseButton1Down:Connect(function()
						Drop.Visible = not Drop.Visible
						if not Drop.Visible then
							Drop.CanvasPosition = Vector2.new(0,0)
						end
					end)
					local indrop = false
					local ind = false
					Drop.MouseEnter:Connect(function()
						indrop = true
					end)
					Drop.MouseLeave:Connect(function()
						indrop = false
					end)
					Button.MouseEnter:Connect(function()
						ind = true
					end)
					Button.MouseLeave:Connect(function()
						ind = false
					end)
					game:GetService("UserInputService").InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
							if Drop.Visible == true and not indrop and not ind then
								Drop.Visible = false
								Drop.CanvasPosition = Vector2.new(0,0)
							end
						end
					end)

					function Element:SetValue(tbl)
						Element.value = tbl
						abcd.Text = tbl.Dropdown
						values[tabname][sectorname][text] = Element.value
						for i,v in pairs(Dropdown:GetChildren()) do
							if v:IsA("Frame") then
								if v.Name == Element.value.Dropdown then
									v.Visible = true
								else
									v.Visible = false
								end
								for _,bad in pairs(v.Frame:GetChildren()) do
									if bad:IsA("TextButton") then
										bad.TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
										if bad.Name == Element.value.Scroll[v.Name] then
											bad.TextLabel.TextColor3 = Color3.fromRGB(255, 37, 110)
										end
									end
								end
							end
						end
					end

					if data.default then
						Element:SetValue(data.default)
					end

					values[tabname][sectorname][text] = Element.value

				elseif type == "Scroll" then
					local amount = data.Amount or 6
					Section.Size = Section.Size + UDim2.new(0,0,0,amount * 16 + 8)
					if data.alphabet then
						table.sort(data.options, function(a,b)
							return a < b
						end)
					end
					Element.value = {Scroll = data.default and data.default.Scroll or data.options[1]}

					local Scroll = Instance.new("Frame")
					local Frame = Instance.new("ScrollingFrame")
					local UIListLayout = Instance.new("UIListLayout")

					Scroll.Name = "Scroll"
					Scroll.Parent = Inner
					Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Scroll.BackgroundTransparency = 1.000
					Scroll.Position = UDim2.new(0, 0, 00, 0)
					Scroll.Size = UDim2.new(1, 0, 0, amount * 16 + 8)


					Frame.Name = "Frame"
					Frame.Parent = Scroll
					Frame.Active = true
					Frame.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Frame.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Frame.Position = UDim2.new(0, 30, 0, 0)
					Frame.Size = UDim2.new(0, 175, 0, 16 * amount)
					Frame.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
					Frame.CanvasSize = UDim2.new(0, 0, 0, 0)
					Frame.MidImage = "http://www.roblox.com/asset/?id=6724808282"
					Frame.ScrollBarThickness = 4
					Frame.TopImage = "http://www.roblox.com/asset/?id=6724808282"
					Frame.AutomaticCanvasSize = "Y"
					Frame.ScrollBarImageColor3 = Color3.fromRGB(255, 37, 110)

					UIListLayout.Parent = Frame
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					local first = true
					for i,v in ipairs(data.options) do
						local Button = Instance.new("TextButton")
						local TextLabel = Instance.new("TextLabel")

						Button.Name = v
						Button.Parent = Frame
						Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Button.BorderSizePixel = 0
						Button.Position = UDim2.new(0, 30, 0, 16)
						Button.Size = UDim2.new(1, 0, 0, 16)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.SourceSans
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 14.000

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
						TextLabel.Position = UDim2.new(0, 4, 0, -1)
						TextLabel.Size = UDim2.new(1, 1, 1, 1)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = v
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left
						if first then first = false
							TextLabel.TextColor3 = Color3.fromRGB(255, 37, 110)
						end

						Button.MouseButton1Down:Connect(function()

							for i,v in pairs(Frame:GetChildren()) do
								if v:IsA("TextButton") then
									library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
								end
							end

							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 37, 110)})

							Element.value.Scroll = v

							values[tabname][sectorname][text] = Element.value
							callback(Element.value)
						end)
						Button.MouseEnter:Connect(function()
							if Element.value.Scroll ~= v then
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
							end
						end)
						Button.MouseLeave:Connect(function()
							if Element.value.Scroll ~= v then
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
							end
						end)
					end

					function Element:SetValue(val)
						Element.value = val

						for i,v in pairs(Frame:GetChildren()) do
							if v:IsA("TextButton") then
								library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
							end
						end

						library:Tween(Frame[Element.value.Scroll].TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 37, 110)})
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end
					values[tabname][sectorname][text] = Element.value
				elseif type == "Jumbobox" then
					Section.Size = Section.Size + UDim2.new(0,0,0,39)
					Element.value = {Jumbobox = {}}
					data.options = data.options or {}

					local Dropdown = Instance.new("Frame")
					local Button = Instance.new("TextButton")
					local TextLabel = Instance.new("TextLabel")
					local Drop = Instance.new("ScrollingFrame")
					local Button_2 = Instance.new("TextButton")
					local TextLabel_2 = Instance.new("TextLabel")
					local UIListLayout = Instance.new("UIListLayout")
					local ImageLabel = Instance.new("ImageLabel")
					local TextLabel_3 = Instance.new("TextLabel")

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = Inner
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)
					Dropdown.Size = UDim2.new(1, 0, 0, 39)

					Button.Name = "Button"
					Button.Parent = Dropdown
					Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Button.Position = UDim2.new(0, 30, 0, 16)
					Button.Size = UDim2.new(0, 175, 0, 17)
					Button.AutoButtonColor = false
					Button.Font = Enum.Font.SourceSans
					Button.Text = ""
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)
					Button.TextSize = 14.000

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
					TextLabel.Position = UDim2.new(0, 5, 0, 0)
					TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = "..."
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local abcd = TextLabel

					Drop.Name = "Drop"
					Drop.Parent = Button
					Drop.Active = true
					Drop.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Drop.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Drop.Position = UDim2.new(0, 0, 1, 1)
					Drop.Size = UDim2.new(1, 0, 0, 20)
					Drop.Visible = false
					Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.CanvasSize = UDim2.new(0, 0, 0, 0)
					Drop.ScrollBarThickness = 4
					Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.AutomaticCanvasSize = "Y"
					Drop.ZIndex = 5
					Drop.ScrollBarImageColor3 = Color3.fromRGB(255, 37, 110)

					UIListLayout.Parent = Drop
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

					values[tabname][sectorname][text] = Element.value

					local num = #data.options
					if num > 5 then
						Drop.Size = UDim2.new(1, 0, 0, 85)
					else
						Drop.Size = UDim2.new(1, 0, 0, 17*num)
					end
					local first = true

					local function updatetext()
						local old = {}
						for i,v in ipairs(data.options) do
							if table.find(Element.value.Jumbobox, v) then
								table.insert(old, v)
							else
							end
						end
						local str = ""


						if #old == 0 then
							str = "..."
						else
							if #old == 1 then
								str = old[1]
							else
								for i,v in ipairs(old) do
									if i == 1 then
										str = v
									else
										if i > 2 then
											if i < 4 then
												str = str..",  ..."
											end
										else
											str = str..",  "..v
										end
									end
								end
							end
						end

						abcd.Text = str
					end
					for i,v in ipairs(data.options) do
						do
							local Button = Instance.new("TextButton")
							local TextLabel = Instance.new("TextLabel")

							Button.Name = v
							Button.Parent = Drop
							Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
							Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
							Button.Position = UDim2.new(0, 30, 0, 16)
							Button.Size = UDim2.new(0, 175, 0, 17)
							Button.AutoButtonColor = false
							Button.Font = Enum.Font.SourceSans
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 14.000
							Button.BorderSizePixel = 0
							Button.ZIndex = 6

							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
							TextLabel.Position = UDim2.new(0, 5, 0, -1)
							TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
							TextLabel.Font = Enum.Font.SourceSansSemibold
							TextLabel.Text = v
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 14.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
							TextLabel.ZIndex = 6

							Button.MouseButton1Down:Connect(function()
								if table.find(Element.value.Jumbobox, v) then
									for i,a in pairs(Element.value.Jumbobox) do
										if a == v then
											table.remove(Element.value.Jumbobox, i)
										end
									end
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
								else
									table.insert(Element.value.Jumbobox, v)
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(175, 42, 86)})
								end
								updatetext()

								values[tabname][sectorname][text] = Element.value
								callback(Element.value)
							end)
							Button.MouseEnter:Connect(function()
								if not table.find(Element.value.Jumbobox, v) then
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
								end
							end)
							Button.MouseLeave:Connect(function()
								if not table.find(Element.value.Jumbobox, v) then
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
								end
							end)

							first = false
						end
					end
					function Element:SetValue(val)
						Element.value = val
						for i,v in pairs(Drop:GetChildren()) do
							if v.Name ~= "UIListLayout" then
								if table.find(val.Jumbobox, v.Name) then
									v.TextLabel.TextColor3 = Color3.fromRGB(175, 42, 86)
								else
									v.TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
								end
							end
						end
						updatetext()
						values[tabname][sectorname][text] = Element.value
						callback(val)
					end
					if data.default then
						Element:SetValue(data.default)
					end

					ImageLabel.Parent = Button
					ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ImageLabel.BackgroundTransparency = 1.000
					ImageLabel.Position = UDim2.new(0, 165, 0, 6)
					ImageLabel.Size = UDim2.new(0, 6, 0, 4)
					ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"

					TextLabel_3.Parent = Dropdown
					TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_3.BackgroundTransparency = 1.000
					TextLabel_3.Position = UDim2.new(0, 32, 0, -1)
					TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)
					TextLabel_3.Font = Enum.Font.SourceSansSemibold
					TextLabel_3.Text = text
					TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel_3.TextSize = 14.000
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

					Button.MouseButton1Down:Connect(function()
						Drop.Visible = not Drop.Visible
						if not Drop.Visible then
							Drop.CanvasPosition = Vector2.new(0,0)
						end
					end)
					local indrop = false
					local ind = false
					Drop.MouseEnter:Connect(function()
						indrop = true
					end)
					Drop.MouseLeave:Connect(function()
						indrop = false
					end)
					Button.MouseEnter:Connect(function()
						ind = true
					end)
					Button.MouseLeave:Connect(function()
						ind = false
					end)
					game:GetService("UserInputService").InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
							if Drop.Visible == true and not indrop and not ind then
								Drop.Visible = false
								Drop.CanvasPosition = Vector2.new(0,0)
							end
						end
					end)
				elseif type == "ToggleKeybind" then
					Section.Size = Section.Size + UDim2.new(0,0,0,16)
					Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = "Always", Active = true}

					local Toggle = Instance.new("Frame")
					local Button = Instance.new("TextButton")
					local Color = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")

					Toggle.Name = "Toggle"
					Toggle.Parent = Inner
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDim2.new(1, 0, 0, 15)

					Button.Name = "Button"
					Button.Parent = Toggle
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Size = UDim2.new(1, 0, 1, 0)
					Button.Font = Enum.Font.SourceSans
					Button.Text = ""
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)
					Button.TextSize = 14.000

					Color.Name = "Color"
					Color.Parent = Button
					Color.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Color.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Color.Position = UDim2.new(0, 15, 0.5, -5)
					Color.Size = UDim2.new(0, 8, 0, 8)
					local binding = false
					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDim2.new(0, 32, 0, -1)
					TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local function update()
						if Element.value.Toggle then
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(155, 22, 66)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
						else
							keybindremove(text)
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(33, 35, 47)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
						end
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end

					Button.MouseButton1Down:Connect(function()
						if not binding then
							Element.value.Toggle = not Element.value.Toggle
							update()
							values[tabname][sectorname][text] = Element.value
							callback(Element.value)
						end
					end)
					if data.default then
						update()
					end
					values[tabname][sectorname][text] = Element.value
					do
						local Keybind = Instance.new("TextButton")
						local Frame = Instance.new("Frame")
						local Always = Instance.new("TextButton")
						local UIListLayout = Instance.new("UIListLayout")
						local Hold = Instance.new("TextButton")
						local Toggle = Instance.new("TextButton")

						Keybind.Name = "Keybind"
						Keybind.Parent = Button
						Keybind.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Keybind.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Keybind.Position = UDim2.new(0, 270, 0.5, -6)
						Keybind.Text = "NONE"
						Keybind.Size = UDim2.new(0, 43, 0, 12)
						Keybind.Size = UDim2.new(0,txt:GetTextSize("NONE", 14, Enum.Font.SourceSansSemibold, Vector2.new(700, 12)).X + 5,0, 12)
						Keybind.AutoButtonColor = false
						Keybind.Font = Enum.Font.SourceSansSemibold
						Keybind.TextColor3 = Color3.fromRGB(200, 200, 200)
						Keybind.TextSize = 14.000
						Keybind.AnchorPoint = Vector2.new(1,0)
						Keybind.ZIndex = 2

						Frame.Parent = Keybind
						Frame.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Frame.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Frame.Position = UDim2.new(1, -49, 0, 1)
						Frame.Size = UDim2.new(0, 49, 0, 49)
						Frame.Visible = false
						Frame.ZIndex = 2

						Always.Name = "Always"
						Always.Parent = Frame
						Always.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Always.BackgroundTransparency = 1.000
						Always.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Always.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
						Always.Size = UDim2.new(1, 0, 0, 16)
						Always.AutoButtonColor = false
						Always.Font = Enum.Font.SourceSansBold
						Always.Text = "Always"
						Always.TextColor3 = Color3.fromRGB(173, 24, 74)
						Always.TextSize = 14.000
						Always.ZIndex = 2

						UIListLayout.Parent = Frame
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

						Hold.Name = "Hold"
						Hold.Parent = Frame
						Hold.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Hold.BackgroundTransparency = 1.000
						Hold.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Hold.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
						Hold.Size = UDim2.new(1, 0, 0, 16)
						Hold.AutoButtonColor = false
						Hold.Font = Enum.Font.SourceSansSemibold
						Hold.Text = "Hold"
						Hold.TextColor3 = Color3.fromRGB(200, 200, 200)
						Hold.TextSize = 14.000
						Hold.ZIndex = 2

						Toggle.Name = "Toggle"
						Toggle.Parent = Frame
						Toggle.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
						Toggle.BackgroundTransparency = 1.000
						Toggle.BorderColor3 = Color3.fromRGB(27, 27, 35)
						Toggle.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
						Toggle.Size = UDim2.new(1, 0, 0, 16)
						Toggle.AutoButtonColor = false
						Toggle.Font = Enum.Font.SourceSansSemibold
						Toggle.Text = "Toggle"
						Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
						Toggle.TextSize = 14.000
						Toggle.ZIndex = 2

						for _,button in pairs(Frame:GetChildren()) do
							if button:IsA("TextButton") then
								button.MouseButton1Down:Connect(function()
									Element.value.Type = button.Text
									Frame.Visible = false
									if Element.value.Active ~= (Element.value.Type == "Always" and true or false) then
										Element.value.Active = Element.value.Type == "Always" and true or false
										callback(Element.value)
									end
									if button.Text == "Always" then
										keybindremove(text)
									end
									for _,button in pairs(Frame:GetChildren()) do
										if button:IsA("TextButton") and button.Text ~= Element.value.Type then
											button.Font = Enum.Font.SourceSansSemibold
											library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200,200,200)})
										end
									end
									button.Font = Enum.Font.SourceSansBold
									button.TextColor3 = Color3.fromRGB(173, 24, 74)
									values[tabname][sectorname][text] = Element.value
								end)
								button.MouseEnter:Connect(function()
									if Element.value.Type ~= button.Text then
										library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255,255,255)})
									end
								end)
								button.MouseLeave:Connect(function()
									if Element.value.Type ~= button.Text then
										library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200,200,200)})
									end
								end)
							end
						end
						Keybind.MouseButton1Down:Connect(function()
							if not binding then
								wait()
								binding = true
								Keybind.Text = "..."
								Keybind.Size = UDim2.new(0,txt:GetTextSize("...", 14, Enum.Font.SourceSansSemibold, Vector2.new(700, 12)).X + 4,0, 12)
							end
						end)
						Keybind.MouseButton2Down:Connect(function()
							if not binding then
								Frame.Visible = not Frame.Visible
							end
						end)
						local Player = game.Players.LocalPlayer
						local Mouse = Player:GetMouse()
						local InFrame = false
						Frame.MouseEnter:Connect(function()
							InFrame = true
						end)
						Frame.MouseLeave:Connect(function()
							InFrame = false
						end)
						local InFrame2 = false
						Keybind.MouseEnter:Connect(function()
							InFrame2 = true
						end)
						Keybind.MouseLeave:Connect(function()
							InFrame2 = false
						end)
						game:GetService("UserInputService").InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 and not binding then
								if Frame.Visible == true and not InFrame and not InFrame2 then
									Frame.Visible = false
								end
							end
							if binding then
								binding = false
								Keybind.Text = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name:upper() or input.UserInputType.Name:upper()
								Keybind.Size = UDim2.new(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vector2.new(700, 12)).X + 5,0, 12)
								Element.value.Key = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name or input.UserInputType.Name
								if input.KeyCode.Name == "Backspace" then
									Keybind.Text = "NONE"
									Keybind.Size = UDim2.new(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vector2.new(700, 12)).X + 4,0, 12)
									Element.value.Key = nil
									Element.value.Active = true
								end
								callback(Element.value)
							else
								if Element.value.Key ~= nil then
									if string.find(Element.value.Key, "Mouse") then
										if input.UserInputType == Enum.UserInputType[Element.value.Key] then
											if Element.value.Type == "Hold" then
												Element.value.Active = true
												callback(Element.value)
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											elseif Element.value.Type == "Toggle" then
												Element.value.Active = not Element.value.Active
												callback(Element.value)
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											end
										end
									else
										if input.KeyCode == Enum.KeyCode[Element.value.Key] then
											if Element.value.Type == "Hold" then
												Element.value.Active = true
												callback(Element.value)
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											elseif Element.value.Type == "Toggle" then
												Element.value.Active = not Element.value.Active
												callback(Element.value)
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											end
										end
									end
								else
									Element.value.Active = true
								end
							end
							values[tabname][sectorname][text] = Element.value
						end)
						game:GetService("UserInputService").InputEnded:Connect(function(input)
							if Element.value.Key ~= nil then
								if string.find(Element.value.Key, "Mouse") then
									if input.UserInputType == Enum.UserInputType[Element.value.Key] then
										if Element.value.Type == "Hold" then
											Element.value.Active = false
											callback(Element.value)
											if Element.value.Active then
												keybindadd(text)
											else
												keybindremove(text)
											end
										end
									end
								else
									if input.KeyCode == Enum.KeyCode[Element.value.Key] then
										if Element.value.Type == "Hold" then
											Element.value.Active = false
											callback(Element.value)
											if Element.value.Active then
												keybindadd(text)
											else
												keybindremove(text)
											end
										end
									end
								end
							end
							values[tabname][sectorname][text] = Element.value
						end)
					end
					function Element:SetValue(value)
						Element.value = value
						update()
					end
				elseif type == "Toggle" then
					Section.Size = Section.Size + UDim2.new(0,0,0,16)
					Element.value = {Toggle = data.default and data.default.Toggle or false}

					local Toggle = Instance.new("Frame")
					local Button = Instance.new("TextButton")
					local Color = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")

					Toggle.Name = "Toggle"
					Toggle.Parent = Inner
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDim2.new(1, 0, 0, 15)

					Button.Name = "Button"
					Button.Parent = Toggle
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Size = UDim2.new(1, 0, 1, 0)
					Button.Font = Enum.Font.SourceSans
					Button.Text = ""
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)
					Button.TextSize = 14.000

					Color.Name = "Color"
					Color.Parent = Button
					Color.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Color.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Color.Position = UDim2.new(0, 15, 0.5, -5)
					Color.Size = UDim2.new(0, 8, 0, 8)

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDim2.new(0, 32, 0, -1)
					TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local function update()
						if Element.value.Toggle then
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(155, 22, 66)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
						else
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(33, 35, 47)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
						end
						values[tabname][sectorname][text] = Element.value
					end

					Button.MouseButton1Down:Connect(function()
						Element.value.Toggle = not Element.value.Toggle
						update()
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end)
					if data.default then
						update()
					end
					values[tabname][sectorname][text] = Element.value
					function Element:SetValue(value)
						Element.value = value
						values[tabname][sectorname][text] = Element.value
						update()
						callback(Element.value)
					end
				elseif type == "ToggleColor" then
					Section.Size = Section.Size + UDim2.new(0,0,0,16)
					Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or Color3.fromRGB(255,255,255)}

					local Toggle = Instance.new("Frame")
					local Button = Instance.new("TextButton")
					local Color = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")

					Toggle.Name = "Toggle"
					Toggle.Parent = Inner
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDim2.new(1, 0, 0, 15)

					Button.Name = "Button"
					Button.Parent = Toggle
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Size = UDim2.new(1, 0, 1, 0)
					Button.Font = Enum.Font.SourceSans
					Button.Text = ""
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)
					Button.TextSize = 14.000

					Color.Name = "Color"
					Color.Parent = Button
					Color.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Color.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Color.Position = UDim2.new(0, 15, 0.5, -5)
					Color.Size = UDim2.new(0, 8, 0, 8)

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDim2.new(0, 32, 0, -1)
					TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local function update()
						if Element.value.Toggle then
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(155, 22, 66)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
						else
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(33, 35, 47)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
						end
						values[tabname][sectorname][text] = Element.value
					end

					local ColorH,ColorS,ColorV

					local ColorP = Instance.new("TextButton")
					local Frame = Instance.new("Frame")
					local Colorpick = Instance.new("ImageButton")
					local ColorDrag = Instance.new("Frame")
					local Huepick = Instance.new("ImageButton")
					local Huedrag = Instance.new("Frame")

					ColorP.Name = "ColorP"
					ColorP.Parent = Button
					ColorP.AnchorPoint = Vector2.new(1, 0)
					ColorP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					ColorP.BorderColor3 = Color3.fromRGB(27, 27, 35)
					ColorP.Position = UDim2.new(0, 270, 0.5, -4)
					ColorP.Size = UDim2.new(0, 18, 0, 8)
					ColorP.AutoButtonColor = false
					ColorP.Font = Enum.Font.SourceSansSemibold
					ColorP.Text = ""
					ColorP.TextColor3 = Color3.fromRGB(200, 200, 200)
					ColorP.TextSize = 14.000

					Frame.Parent = ColorP
					Frame.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Frame.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Frame.Position = UDim2.new(-0.666666687, -170, 1.375, 0)
					Frame.Size = UDim2.new(0, 200, 0, 170)
					Frame.Visible = false
					Frame.ZIndex = 3

					Colorpick.Name = "Colorpick"
					Colorpick.Parent = Frame
					Colorpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Colorpick.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Colorpick.ClipsDescendants = false
					Colorpick.Position = UDim2.new(0, 40, 0, 10)
					Colorpick.Size = UDim2.new(0, 150, 0, 150)
					Colorpick.AutoButtonColor = false
					Colorpick.Image = "rbxassetid://4155801252"
					Colorpick.ImageColor3 = Color3.fromRGB(255, 0, 0)
					Colorpick.ZIndex = 3

					ColorDrag.Name = "ColorDrag"
					ColorDrag.Parent = Colorpick
					ColorDrag.AnchorPoint = Vector2.new(0.5, 0.5)
					ColorDrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ColorDrag.BorderColor3 = Color3.fromRGB(27, 27, 35)
					ColorDrag.Size = UDim2.new(0, 4, 0, 4)
					ColorDrag.ZIndex = 3

					Huepick.Name = "Huepick"
					Huepick.Parent = Frame
					Huepick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Huepick.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Huepick.ClipsDescendants = false
					Huepick.Position = UDim2.new(0, 10, 0, 10)
					Huepick.Size = UDim2.new(0, 20, 0, 150)
					Huepick.AutoButtonColor = false
					Huepick.Image = "rbxassetid://3641079629"
					Huepick.ImageColor3 = Color3.fromRGB(255, 0, 0)
					Huepick.ImageTransparency = 1
					Huepick.BackgroundTransparency = 0
					Huepick.ZIndex = 3

					local HueFrameGradient = Instance.new("UIGradient")
					HueFrameGradient.Rotation = 90
					HueFrameGradient.Name = "HueFrameGradient"
					HueFrameGradient.Parent = Huepick
					HueFrameGradient.Color = ColorSequence.new {
						ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
						ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),
						ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),
						ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)),
						ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),
						ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),
						ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
					}	

					Huedrag.Name = "Huedrag"
					Huedrag.Parent = Huepick
					Huedrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Huedrag.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Huedrag.Size = UDim2.new(1, 0, 0, 2)
					Huedrag.ZIndex = 3

					ColorP.MouseButton1Down:Connect(function()
						Frame.Visible = not Frame.Visible
					end)
					local abc = false
					local inCP = false
					ColorP.MouseEnter:Connect(function()
						abc = true
					end)
					ColorP.MouseLeave:Connect(function()
						abc = false
					end)
					Frame.MouseEnter:Connect(function()
						inCP = true
					end)
					Frame.MouseLeave:Connect(function()
						inCP = false
					end)

					ColorH = (math.clamp(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)
					ColorS = 1-(math.clamp(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
					ColorV = 1-(math.clamp(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)

					if data.default and data.default.Color ~= nil then
						ColorH, ColorS, ColorV = data.default.Color:ToHSV()

						ColorH = math.clamp(ColorH,0,1)
						ColorS = math.clamp(ColorS,0,1)
						ColorV = math.clamp(ColorV,0,1)
						ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)

						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
						Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)

						values[tabname][sectorname][text] = data.default.Color
					end

					local mouse = game:GetService("Players").LocalPlayer:GetMouse()
					game:GetService("UserInputService").InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
							if not dragging and not abc and not inCP then
								Frame.Visible = false
							end
						end
					end)

					local function updateColor()
						local ColorX = (math.clamp(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
						local ColorY = (math.clamp(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)
						ColorDrag.Position = UDim2.new(ColorX, 0, ColorY, 0)
						ColorS = 1-ColorX
						ColorV = 1-ColorY
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
						values[tabname][sectorname][text] = Element.value
						Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)
						callback(Element.value)
					end
					local function updateHue()
						local y = math.clamp(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)
						Huedrag.Position = UDim2.new(0, 0, 0, y)
						hue = y/148
						ColorH = 1-hue
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
						values[tabname][sectorname][text] = Element.value
						Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)
						callback(Element.value)
					end
					Colorpick.MouseButton1Down:Connect(function()
						updateColor()
						moveconnection = mouse.Move:Connect(function()
							updateColor()
						end)
						releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								updateColor()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)
					Huepick.MouseButton1Down:Connect(function()
						updateHue()
						moveconnection = mouse.Move:Connect(function()
							updateHue()
						end)
						releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								updateHue()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)

					Button.MouseButton1Down:Connect(function()
						Element.value.Toggle = not Element.value.Toggle
						update()
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end)
					if data.default then
						update()
					end
					values[tabname][sectorname][text] = Element.value
					function Element:SetValue(value)
						Element.value = value
						local duplicate = Color3.new(value.Color.R, value.Color.G, value.Color.B)
						ColorH, ColorS, ColorV = duplicate:ToHSV()
						ColorH = math.clamp(ColorH,0,1)
						ColorS = math.clamp(ColorS,0,1)
						ColorV = math.clamp(ColorV,0,1)

						ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
						update()
						Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)

						callback(value)
					end
				elseif type == "ToggleTrans" then
					Section.Size = Section.Size + UDim2.new(0,0,0,16)
					Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or Color3.fromRGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}

					local Toggle = Instance.new("Frame")
					local Button = Instance.new("TextButton")
					local Color = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")

					Toggle.Name = "Toggle"
					Toggle.Parent = Inner
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDim2.new(1, 0, 0, 15)

					Button.Name = "Button"
					Button.Parent = Toggle
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Size = UDim2.new(1, 0, 1, 0)
					Button.Font = Enum.Font.SourceSans
					Button.Text = ""
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)
					Button.TextSize = 14.000

					Color.Name = "Color"
					Color.Parent = Button
					Color.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Color.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Color.Position = UDim2.new(0, 15, 0.5, -5)
					Color.Size = UDim2.new(0, 8, 0, 8)

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDim2.new(0, 32, 0, -1)
					TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local function update()
						if Element.value.Toggle then
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(155, 22, 66)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
						else
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(33, 35, 47)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
						end
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end

					local ColorH,ColorS,ColorV

					local ColorP = Instance.new("TextButton")
					local Frame = Instance.new("Frame")
					local Colorpick = Instance.new("ImageButton")
					local ColorDrag = Instance.new("Frame")
					local Huepick = Instance.new("ImageButton")
					local Huedrag = Instance.new("Frame")

					ColorP.Name = "ColorP"
					ColorP.Parent = Button
					ColorP.AnchorPoint = Vector2.new(1, 0)
					ColorP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					ColorP.BorderColor3 = Color3.fromRGB(27, 27, 35)
					ColorP.Position = UDim2.new(0, 270, 0.5, -4)
					ColorP.Size = UDim2.new(0, 18, 0, 8)
					ColorP.AutoButtonColor = false
					ColorP.Font = Enum.Font.SourceSansSemibold
					ColorP.Text = ""
					ColorP.TextColor3 = Color3.fromRGB(200, 200, 200)
					ColorP.TextSize = 14.000

					Frame.Parent = ColorP
					Frame.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Frame.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Frame.Position = UDim2.new(-0.666666687, -170, 1.375, 0)
					Frame.Size = UDim2.new(0, 200, 0, 190)
					Frame.Visible = false
					Frame.ZIndex = 3

					Colorpick.Name = "Colorpick"
					Colorpick.Parent = Frame
					Colorpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Colorpick.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Colorpick.ClipsDescendants = false
					Colorpick.Position = UDim2.new(0, 40, 0, 10)
					Colorpick.Size = UDim2.new(0, 150, 0, 150)
					Colorpick.AutoButtonColor = false
					Colorpick.Image = "rbxassetid://4155801252"
					Colorpick.ImageColor3 = Color3.fromRGB(255, 0, 0)
					Colorpick.ZIndex = 3

					ColorDrag.Name = "ColorDrag"
					ColorDrag.Parent = Colorpick
					ColorDrag.AnchorPoint = Vector2.new(0.5, 0.5)
					ColorDrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ColorDrag.BorderColor3 = Color3.fromRGB(27, 27, 35)
					ColorDrag.Size = UDim2.new(0, 4, 0, 4)
					ColorDrag.ZIndex = 3

					Huepick.Name = "Huepick"
					Huepick.Parent = Frame
					Huepick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Huepick.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Huepick.ClipsDescendants = true
					Huepick.Position = UDim2.new(0, 10, 0, 10)
					Huepick.Size = UDim2.new(0, 20, 0, 150)
					Huepick.AutoButtonColor = false
					Huepick.Image = "rbxassetid://3641079629"
					Huepick.ImageColor3 = Color3.fromRGB(255, 0, 0)
					Huepick.ImageTransparency = 1
					Huepick.BackgroundTransparency = 0
					Huepick.ZIndex = 3

					local HueFrameGradient = Instance.new("UIGradient")
					HueFrameGradient.Rotation = 90
					HueFrameGradient.Name = "HueFrameGradient"
					HueFrameGradient.Parent = Huepick
					HueFrameGradient.Color = ColorSequence.new {
						ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
						ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),
						ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),
						ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)),
						ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),
						ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),
						ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
					}	

					Huedrag.Name = "Huedrag"
					Huedrag.Parent = Huepick
					Huedrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Huedrag.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Huedrag.Size = UDim2.new(1, 0, 0, 2)
					Huedrag.ZIndex = 3

					local Transpick = Instance.new("ImageButton")
					local Transcolor = Instance.new("ImageLabel")
					local Transdrag = Instance.new("Frame")

					Transpick.Name = "Transpick"
					Transpick.Parent = Frame
					Transpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Transpick.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Transpick.Position = UDim2.new(0, 10, 0, 167)
					Transpick.Size = UDim2.new(0, 180, 0, 15)
					Transpick.AutoButtonColor = false
					Transpick.Image = "rbxassetid://3887014957"
					Transpick.ScaleType = Enum.ScaleType.Tile
					Transpick.TileSize = UDim2.new(0, 10, 0, 10)
					Transpick.ZIndex = 3

					Transcolor.Name = "Transcolor"
					Transcolor.Parent = Transpick
					Transcolor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Transcolor.BackgroundTransparency = 1.000
					Transcolor.Size = UDim2.new(1, 0, 1, 0)
					Transcolor.Image = "rbxassetid://3887017050"
					Transcolor.ImageColor3 = Color3.fromRGB(255, 0, 4)
					Transcolor.ZIndex = 3

					Transdrag.Name = "Transdrag"
					Transdrag.Parent = Transcolor
					Transdrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Transdrag.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Transdrag.Position = UDim2.new(0, -1, 0, 0)
					Transdrag.Size = UDim2.new(0, 2, 1, 0)
					Transdrag.ZIndex = 3

					ColorP.MouseButton1Down:Connect(function()
						Frame.Visible = not Frame.Visible
					end)
					local abc = false
					local inCP = false
					ColorP.MouseEnter:Connect(function()
						abc = true
					end)
					ColorP.MouseLeave:Connect(function()
						abc = false
					end)
					Frame.MouseEnter:Connect(function()
						inCP = true
					end)
					Frame.MouseLeave:Connect(function()
						inCP = false
					end)

					ColorH = (math.clamp(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)
					ColorS = 1-(math.clamp(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
					ColorV = 1-(math.clamp(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)

					if data.default.Color ~= nil then
						ColorH, ColorS, ColorV = data.default.Color:ToHSV()

						ColorH = math.clamp(ColorH,0,1)
						ColorS = math.clamp(ColorS,0,1)
						ColorV = math.clamp(ColorV,0,1)
						ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)

						Transcolor.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)

						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
						Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)
					end
					if data.default.Transparency ~= nil then
						Transdrag.Position = UDim2.new(data.default.Transparency, -1, 0, 0)
					end
					local mouse = game:GetService("Players").LocalPlayer:GetMouse()
					game:GetService("UserInputService").InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
							if not dragging and not abc and not inCP then
								Frame.Visible = false
							end
						end
					end)

					local function updateColor()
						local ColorX = (math.clamp(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
						local ColorY = (math.clamp(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)
						ColorDrag.Position = UDim2.new(ColorX, 0, ColorY, 0)
						ColorS = 1-ColorX
						ColorV = 1-ColorY
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
						Transcolor.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
						values[tabname][sectorname][text] = Element.value
						Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)
						callback(Element.value)
					end
					local function updateHue()
						local y = math.clamp(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)
						Huedrag.Position = UDim2.new(0, 0, 0, y)
						hue = y/148
						ColorH = 1-hue
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
						Transcolor.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
						values[tabname][sectorname][text] = Element.value
						Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)
						callback(Element.value)
					end
					local function updateTrans()
						local x = math.clamp(mouse.X - Transpick.AbsolutePosition.X, 0, 178)
						Transdrag.Position = UDim2.new(0, x, 0, 0)
						Element.value.Transparency = (x/178)
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end
					Transpick.MouseButton1Down:Connect(function()
						updateTrans()
						moveconnection = mouse.Move:Connect(function()
							updateTrans()
						end)
						releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								updateTrans()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)
					Colorpick.MouseButton1Down:Connect(function()
						updateColor()
						moveconnection = mouse.Move:Connect(function()
							updateColor()
						end)
						releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								updateColor()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)
					Huepick.MouseButton1Down:Connect(function()
						updateHue()
						moveconnection = mouse.Move:Connect(function()
							updateHue()
						end)
						releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								updateHue()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)

					Button.MouseButton1Down:Connect(function()
						Element.value.Toggle = not Element.value.Toggle
						update()
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end)
					if data.default then
						update()
					end
					values[tabname][sectorname][text] = Element.value
					function Element:SetValue(value)
						Element.value = value
						local duplicate = Color3.new(value.Color.R, value.Color.G, value.Color.B)
						ColorH, ColorS, ColorV = duplicate:ToHSV()
						ColorH = math.clamp(ColorH,0,1)
						ColorS = math.clamp(ColorS,0,1)
						ColorV = math.clamp(ColorV,0,1)

						ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
						update()
						Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)
					end
				elseif type == "TextBox" then
					Section.Size = Section.Size + UDim2.new(0,0,0,30)
					Element.value = {Text = data.default and data.default.text or ""}

					local Box = Instance.new("Frame")
					local TextBox = Instance.new("TextBox")

					Box.Name = "Box"
					Box.Parent = Inner
					Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Box.BackgroundTransparency = 1.000
					Box.Position = UDim2.new(0, 0, 0.542059898, 0)
					Box.Size = UDim2.new(1, 0, 0, 30)

					TextBox.Parent = Box
					TextBox.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					TextBox.BorderColor3 = Color3.fromRGB(27, 27, 35)
					TextBox.Position = UDim2.new(0.108303241, 0, 0.224465579, 0)
					TextBox.Size = UDim2.new(0, 175, 0, 20)
					TextBox.Font = Enum.Font.SourceSans
					TextBox.PlaceholderText = data.placeholder
					TextBox.Text = Element.value.Text
					TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextBox.TextSize = 14.000

					values[tabname][sectorname][text] = Element.value

					TextBox:GetPropertyChangedSignal("Text"):Connect(function()
						if string.len(TextBox.Text) > 10 then
							TextBox.Text = string.sub(TextBox.Text, 1, 10)
						end
						Element.value.Text = TextBox.Text
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end)

					function Element:SetValue(value)
						Element.value = value
						values[tabname][sectorname][text] = Element.value
						TextBox.Text = Element.value.Text
					end

				elseif type == "Dropdown" then
					Section.Size = Section.Size + UDim2.new(0,0,0,39)
					Element.value = {Dropdown = data.options[1]}

					local Dropdown = Instance.new("Frame")
					local Button = Instance.new("TextButton")
					local TextLabel = Instance.new("TextLabel")
					local Drop = Instance.new("ScrollingFrame")
					local Button_2 = Instance.new("TextButton")
					local TextLabel_2 = Instance.new("TextLabel")
					local UIListLayout = Instance.new("UIListLayout")
					local ImageLabel = Instance.new("ImageLabel")
					local TextLabel_3 = Instance.new("TextLabel")

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = Inner
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)
					Dropdown.Size = UDim2.new(1, 0, 0, 39)

					Button.Name = "Button"
					Button.Parent = Dropdown
					Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Button.Position = UDim2.new(0, 30, 0, 16)
					Button.Size = UDim2.new(0, 175, 0, 17)
					Button.AutoButtonColor = false
					Button.Font = Enum.Font.SourceSans
					Button.Text = ""
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)
					Button.TextSize = 14.000

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
					TextLabel.Position = UDim2.new(0, 5, 0, 0)
					TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = Element.value.Dropdown
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local abcd = TextLabel

					Drop.Name = "Drop"
					Drop.Parent = Button
					Drop.Active = true
					Drop.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Drop.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Drop.Position = UDim2.new(0, 0, 1, 1)
					Drop.Size = UDim2.new(1, 0, 0, 20)
					Drop.Visible = false
					Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.CanvasSize = UDim2.new(0, 0, 0, 0)
					Drop.ScrollBarThickness = 4
					Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.AutomaticCanvasSize = "Y"
					Drop.ZIndex = 5
					Drop.ScrollBarImageColor3 = Color3.fromRGB(255, 37, 110)

					UIListLayout.Parent = Drop
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

					local num = #data.options
					if num > 5 then
						Drop.Size = UDim2.new(1, 0, 0, 85)
					else
						Drop.Size = UDim2.new(1, 0, 0, 17*num)
					end
					local first = true
					for i,v in ipairs(data.options) do
						do
							local Button = Instance.new("TextButton")
							local TextLabel = Instance.new("TextLabel")

							Button.Name = v
							Button.Parent = Drop
							Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
							Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
							Button.Position = UDim2.new(0, 30, 0, 16)
							Button.Size = UDim2.new(0, 175, 0, 17)
							Button.AutoButtonColor = false
							Button.Font = Enum.Font.SourceSans
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 14.000
							Button.BorderSizePixel = 0
							Button.ZIndex = 6

							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
							TextLabel.Position = UDim2.new(0, 5, 0, -1)
							TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
							TextLabel.Font = Enum.Font.SourceSansSemibold
							TextLabel.Text = v
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 14.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
							TextLabel.ZIndex = 6

							Button.MouseButton1Down:Connect(function()
								Drop.Visible = false
								Element.value.Dropdown = v
								abcd.Text = v
								values[tabname][sectorname][text] = Element.value
								callback(Element.value)
								Drop.CanvasPosition = Vector2.new(0,0)
							end)
							Button.MouseEnter:Connect(function()
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(255, 255, 255)})
							end)
							Button.MouseLeave:Connect(function()
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(200, 200, 200)})
							end)

							first = false
						end
					end

					function Element:SetValue(val)
						Element.value = val
						abcd.Text = val.Dropdown
						values[tabname][sectorname][text] = Element.value
						callback(val)
					end

					ImageLabel.Parent = Button
					ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ImageLabel.BackgroundTransparency = 1.000
					ImageLabel.Position = UDim2.new(0, 165, 0, 6)
					ImageLabel.Size = UDim2.new(0, 6, 0, 4)
					ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"

					TextLabel_3.Parent = Dropdown
					TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_3.BackgroundTransparency = 1.000
					TextLabel_3.Position = UDim2.new(0, 32, 0, -1)
					TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)
					TextLabel_3.Font = Enum.Font.SourceSansSemibold
					TextLabel_3.Text = text
					TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel_3.TextSize = 14.000
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

					Button.MouseButton1Down:Connect(function()
						Drop.Visible = not Drop.Visible
						if not Drop.Visible then
							Drop.CanvasPosition = Vector2.new(0,0)
						end
					end)
					local indrop = false
					local ind = false
					Drop.MouseEnter:Connect(function()
						indrop = true
					end)
					Drop.MouseLeave:Connect(function()
						indrop = false
					end)
					Button.MouseEnter:Connect(function()
						ind = true
					end)
					Button.MouseLeave:Connect(function()
						ind = false
					end)
					game:GetService("UserInputService").InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
							if Drop.Visible == true and not indrop and not ind then
								Drop.Visible = false
								Drop.CanvasPosition = Vector2.new(0,0)
							end
						end
					end)
					values[tabname][sectorname][text] = Element.value

				elseif type == "lmao" then  -- touch my pussy -- very pasted
					Section.Size = Section.Size + UDim2.new(0,0,0,39) 
					Element.value = {Dropdown = data.options[1]} 

					local Dropdown = Instance.new("Frame") 
					local Button = Instance.new("TextButton") 
					local TextLabel = Instance.new("TextLabel") 
					local Drop = Instance.new("ScrollingFrame") 
					local Button_2 = Instance.new("TextButton") 
					local TextLabel_2 = Instance.new("TextLabel") 
					local UIListLayout = Instance.new("UIListLayout") 
					local ImageLabel = Instance.new("ImageLabel") 
					local TextLabel_3 = Instance.new("TextLabel") 

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = Inner
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)
					Dropdown.Size = UDim2.new(1, 0, 0, 39)

					Button.Name = "Button"
					Button.Parent = Dropdown
					Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Button.Position = UDim2.new(0, 30, 0, 16)
					Button.Size = UDim2.new(0, 175, 0, 17)
					Button.AutoButtonColor = false
					Button.Font = Enum.Font.SourceSans
					Button.Text = ""
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)
					Button.TextSize = 14.000

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
					TextLabel.Position = UDim2.new(0, 5, 0, 0)
					TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = Element.value.Dropdown
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local abcd = TextLabel

					Drop.Name = "Drop"
					Drop.Parent = Button
					Drop.Active = true
					Drop.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Drop.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Drop.Position = UDim2.new(0, 0, 1, 1)
					Drop.Size = UDim2.new(1, 0, 0, 20)
					Drop.Visible = false
					Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.CanvasSize = UDim2.new(0, 0, 0, 0)
					Drop.ScrollBarThickness = 4
					Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
					Drop.AutomaticCanvasSize = "Y"
					Drop.ZIndex = 5
					Drop.ScrollBarImageColor3 = Color3.fromRGB(255, 37, 110)

					UIListLayout.Parent = Drop 
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 

					local num = #data.options 
					if num > 5 then 
						Drop.Size = UDim2.new(1, 0, 0, 85) 
					else 
						Drop.Size = UDim2.new(1, 0, 0, 17*num) 
					end 
					local first = true 
				function gay()
					for i,v in ipairs(data.options) do 
						do 
							local Button = Instance.new("TextButton") 
							local TextLabel = Instance.new("TextLabel") 

							Button.Name = v 
							Button.Parent = Drop 
							Button.BackgroundColor3 = Color3.fromRGB(46, 46, 46) 
							Button.BorderColor3 = Color3.fromRGB(18, 18, 16) 
							Button.Position = UDim2.new(0, 30, 0, 16) 
							Button.Size = UDim2.new(0, 175, 0, 17) 
							Button.AutoButtonColor = false 
							Button.Font = Enum.Font.SourceSans 
							Button.Text = "" 
							Button.TextColor3 = Color3.fromRGB(0, 0, 0) 
							Button.TextSize = 11.000
							Button.BorderSizePixel = 0 
							Button.ZIndex = 6 

							TextLabel.Parent = Button 
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
							TextLabel.BackgroundTransparency = 1.000 
							TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53) 
							TextLabel.Position = UDim2.new(0, 5, 0, -1) 
							TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0) 
							TextLabel.Font = Enum.Font.Gotham 
							TextLabel.Text = v 
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200) 
							TextLabel.TextSize = 11.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left 
							TextLabel.ZIndex = 6 

							Button.MouseButton1Down:Connect(function() 
								Drop.Visible = false 
								Element.value.Dropdown = v 
								abcd.Text = v 
								values[tabname][sectorname][text] = Element.value 
								callback(Element.value) 
								Drop.CanvasPosition = Vector2.new(0,0) 
							end) 
							Button.MouseEnter:Connect(function() 
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  MainUIColor}) 
							end) 
							Button.MouseLeave:Connect(function() 
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(200, 200, 200)}) 
							end) 

							first = false 
				Players.PlayerAdded:Connect(function(player)
					Button:Destroy()
					TextLabel:Destroy()
				end)

				Players.PlayerRemoving:Connect(function(player) 
					Button:Destroy()
					TextLabel:Destroy()
				end)
						end 
					end 
				end
gay() -- touch my pussy



Players.PlayerAdded:Connect(function(player) -- touch my pussy
insertwithoutdupes(data.options, player.Name) -- touch my pussy
gay() -- touch my pussy
end) -- touch my pussy

Players.PlayerRemoving:Connect(function(player)  -- touch my pussy
removewithoutdupes(data.options, player.Name) -- touch my pussy
gay() -- touch my pussy
end) -- touch my pussy
function Element:SetValue(val) 
	Element.value = val 
	abcd.Text = val.Dropdown 
	values[tabname][sectorname][text] = Element.value 
	callback(val) 
end 

ImageLabel.Parent = Button
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0, 165, 0, 6)
ImageLabel.Size = UDim2.new(0, 6, 0, 4)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"

TextLabel_3.Parent = Dropdown
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0, 32, 0, -1)
TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)
TextLabel_3.Font = Enum.Font.SourceSansSemibold
TextLabel_3.Text = text
TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

Button.MouseButton1Down:Connect(function() 
	Drop.Visible = not Drop.Visible 
	if not Drop.Visible then 
		Drop.CanvasPosition = Vector2.new(0,0) 
	end 
end) 
local indrop = false 
local ind = false 
Drop.MouseEnter:Connect(function() 
	indrop = true 
end) 
Drop.MouseLeave:Connect(function() 
	indrop = false 
end) 
Button.MouseEnter:Connect(function() 
	ind = true 
end) 
Button.MouseLeave:Connect(function() 
	ind = false 
end) 
game:GetService("UserInputService").InputBegan:Connect(function(input) 
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then 
		if Drop.Visible == true and not indrop and not ind then 
			Drop.Visible = false 
			Drop.CanvasPosition = Vector2.new(0,0) 
		end 
	end 
end) 
values[tabname][sectorname][text] = Element.value	


				elseif type == "Slider" then

					Section.Size = Section.Size + UDim2.new(0,0,0,25)

					local Slider = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")
					local Button = Instance.new("TextButton")
					local Frame = Instance.new("Frame")
					local UIGradient = Instance.new("UIGradient")
					local Value = Instance.new("TextLabel")

					Slider.Name = "Slider"
					Slider.Parent = Inner
					Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Slider.BackgroundTransparency = 1.000
					Slider.Position = UDim2.new(0, 0, 0.653061211, 0)
					Slider.Size = UDim2.new(1, 0, 0, 25)

					TextLabel.Parent = Slider
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDim2.new(0, 32, 0, -2)
					TextLabel.Size = UDim2.new(0, 100, 0, 15)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					Button.Name = "Button"
					Button.Parent = Slider
					Button.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Button.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Button.Position = UDim2.new(0, 30, 0, 15)
					Button.Size = UDim2.new(0, 175, 0, 5)
					Button.AutoButtonColor = false
					Button.Font = Enum.Font.SourceSans
					Button.Text = ""
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)
					Button.TextSize = 14.000

					Frame.Parent = Button
					Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Frame.BorderSizePixel = 0
					Frame.Size = UDim2.new(0.5, 0, 1, 0)

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(153, 22, 65)), ColorSequenceKeypoint.new(1, Color3.fromRGB(109, 16, 46))}
					UIGradient.Rotation = 90
					UIGradient.Parent = Frame

					Value.Name = "Value"
					Value.Parent = Slider
					Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Value.BackgroundTransparency = 1.000
					Value.Position = UDim2.new(0, 150, 0, -1)
					Value.Size = UDim2.new(0, 55, 0, 15)
					Value.Font = Enum.Font.SourceSansSemibold
					Value.Text = "50"
					Value.TextColor3 = Color3.fromRGB(200, 200, 200)
					Value.TextSize = 14.000
					Value.TextXAlignment = Enum.TextXAlignment.Right
					local min, max, default = data.min or 0, data.max or 100, data.default or 0
					Element.value = {Slider = default}

					function Element:SetValue(value)
						Element.value = value
						local a
						if min > 0 then
							a = ((Element.value.Slider - min)) / (max-min)
						else
							a = (Element.value.Slider-min)/(max-min)
						end
						Value.Text = Element.value.Slider
						Frame.Size = UDim2.new(a,0,1,0)
						values[tabname][sectorname][text] = Element.value
						callback(value)
					end
					local a
					if min > 0 then
						a = ((Element.value.Slider - min)) / (max-min)
					else
						a = (Element.value.Slider-min)/(max-min)
					end
					Value.Text = Element.value.Slider
					Frame.Size = UDim2.new(a,0,1,0)
					values[tabname][sectorname][text] = Element.value
					local uis = game:GetService("UserInputService")
					local mouse = game.Players.LocalPlayer:GetMouse()
					local val
					Button.MouseButton1Down:Connect(function()
						Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
						val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0
						Value.Text = val
						Element.value.Slider = val
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
						moveconnection = mouse.Move:Connect(function()
							Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
							val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
							Value.Text = val
							Element.value.Slider = val
							values[tabname][sectorname][text] = Element.value
							callback(Element.value)
						end)
						releaseconnection = uis.InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
								val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
								values[tabname][sectorname][text] = Element.value
								callback(Element.value)
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)
				elseif type == "Button" then

					Section.Size = Section.Size + UDim2.new(0,0,0,24)
					local Button = Instance.new("Frame")
					local Button_2 = Instance.new("TextButton")
					local TextLabel = Instance.new("TextLabel")

					Button.Name = "Button"
					Button.Parent = Inner
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Position = UDim2.new(0, 0, 0.236059487, 0)
					Button.Size = UDim2.new(1, 0, 0, 24)

					Button_2.Name = "Button"
					Button_2.Parent = Button
					Button_2.BackgroundColor3 = Color3.fromRGB(33, 35, 47)
					Button_2.BorderColor3 = Color3.fromRGB(27, 27, 35)
					Button_2.Position = UDim2.new(0, 30, 0.5, -9)
					Button_2.Size = UDim2.new(0, 175, 0, 18)
					Button_2.AutoButtonColor = false
					Button_2.Font = Enum.Font.SourceSans
					Button_2.Text = ""
					Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
					Button_2.TextSize = 14.000

					TextLabel.Parent = Button_2
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
					TextLabel.Size = UDim2.new(1, 0, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextLabel.TextSize = 14.000

					function Element:SetValue()
					end

					Button_2.MouseButton1Down:Connect(function()
						TextLabel.TextColor3 = Color3.fromRGB(175, 42, 86)
						library:Tween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
						callback()
					end)
					Button_2.MouseEnter:Connect(function()
						library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
					end)
					Button_2.MouseLeave:Connect(function()
						library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
					end)
				end
				ConfigLoad:Connect(function(cfg)
					pcall(function()
						local fix = library:ConfigFix(cfg)
						if fix[tabname][sectorname][text] ~= nil then
							Element:SetValue(fix[tabname][sectorname][text])
						end
					end)
				end)

				return Element
			end
			return Sector
		end

		return Tab
	end

	Aristois.Parent = game.CoreGui

	return menu
end

local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui
local Mouse = LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera
local Client = getsenv(LocalPlayer.PlayerGui.Client)


local Crosshairs = PlayerGui.GUI.Crosshairs
local Crosshair = PlayerGui.GUI.Crosshairs.Crosshair
local oldcreatebullethole = Client.createbullethole
local LGlove, RGlove, LSleeve, RSleeve, RArm, LArm
local WeaponObj = {}
local SelfObj = {}
local Viewmodels =  ReplicatedStorage.Viewmodels
local Weapons =  ReplicatedStorage.Weapons
local ViewmodelOffset = CFrame.new(0,0,0)
local Smokes = {}
local Mollies = {}
local RayIgnore = workspace.Ray_Ignore
local RageTarget
local GetIcon = require(game:GetService("ReplicatedStorage").GetIcon)
local BodyVelocity = Instance.new("BodyVelocity")
BodyVelocity.MaxForce = Vector3.new(math.huge, 0, math.huge)
local Collision = {Camera, workspace.Ray_Ignore, workspace.Debris}
local FakeAnim = Instance.new("Animation", workspace)
FakeAnim.AnimationId = "rbxassetid://0"
local Gloves = ReplicatedStorage.Gloves
if Gloves:FindFirstChild("ImageLabel") then
	Gloves.ImageLabel:Destroy()
end
local GloveModels = Gloves.Models
local Multipliers = {
    ["Head"] = 4,
    ["FakeHead"] = 4,
    ["HeadHB"] = 4,
    ["UpperTorso"] = 1,
    ["LowerTorso"] = 1.25,
    ["LeftUpperArm"] = 1,
    ["LeftLowerArm"] = 1,
    ["LeftHand"] = 1,
    ["RightUpperArm"] = 1,
    ["RightLowerArm"] = 1,
    ["RightHand"] = 1,
    ["LeftUpperLeg"] = 0.75,
    ["LeftLowerLeg"] = 0.75,
    ["LeftFoot"] = 0.75,
    ["RightUpperLeg"] = 0.75,
    ["RightLowerLeg"] = 0.75,
    ["RightFoot"] = 0.75,
}
local ChamItems = {}
local Skyboxes = {
    ["nebula"] = {
		SkyboxLf = "rbxassetid://159454286",
		SkyboxBk = "rbxassetid://159454299",
		SkyboxDn = "rbxassetid://159454296",
		SkyboxFt = "rbxassetid://159454293",
		SkyboxLf = "rbxassetid://159454286",
		SkyboxRt = "rbxassetid://159454300",
		SkyboxUp = "rbxassetid://159454288",
	},
    ["vaporwave"] = {
		SkyboxLf = "rbxassetid://1417494402",
		SkyboxBk = "rbxassetid://1417494030",
		SkyboxDn = "rbxassetid://1417494146",
		SkyboxFt = "rbxassetid://1417494253",
		SkyboxLf = "rbxassetid://1417494402",
		SkyboxRt = "rbxassetid://1417494499",
		SkyboxUp = "rbxassetid://1417494643",
	},
	["clouds"] = {
		SkyboxLf = "rbxassetid://570557620",
		SkyboxBk = "rbxassetid://570557514",
		SkyboxDn = "rbxassetid://570557775",
		SkyboxFt = "rbxassetid://570557559",
		SkyboxLf = "rbxassetid://570557620",
		SkyboxRt = "rbxassetid://570557672",
		SkyboxUp = "rbxassetid://570557727",
	},
	["twilight"] = {
		SkyboxLf = "rbxassetid://264909758",
		SkyboxBk = "rbxassetid://264908339",
		SkyboxDn = "rbxassetid://264907909",
		SkyboxFt = "rbxassetid://264909420",
		SkyboxLf = "rbxassetid://264909758",
		SkyboxRt = "rbxassetid://264908886",
		SkyboxUp = "rbxassetid://264907379",
	},
}
local NewScope
do
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")

	ScreenGui.Enabled = false
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	ScreenGui.IgnoreGuiInset = true

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0, 0, 0.5, 0)
	Frame.Size = UDim2.new(1, 0, 0, 1)

	Frame_2.Parent = ScreenGui
	Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.5, 0, 0, 0)
	Frame_2.Size = UDim2.new(0, 1, 1, 0)

	ScreenGui.Parent = game.CoreGui

	NewScope = ScreenGui
end
local oldSkybox

local function VectorRGB(RGB)
	return Vector3.new(RGB.R, RGB.G, RGB.B)
end
local function new(name, prop)
	local obj = Instance.new(name)
	for i,v in pairs(prop) do
		if i ~= "Parent" then
			obj[i] = v
		end
	end
	if prop["Parent"] ~= nil then
		obj.Parent = prop["Parent"]
	end
end
local function UpdateAccessory(Accessory)
	Accessory.Material = values.visuals.effects["accessory material"].Dropdown == "Smooth" and "SmoothPlastic" or "ForceField"
	Accessory.Mesh.VertexColor = VectorRGB(values.visuals.effects["accessory chams"].Color)
	Accessory.Color = values.visuals.effects["accessory chams"].Color
	Accessory.Transparency = values.visuals.effects["accessory chams"].Transparency
	if values.visuals.effects["accessory material"].Dropdown ~= "ForceField" then
		Accessory.Mesh.TextureId = ""
	else
		Accessory.Mesh.TextureId = Accessory.StringValue.Value
	end
end
local function ReverseAccessory(Accessory)
	Accessory.Material = "SmoothPlastic"
	Accessory.Mesh.VertexColor = Vector3.new(1,1,1)
	Accessory.Mesh.TextureId = Accessory.StringValue.Value
	Accessory.Transparency = 0
end
local function UpdateWeapon(obj)
	local selected = values.visuals.effects["weapon material"].Dropdown

	if obj:IsA("MeshPart") and selected == "ForceField" then obj.TextureID = "rbxassetid://5843010904"
    else
        if selected == "Smooth" or selected == "Glass" or selected == "Flat" then obj.TextureID = "" end
    
    end
    if obj:IsA("Part") and obj:FindFirstChild("Mesh") and not obj:IsA("BlockMesh") then
        obj.Mesh.VertexColor = VectorRGB(values.visuals.effects["weapon chams"].Color)
        if selected == "Smooth" or selected == "Glass" then
            obj.Mesh.TextureId = ""
        else
            pcall(function()
                obj.Mesh.TextureId = obj.Mesh.OriginalTexture.Value
                obj.Mesh.TextureID = obj.Mesh.OriginalTexture.Value
            end)
        end
    end
	obj.Color = values.visuals.effects["weapon chams"].Color
	obj.Material = selected == "Smooth" and "SmoothPlastic" or selected == "Flat" and "Neon" or selected == "ForceField" and "ForceField" or "Glass"
	obj.Reflectance = values.visuals.effects["reflectance"].Slider/10
	obj.Transparency = values.visuals.effects["weapon chams"].Transparency
end
local Skins = ReplicatedStorage.Skins
local function MapSkin(Gun, Skin, CustomSkin)
	if CustomSkin ~= nil then
		for _,Data in pairs(CustomSkin) do
			local Obj = Camera.Arms:FindFirstChild(Data.Name)
			if Obj ~= nil and Obj.Transparency ~= 1 then
				Obj.TextureId = Data.Value
			end
		end
	else
		local SkinData = Skins:FindFirstChild(Gun):FindFirstChild(Skin)
		if not SkinData:FindFirstChild("Animated") then
			for _,Data in pairs(SkinData:GetChildren()) do
				local Obj = Camera.Arms:FindFirstChild(Data.Name)
				if Obj ~= nil and Obj.Transparency ~= 1 then
					if Obj:FindFirstChild("Mesh") then
						Obj.Mesh.TextureId = v.Value
					elseif not Obj:FindFirstChild("Mesh") then
						Obj.TextureID = Data.Value
					end
				end
			end
		end
	end
end
local function ChangeCharacter(NewCharacter)      
	for _,Part in pairs (LocalPlayer.Character:GetChildren()) do      
		if Part:IsA("Accessory") then      
			Part:Destroy()      
		end      
		if Part:IsA("BasePart") then      
			if NewCharacter:FindFirstChild(Part.Name) then      
				Part.Color = NewCharacter:FindFirstChild(Part.Name).Color      
				Part.Transparency = NewCharacter:FindFirstChild(Part.Name).Transparency      
			end      
			if Part.Name == "FakeHead" then      
				Part.Color = NewCharacter:FindFirstChild("Head").Color      
				Part.Transparency = NewCharacter:FindFirstChild("Head").Transparency      
			end      
		end      

		if (Part.Name == "Head" or Part.Name == "FakeHead") and Part:FindFirstChildOfClass("Decal") and NewCharacter.Head:FindFirstChildOfClass("Decal") then      
			Part:FindFirstChildOfClass("Decal").Texture = NewCharacter.Head:FindFirstChildOfClass("Decal").Texture      
		end      
	end      

	if NewCharacter:FindFirstChildOfClass("Shirt") then      
		if LocalPlayer.Character:FindFirstChildOfClass("Shirt") then      
			LocalPlayer.Character:FindFirstChildOfClass("Shirt"):Destroy()      
		end      
		local Clone = NewCharacter:FindFirstChildOfClass("Shirt"):Clone()      
		Clone.Parent = LocalPlayer.Character      
	end      

	if NewCharacter:FindFirstChildOfClass("Pants") then      
		if LocalPlayer.Character:FindFirstChildOfClass("Pants") then      
			LocalPlayer.Character:FindFirstChildOfClass("Pants"):Destroy()      
		end      
		local Clone = NewCharacter:FindFirstChildOfClass("Pants"):Clone()      
		Clone.Parent = LocalPlayer.Character      
	end      

	for _,Part in pairs (NewCharacter:GetChildren()) do      
		if Part:IsA("Accessory") then      
			local Clone = Part:Clone()      
			for _,Weld in pairs (Clone.Handle:GetChildren()) do      
				if Weld:IsA("Weld") and Weld.Part1 ~= nil then      
					Weld.Part1 = LocalPlayer.Character[Weld.Part1.Name]      
				end      
			end      
			Clone.Parent = LocalPlayer.Character      
		end      
	end      

	if LocalPlayer.Character:FindFirstChildOfClass("Shirt") then      
		local String = Instance.new("StringValue")      
		String.Name = "OriginalTexture"      
		String.Value = LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate      
		String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Shirt")      

		if table.find(values.visuals.effects.removals.Jumbobox, "clothes") then      
			LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate = ""      
		end      
	end      
	if LocalPlayer.Character:FindFirstChildOfClass("Pants") then      
		local String = Instance.new("StringValue")      
		String.Name = "OriginalTexture"      
		String.Value = LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate      
		String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Pants")      

		if table.find(values.visuals.effects.removals.Jumbobox, "clothes") then      
			LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate = ""      
		end      
	end      
	for i,v in pairs(LocalPlayer.Character:GetChildren()) do      
		if v:IsA("BasePart") and v.Transparency ~= 1 then      
			table.insert(SelfObj, v)      
			local Color = Instance.new("Color3Value")      
			Color.Name = "OriginalColor"      
			Color.Value = v.Color      
			Color.Parent = v      

			local String = Instance.new("StringValue")      
			String.Name = "OriginalMaterial"      
			String.Value = v.Material.Name      
			String.Parent = v      
		elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then      
			table.insert(SelfObj, v.Handle)      
			local Color = Instance.new("Color3Value")      
			Color.Name = "OriginalColor"      
			Color.Value = v.Handle.Color      
			Color.Parent = v.Handle      

			local String = Instance.new("StringValue")      
			String.Name = "OriginalMaterial"      
			String.Value = v.Handle.Material.Name      
			String.Parent = v.Handle      
		end      
	end      

	if values.visuals.self["self chams"].Toggle then      
		for _,obj in pairs(SelfObj) do      
			if obj.Parent ~= nil then      
				obj.Material = values.visuals.self["self chams material"].Dropdown
				obj.Color = values.visuals.self["self chams"].Color     
				obj.Transparency = values.visuals.self["self chams transparency"].Slider/10    
			end      
		end      
	end      
end  

local function GetDeg(pos1, pos2)
    local start = pos1.LookVector
    local vector = CFrame.new(pos1.Position, pos2).LookVector
    local angle = math.acos(start:Dot(vector))
    local deg = math.deg(angle)
    return deg
end
local Ping = game.Stats.PerformanceStats.Ping:GetValue()

for i,v in pairs(Viewmodels:GetChildren()) do
    if v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Transparency ~= 1 then
        v.HumanoidRootPart.Transparency = 1
    end
end

local Models = game:GetObjects("rbxassetid://7285197035")[1] -- knives models
repeat wait() until Models ~= nil      
local ChrModels = game:GetObjects("rbxassetid://15837369190")[1] -- dont copy my character models!!!   
repeat wait() until ChrModels ~= nil       


local AllKnives = {
	"CT Knife",
	"T Knife",
	"Banana",
	"Bayonet",
	"Bearded Axe",
	"Butterfly Knife",
	"Cleaver",
	"Crowbar",
	"Falchion Knife",
	"Flip Knife",
	"Gut Knife",
	"Huntsman Knife",
	"Karambit",
	"Sickle",
}

local function GetSite()
	if (LocalPlayer.Character.HumanoidRootPart.Position - workspace.Map.SpawnPoints.C4Plant.Position).magnitude > (LocalPlayer.Character.HumanoidRootPart.Position - workspace.Map.SpawnPoints.C4Plant2.Position).magnitude then
		return "A"
	else
		return "B"
	end
end

local AllGloves = {}

for _,fldr in pairs(Gloves:GetChildren()) do
	if fldr ~= Gloves.Models and fldr.Name ~= "Racer" then
		AllGloves[fldr.Name] = {}
		for _2,modl in pairs(fldr:GetChildren()) do
			table.insert(AllGloves[fldr.Name], modl.Name)
		end
	end
end

for i,v in pairs(Models.Knives:GetChildren()) do
	table.insert(AllKnives, v.Name)
end

local AllSkins = {}
local AllWeapons = {}
local AllCharacters = {}

for i,v in pairs(ChrModels:GetChildren()) do
	table.insert(AllCharacters, v.Name)
end


for i,v in pairs(Skins:GetChildren()) do
	table.insert(AllWeapons, v.Name)
end

table.sort(AllWeapons, function(a,b)
    return a < b
end)

for i,v in ipairs(AllWeapons) do
	AllSkins[v] = {}
	table.insert(AllSkins[v], "Inventory")
	for _,v2 in pairs(Skins[v]:GetChildren()) do
		if not v2:FindFirstChild("Animated") then
			table.insert(AllSkins[v], v2.Name)
		end
	end
end

makefolder("cripbotlua")

local allluas = {}

for _,lua in pairs(listfiles("cripbotlua")) do
	local luaname = string.gsub(lua, "cripbotlua\\", "")
	table.insert(allluas, luaname)
end

RunService.RenderStepped:Wait()

local gui = library:New("cripbot-paste")
local rage = gui:Tab("rage")
local angles = gui:Tab("angles") 
local visuals = gui:Tab("visuals")
local misc = gui:Tab("misc")
local skins = gui:Tab("skins")
local luas = gui:Tab("luas")
local something = gui:Tab("something") 

getgenv().api = {}
api.newtab = function(name)
	return gui:Tab(name)
end
api.newsection = function(tab, name, side)
	return tab:Sector(name, side)
end
api.newelement = function(section, type, name, data, callback)
	section:Element(type, name, data, callback)
end

local luascripts = luas:Sector("lua scripts", "Left")
luascripts:Element("Scroll", "lua", {options = allluas, Amount = 5})
luascripts:Element("Button", "load", {}, function()
	loadstring(readfile("cripbotlua\\"..values.luas["lua scripts"].lua.Scroll))()
end)

luascripts:Element("Button", "Rejoin", nil, function()
	local ts = game:GetService("TeleportService")
	local p = game:GetService("Players").LocalPlayer
	ts:Teleport(game.PlaceId, p)
end)
luascripts:Element("Button", "invisible", nil, function()
	local obed = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 9e9, 0))
	wait()
	local lchr = game:GetService("Players").LocalPlayer.Character
	lchr.Parent = nil
	hrp = lchr.HumanoidRootPart
	hrp.Parent = nil
	lchr.Parent = workspace
	hrp.Parent = lchr
	wait(.2)
	CreateHitElement("Applied Invisibility!",Color3.new(1,1,1), 4, 0, 280, 0, 22)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(obed)
end)
luascripts:Element("Button", "force defuse", nil, function()
	local cQ = game.Players.LocalPlayer
	if cQ.Character and workspace.Map.Gamemode.Value == "defusal" and cQ.Character:FindFirstChild("HumanoidRootPart") and workspace:FindFirstChild("C4") then
		cQ.Character.HumanoidRootPart.Velocity = Vector3.new()
		local cT = cQ.Character.HumanoidRootPart.CFrame
		workspace.CurrentCamera.CameraType = "Fixed"
		cQ.Character.HumanoidRootPart.CFrame =
		workspace.C4.Handle.CFrame + Vector3.new(0, math.random(10, 20) / 10, 0)
		cQ.Character.HumanoidRootPart.Velocity = Vector3.new()
		wait(0.1)
		cQ.Backpack.PressDefuse:FireServer(workspace.C4)
		cQ.Character.HumanoidRootPart.Velocity = Vector3.new()
		wait(0.25)
		if cQ.Character and cQ.Character:FindFirstChild("HumanoidRootPart") and workspace:FindFirstChild("C4") and workspace.C4:FindFirstChild("Defusing") and workspace.C4.Defusing.Value == cQ then
			cQ.Backpack.Defuse:FireServer(workspace.C4)
		end
		cQ.Character.HumanoidRootPart.Velocity = Vector3.new()
		wait(0.2)
		cQ.Character.HumanoidRootPart.Velocity = Vector3.new()
		cQ.Character.HumanoidRootPart.CFrame = cT
		cQ.Character.HumanoidRootPart.Velocity = Vector3.new()
		game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
	end
end)
luascripts:Element("Button", "plant c4",{}, function()
	if IsAlive(LocalPlayer) and workspace.Map.Gamemode.Value == "defusal" and workspace.Status.Preparation.Value == false and not planting then 
		planting = true
		local pos = LocalPlayer.Character.HumanoidRootPart.CFrame 
		workspace.CurrentCamera.CameraType = "Fixed"
		LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.SpawnPoints.C4Plant.CFrame
		wait(0.2)
		game.ReplicatedStorage.Events.PlantC4:FireServer((pos + Vector3.new(0, -2.75, 0)) * CFrame.Angles(math.rad(90), 0, math.rad(180)), GetSite())
		wait(0.2)
		LocalPlayer.Character.HumanoidRootPart.CFrame = pos
		LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
		game.Workspace.CurrentCamera.CameraType = "Custom"
		planting = false
	end
	end)
	luascripts:Element("Button", "void c4",{}, function()
		if IsAlive(LocalPlayer) and workspace.Map.Gamemode.Value == "defusal" and workspace.Status.Preparation.Value == false and not planting then 
			planting = true
			local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
			workspace.CurrentCamera.CameraType = "Fixed"
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.SpawnPoints.C4Plant.CFrame
			wait(0.2)
			game.ReplicatedStorage.Events.PlantC4:FireServer((pos+Vector3.new(math.huge ,-math.huge,-math.huge)) * CFrame.Angles(math.rad(90), math.rad(9e9), math.rad(120)), GetSite())
			wait(0.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
			game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
			game.Workspace.CurrentCamera.CameraType = "Custom"
			planting = false
		end
	end)
luascripts:Element("Button", "inf c4",{}, function()
	if not game.Players.LocalPlayer.Character then return end
	if not game:GetService("Workspace").Map.Gamemode.Value == "defusal" then return end
	local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	game:GetService("Workspace").CurrentCamera.CameraType = "Fixed"
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.SpawnPoints.C4Plant.CFrame
	wait(0.2)
	game:GetService("ReplicatedStorage").Events.PlantC4:FireServer("")
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end)
luascripts:Element("Toggle","clear sounds",{},function(tbl)
	if tbl.Toggle then
		for i, v in next, game.StarterGui:GetChildren() do  
			if v.Name == "Headshot4" or v.Name == "Headshot3" or v.Name == "Headshot2" or v.Name == "Headshot1" or v.Name == "HHeadshot4" or v.Name == "HHeadshot3" or v.Name == "HHeadshot2" or v.Name == "HHeadshot1" then
				v:Destroy()
			end
		end
		
		for i, v in next, LocalPlayer.PlayerGui:GetChildren() do  
			if v.Name == "Headshot4" or v.Name == "Headshot3" or v.Name == "Headshot2" or v.Name == "Headshot1" or v.Name == "HHeadshot4" or v.Name == "HHeadshot3" or v.Name == "HHeadshot2" or v.Name == "HHeadshot1" then
				v:Destroy()
			end
		end
	end
end)

local WP = luas:Sector("Waypoints", "Right")
WP:Element("Button", "Spawn CT", {}, function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["BuyArea2"].Position + Vector3.new(0, 3, 0))
end)
WP:Element("Button", "Spawn T", {}, function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["BuyArea"].Position + Vector3.new(0, 3, 0))
end)
WP:Element("Button", "Bombsite A", {}, function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["C4Plant2"].Position + Vector3.new(0, 3, 0))
end)
WP:Element("Button", "Bombsite B", {}, function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["C4Plant"].Position + Vector3.new(0, 3, 0))
end)



local varechka = something:Sector("varechka", "Left")
varechka:Element("Button", "respawn",{}, function()
	game.ReplicatedStorage.Events:FindFirstChild("Spawnme"):FireServer()
end)
varechka:Element("Toggle", "fake angles",{}, function(val)
	game:GetService("RunService").RenderStepped:Connect(function()
		if val.Toggle then 
			for _, plr in ipairs(game.Players:GetPlayers()) do
				if (plr:FindFirstChild("DamageLogs") and not plr.DamageLogs:FindFirstChild(game.Players.LocalPlayer.Name)) then
					game:GetService("ReplicatedStorage").MapVoting.Submit:FireServer(plr, "DamageLogs")
				end
			end
		else
			game:GetService("ReplicatedStorage").MapVoting.Submit:FireServer(plr, "")
		end 
	end)
end) 
varechka:Element("Button", "drop all weapons", nil, function(tbl)
	for _,weapon in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
		game:GetService("ReplicatedStorage").Events.Drop:FireServer(weapon, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame, 998, 30, false, game:GetService("Players").LocalPlayer, false, false);
	end
end)
varechka:Element("Button", "drop super bimba", nil, function(tbl)
	for i= 1, 8 do
		game.ReplicatedStorage.Events.Drop:FireServer(game.ReplicatedStorage.Weapons.Discombobulator, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame, 998, 30, false, game:GetService("Players").LocalPlayer, false, false)
	 end
end)
varechka:Element("ToggleKeybind", "ddos")
varechka:Element("Toggle", "md")
varechka:Element("ToggleKeybind", "C4 kill all")
varechka:Element("ToggleKeybind", "better kill all")
varechka:Element("ToggleKeybind", "lag all")
varechka:Element("ToggleKeybind", "lag aura")
varechka:Element("ToggleKeybind", "he grenade")
varechka:Element("ToggleKeybind", "break aura")
varechka:Element("ToggleKeybind", "test kill all")
varechka:Element("ToggleKeybind", "J kill all")
varechka:Element("Dropdown", "kill all mode", {options = {"easy", "medium", "hard", "random"}}) 
varechka:Element("ToggleKeybind", "pasted kill all")
varechka:Element("Dropdown", "kill all type", {options = {"funny", "neverblox", "deadware", "new"}})  
varechka:Element("Dropdown", "prediction", {options = {"off", "kill all", "old"}})
varechka:Element("Slider", "hits amount", {min = 1, max = 5, default = 1})


local kbot = something:Sector("kbot", "Right")

kbot:Element("Toggle", "knifebot")
kbot:Element("Dropdown", "knifebot type", {options = {"standart", "semi lag", "lag", "Crowbar"}})
kbot:Element("Slider", "distance", {min = 1, max = 100, default = 1})

local safety = something:Sector("safety", "Right")
safety:Element("Button", "reset weapons dmg (knife kill only)",{}, function()
	a=1
while a==1 do
    wait(1)
    for i,v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
        if v:FindFirstChild("DMG") then
            game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = v.DMG})
        end
    end
end
end)
safety:Element("Button", "give rapid fire guns",{}, function()
	a=1
while a==1 do
    wait(1)
    for i,v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
        if v:FindFirstChild("FireRate") then
            game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = v.FireRate})
        end
		if v:FindFirstChild("Auto") then
            game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = v.Auto})
        end
    end
end
end)
safety:Element("Button", "break game",{}, function()
	game:GetService("ReplicatedStorage").Events.TeleportSetting:FireServer("TTT")
end)
safety:Element("Button", "competitive gamemode",{}, function()
	game:GetService("ReplicatedStorage").Events.TeleportSetting:FireServer("competitive")
end)
safety:Element("Button", "deathmatch gamemode",{}, function()
	game:GetService("ReplicatedStorage").Events.TeleportSetting:FireServer("deathmatch")
end)
safety:Element("Button", "juggernaut gamemode",{}, function()
	game:GetService("ReplicatedStorage").Events.TeleportSetting:FireServer("juggernaut")
end)
safety:Element("Button", "reset team join",{}, function()
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace.Status.NumT})
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace.Status.NumCT})
end)
safety:Element("Button", "ct win", nil, function() -- cripbot-paste <3
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace.Status.Defused})
end)
safety:Element("Button", "t win", nil, function()
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace.Status.Exploded})
end)
safety:Element("Button", "remove ct wins", nil, function()
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace.Status.CTWins})
end)
safety:Element("Button", "remove t wins", nil, function()
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace.Status.TWins})
end)
safety:Element("Button", "freeze game", nil, function()
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace.Status.Preparation})
end)
safety:Element("Button", "set timer", nil, function()
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace.Status.Timer})
end)
safety:Element("Button", "warm up", nil, function()
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace.Status.CanRespawn})
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = game:GetService("ReplicatedStorage").Warmup})
end)
safety:Element("Button", "force map voting", nil, function()
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = game:GetService("ReplicatedStorage").Voten})
end)
safety:Element("Button", "play sus sounds", nil, function()
local Sync = {}
Sync.allServerSideSounds = {
game:GetService("ReplicatedStorage").Other.GunDrop['Impact1'],
game:GetService("ReplicatedStorage").Other.GunDrop['Impact2'],
game:GetService("ReplicatedStorage").Other.GunDrop['Impact3'],
game:GetService("ReplicatedStorage").Other.GunDrop['Impact4'],
game:GetService("ReplicatedStorage").Other.GunDrop['Impact5'],
game:GetService("ReplicatedStorage").Other.GunDrop['Impact6'],
game:GetService("ReplicatedStorage").Other['PropAssigner'].Break,
game:GetService("ReplicatedStorage").Other.Ragdoll.Head.GettingUp,
game:GetService("ReplicatedStorage").Other.Ragdoll.Head.Died,
game:GetService("ReplicatedStorage").Other.Ragdoll.Head.FreeFalling,
game:GetService("ReplicatedStorage").Other.Ragdoll.Head.Jumping,
game:GetService("ReplicatedStorage").Other.Ragdoll.Head.Landing,
game:GetService("ReplicatedStorage").Other.Ragdoll.Head.Splash,
game:GetService("ReplicatedStorage").Other.Ragdoll.Head.Running,
game:GetService("ReplicatedStorage").Other.Ragdoll.Head.Swimming,
game:GetService("ReplicatedStorage").Other.Ragdoll.Head.Climbing,
game:GetService("ReplicatedStorage").Other.Smoke.Explode,
game:GetService("ReplicatedStorage").Other['Death Station Object'].Sound,
game:GetService("ReplicatedStorage").Other['Health Station Object'].Sound,
game:GetService("ReplicatedStorage").Sounds['Grass1'],
game:GetService("ReplicatedStorage").Sounds.Dust,
game:GetService("ReplicatedStorage").Sounds['Concrete1'],
game:GetService("ReplicatedStorage").Sounds['Damage1'],
game:GetService("ReplicatedStorage").Sounds['Damage2'],
game:GetService("ReplicatedStorage").Sounds['Damage3'],
game:GetService("ReplicatedStorage").Sounds['Explode1'],
game:GetService("ReplicatedStorage").Sounds['Explode2'],
game:GetService("ReplicatedStorage").Sounds['Explode3'],
game:GetService("ReplicatedStorage").Sounds.Glass,
game:GetService("ReplicatedStorage").Sounds['Hit1'],
game:GetService("ReplicatedStorage").Sounds['Hit2'],
game:GetService("ReplicatedStorage").Sounds['Hit3'],
game:GetService("ReplicatedStorage").Sounds['Hit4'],
game:GetService("ReplicatedStorage").Sounds['Hit5'],
game:GetService("ReplicatedStorage").Sounds['Hit6'],
game:GetService("ReplicatedStorage").Sounds['Metal1'],
game:GetService("ReplicatedStorage").Sounds['Wood1'],
game:GetService("ReplicatedStorage").Sounds.Spray,
game:GetService("ReplicatedStorage").Sounds['Miss1'],
game:GetService("ReplicatedStorage").Sounds['Miss10'],
game:GetService("ReplicatedStorage").Sounds['Miss11'],
game:GetService("ReplicatedStorage").Sounds['Miss2'],
game:GetService("ReplicatedStorage").Sounds['Miss3'],
game:GetService("ReplicatedStorage").Sounds['Miss4'],
game:GetService("ReplicatedStorage").Sounds['Miss5'],
game:GetService("ReplicatedStorage").Sounds['Miss6'],
game:GetService("ReplicatedStorage").Sounds['Miss7'],
game:GetService("ReplicatedStorage").Sounds['Miss8'],
game:GetService("ReplicatedStorage").Sounds['Miss9'],
game:GetService("ReplicatedStorage").Sounds['Death1'],
game:GetService("ReplicatedStorage").Sounds['Death2'],
game:GetService("ReplicatedStorage").Sounds['Death3'],
game:GetService("ReplicatedStorage").Sounds['Death4'],
game:GetService("ReplicatedStorage").Sounds['Death5'],
game:GetService("ReplicatedStorage").Sounds.Break,
game:GetService("ReplicatedStorage").Sounds.breaks,
game:GetService("ReplicatedStorage").Sounds['Burn1'],
game:GetService("ReplicatedStorage").Sounds['Burn2'],
game:GetService("ReplicatedStorage").Sounds['Burn3'],
game:GetService("ReplicatedStorage").Sounds['Kevlar1'],
game:GetService("ReplicatedStorage").Sounds['Kevlar5'],
game:GetService("ReplicatedStorage").Sounds['Kevlar2'],
game:GetService("ReplicatedStorage").Sounds['Kevlar3'],
game:GetService("ReplicatedStorage").Sounds['Kevlar4'],
game:GetService("ReplicatedStorage").Sounds['Bullet1'],
game:GetService("ReplicatedStorage").Sounds['Wood4'],
game:GetService("ReplicatedStorage").Sounds['Wood5'],
game:GetService("ReplicatedStorage").Sounds['Sand2'],
game:GetService("ReplicatedStorage").Sounds['Sand1'],
game:GetService("ReplicatedStorage").Sounds['Bullet2'],
game:GetService("ReplicatedStorage").Sounds['Bullet3'],
game:GetService("ReplicatedStorage").Sounds['Bullet4'],
game:GetService("ReplicatedStorage").Sounds['Metal4'],
game:GetService("ReplicatedStorage").Sounds['Metal3'],
game:GetService("ReplicatedStorage").Sounds['Metal2'],
game:GetService("ReplicatedStorage").Sounds['Sand4'],
game:GetService("ReplicatedStorage").Sounds['Sand3'],
game:GetService("ReplicatedStorage").Sounds['Concrete4'],
game:GetService("ReplicatedStorage").Sounds['Grass2'],
game:GetService("ReplicatedStorage").Sounds['Grass3'],
game:GetService("ReplicatedStorage").Sounds['Grass4'],
game:GetService("ReplicatedStorage").Sounds['Wood2'],
game:GetService("ReplicatedStorage").Sounds['Wood3'],
game:GetService("ReplicatedStorage").Sounds['Concrete2'],
game:GetService("ReplicatedStorage").Sounds['Concrete3'],
game:GetService("ReplicatedStorage").Sounds['Headshot1'],
game:GetService("ReplicatedStorage").Sounds['Headshot2'],
game:GetService("ReplicatedStorage").Sounds['Headshot3'],
game:GetService("ReplicatedStorage").Sounds['Headshot4'],
game:GetService("ReplicatedStorage").Sounds['Helmet1'],
game:GetService("ReplicatedStorage").Sounds['Helmet2'],
game:GetService("ReplicatedStorage").Sounds['Helmet3'],
game:GetService("ReplicatedStorage").Sounds['Helmet4'],
game:GetService("ReplicatedStorage").Sounds.death,
game:GetService("ReplicatedStorage").Sounds.Door['Creak1'],
game:GetService("ReplicatedStorage").Sounds.Door['Creak2'],
game:GetService("ReplicatedStorage")['C4'].Handle.Beep,
game:GetService("ReplicatedStorage")['C4'].Handle.Deb,
game:GetService("ReplicatedStorage")['C4'].Handle['Deb2'],
game:GetService("ReplicatedStorage")['C4'].Handle.Init,
game:GetService("ReplicatedStorage")['C4'].Handle.Misc,
game:GetService("ReplicatedStorage")['C4'].Handle.Plant,
game:GetService("ReplicatedStorage").Tester.Color.Proven,
game:GetService("ReplicatedStorage").Tester.Color.SPY,
game:GetService("ReplicatedStorage").Tester.Color.huh,
game:GetService("ReplicatedStorage").Tester.Color.Destroyed,
game:GetService("ReplicatedStorage").Weapons['AK47'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['AK47'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['AK47'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['AK47'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['AK47'].Model.boltrelease,
game:GetService("ReplicatedStorage").Weapons['AK47'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['AK47'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['AUG'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['AUG'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['AUG'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['AUG'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['AUG'].Model.maghit,
game:GetService("ReplicatedStorage").Weapons['AUG'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['AUG'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['AWP'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['AWP'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['AWP'].Model.Zoom,
game:GetService("ReplicatedStorage").Weapons['AWP'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['AWP'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['AWP'].Model.maghit,
game:GetService("ReplicatedStorage").Weapons['AWP'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['AWP'].Model.magout,
game:GetService("ReplicatedStorage").Weapons.Banana.Model.Equip,
game:GetService("ReplicatedStorage").Weapons.Banana.Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons.Banana.Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons.Banana.Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons.Banana.Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons.Banana.Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons.Banana.Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons.Banana.Model.Stab,
game:GetService("ReplicatedStorage").Weapons.Bayonet.Model.Equip,
game:GetService("ReplicatedStorage").Weapons.Bayonet.Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons.Bayonet.Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons.Bayonet.Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons.Bayonet.Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons.Bayonet.Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons.Bayonet.Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons.Bayonet.Model.Stab,
game:GetService("ReplicatedStorage").Weapons['Bearded Axe'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['Bearded Axe'].Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons['Bearded Axe'].Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons['Bearded Axe'].Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons['Bearded Axe'].Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons['Bearded Axe'].Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons['Bearded Axe'].Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons['Bearded Axe'].Model.Stab,
game:GetService("ReplicatedStorage").Weapons['Bizon'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['Bizon'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['Bizon'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['Bizon'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['Bizon'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['Bizon'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['Bizon'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['C4'].Model.Beep,
game:GetService("ReplicatedStorage").Weapons['C4'].Model.Plant,
game:GetService("ReplicatedStorage").Weapons['C4'].Model.Planting,
game:GetService("ReplicatedStorage").Weapons['CT Knife'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['CT Knife'].Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons['CT Knife'].Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons['CT Knife'].Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons['CT Knife'].Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons['CT Knife'].Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons['CT Knife'].Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons['CT Knife'].Model.Stab,
game:GetService("ReplicatedStorage").Weapons.CZ.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.CZ.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.CZ.Model.magin,
game:GetService("ReplicatedStorage").Weapons.CZ.Model.magout,
game:GetService("ReplicatedStorage").Weapons.CZ.Model.slide,
game:GetService("ReplicatedStorage").Weapons.CZ.Model.slidein,
game:GetService("ReplicatedStorage").Weapons.Cleaver.Model.Equip,
game:GetService("ReplicatedStorage").Weapons.Cleaver.Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons.Cleaver.Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons.Cleaver.Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons.Cleaver.Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons.Cleaver.Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons.Cleaver.Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons.Cleaver.Model.Stab,
game:GetService("ReplicatedStorage").Weapons['Decoy Grenade'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['Decoy Grenade'].Model['Bounce1'],
game:GetService("ReplicatedStorage").Weapons['Decoy Grenade'].Model['Bounce2'],
game:GetService("ReplicatedStorage").Weapons['Decoy Grenade'].Model['Bounce3'],
game:GetService("ReplicatedStorage").Weapons['Decoy Grenade'].Model['Bounce4'],
game:GetService("ReplicatedStorage").Weapons['Decoy Grenade'].Model.Pin,
game:GetService("ReplicatedStorage").Weapons['Decoy Grenade'].Model.Throw,
game:GetService("ReplicatedStorage").Weapons['Decoy Grenade'].Model['Explode1'],
game:GetService("ReplicatedStorage").Weapons['Decoy Grenade'].Model['Explode2'],
game:GetService("ReplicatedStorage").Weapons['Decoy Grenade'].Model['Explode3'],
game:GetService("ReplicatedStorage").Weapons.DesertEagle.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.DesertEagle.Model.Equip,
game:GetService("ReplicatedStorage").Weapons.DesertEagle.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.DesertEagle.Model.magin,
game:GetService("ReplicatedStorage").Weapons.DesertEagle.Model.magout,
game:GetService("ReplicatedStorage").Weapons.DesertEagle.Model.slide,
game:GetService("ReplicatedStorage").Weapons.DesertEagle.Model.slidein,
game:GetService("ReplicatedStorage").Weapons.DualBerettas['Model2'].Shoot,
game:GetService("ReplicatedStorage").Weapons.DualBerettas.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.DualBerettas.Model.Equip,
game:GetService("ReplicatedStorage").Weapons.DualBerettas.Model.tap,
game:GetService("ReplicatedStorage").Weapons.DualBerettas.Model.magin,
game:GetService("ReplicatedStorage").Weapons.DualBerettas.Model.magout,
game:GetService("ReplicatedStorage").Weapons.DualBerettas.Model.slide,
game:GetService("ReplicatedStorage").Weapons.DualBerettas.Model.slidein,
game:GetService("ReplicatedStorage").Weapons.DualBerettas.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['Falchion Knife'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['Falchion Knife'].Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons['Falchion Knife'].Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons['Falchion Knife'].Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons['Falchion Knife'].Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons['Falchion Knife'].Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons['Falchion Knife'].Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons['Falchion Knife'].Model.Stab,
game:GetService("ReplicatedStorage").Weapons.Famas.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.Famas.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.Famas.Model.bolt,
game:GetService("ReplicatedStorage").Weapons.Famas.Model.boltin,
game:GetService("ReplicatedStorage").Weapons.Famas.Model.magin,
game:GetService("ReplicatedStorage").Weapons.Famas.Model.magout,
game:GetService("ReplicatedStorage").Weapons.Famas.Model.maghit,
game:GetService("ReplicatedStorage").Weapons.Famas.Model.Switch,
game:GetService("ReplicatedStorage").Weapons.FiveSeven.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.FiveSeven.Model.magin,
game:GetService("ReplicatedStorage").Weapons.FiveSeven.Model.magout,
game:GetService("ReplicatedStorage").Weapons.FiveSeven.Model.slide,
game:GetService("ReplicatedStorage").Weapons.FiveSeven.Model.slidein,
game:GetService("ReplicatedStorage").Weapons.FiveSeven.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.Flashbang.Model.Equip,
game:GetService("ReplicatedStorage").Weapons.Flashbang.Model['Bounce1'],
game:GetService("ReplicatedStorage").Weapons.Flashbang.Model['Bounce2'],
game:GetService("ReplicatedStorage").Weapons.Flashbang.Model['Bounce3'],
game:GetService("ReplicatedStorage").Weapons.Flashbang.Model['Bounce4'],
game:GetService("ReplicatedStorage").Weapons.Flashbang.Model.Pin,
game:GetService("ReplicatedStorage").Weapons.Flashbang.Model.Throw,
game:GetService("ReplicatedStorage").Weapons.Flashbang.Model['Explode1'],
game:GetService("ReplicatedStorage").Weapons.Flashbang.Model['Explode2'],
game:GetService("ReplicatedStorage").Weapons.Flashbang.Model['Explode3'],
game:GetService("ReplicatedStorage").Weapons['Flip Knife'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['Flip Knife'].Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons['Flip Knife'].Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons['Flip Knife'].Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons['Flip Knife'].Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons['Flip Knife'].Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons['Flip Knife'].Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons['Flip Knife'].Model.Stab,
game:GetService("ReplicatedStorage").Weapons['G3SG1'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['G3SG1'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['G3SG1'].Model.Zoom,
game:GetService("ReplicatedStorage").Weapons['G3SG1'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['G3SG1'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['G3SG1'].Model.maghit,
game:GetService("ReplicatedStorage").Weapons['G3SG1'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['G3SG1'].Model.magout,
game:GetService("ReplicatedStorage").Weapons.Galil.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.Galil.Model.Equip,
game:GetService("ReplicatedStorage").Weapons.Galil.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.Galil.Model.bolt,
game:GetService("ReplicatedStorage").Weapons.Galil.Model.boltin,
game:GetService("ReplicatedStorage").Weapons.Galil.Model.magin,
game:GetService("ReplicatedStorage").Weapons.Galil.Model.magout,
game:GetService("ReplicatedStorage").Weapons.Glock.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.Glock.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.Glock.Model.Switch,
game:GetService("ReplicatedStorage").Weapons.Glock.Model.slide,
game:GetService("ReplicatedStorage").Weapons.Glock.Model.slidein,
game:GetService("ReplicatedStorage").Weapons.Glock.Model.magin,
game:GetService("ReplicatedStorage").Weapons.Glock.Model.magout,
game:GetService("ReplicatedStorage").Weapons.Glock.Model.maghit,
game:GetService("ReplicatedStorage").Weapons['Gut Knife'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['Gut Knife'].Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons['Gut Knife'].Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons['Gut Knife'].Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons['Gut Knife'].Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons['Gut Knife'].Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons['Gut Knife'].Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons['Gut Knife'].Model.Stab,
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model.ball,
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model['Bounce1'],
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model['Bounce2'],
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model['Bounce3'],
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model['Bounce4'],
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model.Pin,
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model.Throw,
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model['Explode1'],
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model['Explode2'],
game:GetService("ReplicatedStorage").Weapons['HE Grenade'].Model['Explode3'],
game:GetService("ReplicatedStorage").Weapons['Huntsman Knife'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['Huntsman Knife'].Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons['Huntsman Knife'].Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons['Huntsman Knife'].Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons['Huntsman Knife'].Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons['Huntsman Knife'].Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons['Huntsman Knife'].Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons['Huntsman Knife'].Model.Stab,
game:GetService("ReplicatedStorage").Weapons['Incendiary Grenade'].Model.Bounce,
game:GetService("ReplicatedStorage").Weapons['Incendiary Grenade'].Model['Explode1'],
game:GetService("ReplicatedStorage").Weapons['Incendiary Grenade'].Model['Explode2'],
game:GetService("ReplicatedStorage").Weapons['Incendiary Grenade'].Model['Explode3'],
game:GetService("ReplicatedStorage").Weapons['Incendiary Grenade'].Model.Nothing,
game:GetService("ReplicatedStorage").Weapons['Incendiary Grenade'].Model.Pin,
game:GetService("ReplicatedStorage").Weapons['Incendiary Grenade'].Model.Throw,
game:GetService("ReplicatedStorage").Weapons['Incendiary Grenade'].Model.ground,
game:GetService("ReplicatedStorage").Weapons.Karambit.Model.Equip,
game:GetService("ReplicatedStorage").Weapons.Karambit.Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons.Karambit.Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons.Karambit.Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons.Karambit.Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons.Karambit.Model.Stab,
game:GetService("ReplicatedStorage").Weapons['M249'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['M249'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['M249'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['M249'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['M249'].Model.open,
game:GetService("ReplicatedStorage").Weapons['M249'].Model.close,
game:GetService("ReplicatedStorage").Weapons['M249'].Model.bullets,
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model['Apply'],
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model.Remove,
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model.SShoot,
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model['Turn1'],
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model['Turn2'],
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model['Turn3'],
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model['Turn4'],
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model['Turn5'],
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model['Turn6'],
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model['Turn7'],
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model.boltrelease,
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['M4A1'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['M4A4'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['M4A4'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['M4A4'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['M4A4'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['M4A4'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['M4A4'].Model.boltrelease,
game:GetService("ReplicatedStorage").Weapons['M4A4'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['M4A4'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['MAC10'].Model.maghit,
game:GetService("ReplicatedStorage").Weapons['MAC10'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['MAC10'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['MAC10'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['MAC10'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['MAC10'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['MAC10'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['MAG7'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['MAG7'].Model.pump,
game:GetService("ReplicatedStorage").Weapons['MAG7'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['MAG7'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['MAG7'].Model.maghit,
game:GetService("ReplicatedStorage").Weapons['MAG7'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['MP7'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['MP7'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['MP7'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['MP7'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['MP7'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['MP7'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['MP9'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['MP9'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['MP9'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['MP9'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['MP9'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['MP9'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons.Molotov.Model.Bounce,
game:GetService("ReplicatedStorage").Weapons.Molotov.Model['Explode1'],
game:GetService("ReplicatedStorage").Weapons.Molotov.Model['Explode2'],
game:GetService("ReplicatedStorage").Weapons.Molotov.Model['Explode3'],
game:GetService("ReplicatedStorage").Weapons.Molotov.Model.Nothing,
game:GetService("ReplicatedStorage").Weapons.Molotov.Model.Pin,
game:GetService("ReplicatedStorage").Weapons.Molotov.Model.Throw,
game:GetService("ReplicatedStorage").Weapons.Molotov.Model.ground,
game:GetService("ReplicatedStorage").Weapons.Negev.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.Negev.Model.bolt,
game:GetService("ReplicatedStorage").Weapons.Negev.Model.boltin,
game:GetService("ReplicatedStorage").Weapons.Negev.Model.magin,
game:GetService("ReplicatedStorage").Weapons.Negev.Model.magout,
game:GetService("ReplicatedStorage").Weapons.Negev.Model.lidopen,
game:GetService("ReplicatedStorage").Weapons.Negev.Model.lidclose,
game:GetService("ReplicatedStorage").Weapons.Negev.Model.bullets,
game:GetService("ReplicatedStorage").Weapons.Negev.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.Nova.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.Nova.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.Nova.Model.bolt,
game:GetService("ReplicatedStorage").Weapons.Nova.Model['insert1'],
game:GetService("ReplicatedStorage").Weapons.Nova.Model['insert2'],
game:GetService("ReplicatedStorage").Weapons.Nova.Model['insert3'],
game:GetService("ReplicatedStorage").Weapons.Nova.Model['insert4'],
game:GetService("ReplicatedStorage").Weapons.Nova.Model['insert5'],
game:GetService("ReplicatedStorage").Weapons.Nova.Model.pump,
game:GetService("ReplicatedStorage").Weapons['P2000'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['P2000'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['P2000'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['P2000'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['P2000'].Model.slide,
game:GetService("ReplicatedStorage").Weapons['P2000'].Model.slidein,
game:GetService("ReplicatedStorage").Weapons['P250'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['P250'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['P250'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['P250'].Model.slide,
game:GetService("ReplicatedStorage").Weapons['P250'].Model.slidein,
game:GetService("ReplicatedStorage").Weapons['P250'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['P90'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['P90'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['P90'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons['P90'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['P90'].Model.maghit,
game:GetService("ReplicatedStorage").Weapons['P90'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['P90'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['R8'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['R8'].Model.close,
game:GetService("ReplicatedStorage").Weapons['R8'].Model.insert,
game:GetService("ReplicatedStorage").Weapons['R8'].Model.open,
game:GetService("ReplicatedStorage").Weapons['R8'].Model.pull,
game:GetService("ReplicatedStorage").Weapons['R8'].Model.release,
game:GetService("ReplicatedStorage").Weapons['R8'].Model.unpull,
game:GetService("ReplicatedStorage").Weapons['R8'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.SG.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.SG.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.SG.Model.magin,
game:GetService("ReplicatedStorage").Weapons.SG.Model.magout,
game:GetService("ReplicatedStorage").Weapons.SG.Model.boltin,
game:GetService("ReplicatedStorage").Weapons.SG.Model.bolt,
game:GetService("ReplicatedStorage").Weapons.SawedOff.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.SawedOff.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.SawedOff.Model['insert2'],
game:GetService("ReplicatedStorage").Weapons.SawedOff.Model['insert3'],
game:GetService("ReplicatedStorage").Weapons.SawedOff.Model['insert4'],
game:GetService("ReplicatedStorage").Weapons.SawedOff.Model['insert5'],
game:GetService("ReplicatedStorage").Weapons.SawedOff.Model['insert1'],
game:GetService("ReplicatedStorage").Weapons.SawedOff.Model.bolt,
game:GetService("ReplicatedStorage").Weapons.Scout.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.Scout.Model.magin,
game:GetService("ReplicatedStorage").Weapons.Scout.Model.magout,
game:GetService("ReplicatedStorage").Weapons.Scout.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.Scout.Model.boltin,
game:GetService("ReplicatedStorage").Weapons.Scout.Model.bolt,
game:GetService("ReplicatedStorage").Weapons.Scout.Model.maghit,
game:GetService("ReplicatedStorage").Weapons.Scout.Model.Zoom,
game:GetService("ReplicatedStorage").Weapons.Sickle.Model.Equip,
game:GetService("ReplicatedStorage").Weapons.Sickle.Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons.Sickle.Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons.Sickle.Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons.Sickle.Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons.Sickle.Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons.Sickle.Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons.Sickle.Model.Stab,
game:GetService("ReplicatedStorage").Weapons['Smoke Grenade'].Model.Bounce,
game:GetService("ReplicatedStorage").Weapons['Smoke Grenade'].Model.Nothing,
game:GetService("ReplicatedStorage").Weapons['Smoke Grenade'].Model.Throw,
game:GetService("ReplicatedStorage").Weapons['Smoke Grenade'].Model.Pin,
game:GetService("ReplicatedStorage").Weapons['Smoke Grenade'].Model['Explode3'],
game:GetService("ReplicatedStorage").Weapons['Smoke Grenade'].Model['Explode2'],
game:GetService("ReplicatedStorage").Weapons['Smoke Grenade'].Model['Explode1'],
game:GetService("ReplicatedStorage").Weapons['T Knife'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['T Knife'].Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons['T Knife'].Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons['T Knife'].Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons['T Knife'].Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons['T Knife'].Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons['T Knife'].Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons['T Knife'].Model.Stab,
game:GetService("ReplicatedStorage").Weapons['Tec9'].Model.Empty,
game:GetService("ReplicatedStorage").Weapons['Tec9'].Model.Shoot,
game:GetService("ReplicatedStorage").Weapons['Tec9'].Model.magin,
game:GetService("ReplicatedStorage").Weapons['Tec9'].Model.magout,
game:GetService("ReplicatedStorage").Weapons['Tec9'].Model.boltin,
game:GetService("ReplicatedStorage").Weapons['Tec9'].Model.bolt,
game:GetService("ReplicatedStorage").Weapons.UMP.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.UMP.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.UMP.Model.magin,
game:GetService("ReplicatedStorage").Weapons.UMP.Model.magout,
game:GetService("ReplicatedStorage").Weapons.UMP.Model.boltin,
game:GetService("ReplicatedStorage").Weapons.UMP.Model.bolt,
game:GetService("ReplicatedStorage").Weapons.USP.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.USP.Model.apply,
game:GetService("ReplicatedStorage").Weapons.USP.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.USP.Model.slide,
game:GetService("ReplicatedStorage").Weapons.USP.Model.slidein,
game:GetService("ReplicatedStorage").Weapons.USP.Model['turn1'],
game:GetService("ReplicatedStorage").Weapons.USP.Model['turn2'],
game:GetService("ReplicatedStorage").Weapons.USP.Model['turn3'],
game:GetService("ReplicatedStorage").Weapons.USP.Model['turn4'],
game:GetService("ReplicatedStorage").Weapons.USP.Model['turn5'],
game:GetService("ReplicatedStorage").Weapons.USP.Model['turn6'],
game:GetService("ReplicatedStorage").Weapons.USP.Model['turn7'],
game:GetService("ReplicatedStorage").Weapons.USP.Model.SShoot,
game:GetService("ReplicatedStorage").Weapons.USP.Model.magin,
game:GetService("ReplicatedStorage").Weapons.USP.Model.magout,
game:GetService("ReplicatedStorage").Weapons.USP.Model.remove,
game:GetService("ReplicatedStorage").Weapons.XM.Model.Empty,
game:GetService("ReplicatedStorage").Weapons.XM.Model.Shoot,
game:GetService("ReplicatedStorage").Weapons.XM.Model.bolt,
game:GetService("ReplicatedStorage").Weapons.XM.Model.boltin,
game:GetService("ReplicatedStorage").Weapons.XM.Model['insert1'],
game:GetService("ReplicatedStorage").Weapons.XM.Model['insert2'],
game:GetService("ReplicatedStorage").Weapons.XM.Model['insert3'],
game:GetService("ReplicatedStorage").Weapons.XM.Model['insert4'],
game:GetService("ReplicatedStorage").Weapons.XM.Model['insert5'],
game:GetService("ReplicatedStorage").Weapons['Butterfly Knife'].Model.Equip,
game:GetService("ReplicatedStorage").Weapons['Butterfly Knife'].Model['Hit1'],
game:GetService("ReplicatedStorage").Weapons['Butterfly Knife'].Model['Hit2'],
game:GetService("ReplicatedStorage").Weapons['Butterfly Knife'].Model['Hit3'],
game:GetService("ReplicatedStorage").Weapons['Butterfly Knife'].Model['Hit4'],
game:GetService("ReplicatedStorage").Weapons['Butterfly Knife'].Model['Shoot1'],
game:GetService("ReplicatedStorage").Weapons['Butterfly Knife'].Model['Shoot2'],
game:GetService("ReplicatedStorage").Weapons['Butterfly Knife'].Model.Stab,
}
Sync.allGlobalSideSounds = {
workspace.RoundEnd,
workspace.RoundStart,
workspace.Sounds.Arm,
workspace.Sounds.CT,
workspace.Sounds.Defuse,
workspace.Sounds.T,
workspace.Sounds.Rescue,
workspace.Sounds.Becky,
workspace.Sounds.Beep,
}
function Sync:makefakeinstance(stf)
local fakeinstancereturns = {}
fakeinstancereturns = {
Parent = game.SoundService,
Position = Vector3.new(),
Size = Vector3.new(9999999,9999999,9999999),
CFrame = CFrame.new(),
ClassName = "Unknown",
IsA = function()return true end,
IsDescendantOf = function()return true end,
GetChildren = function()return{fakeinstancereturns}end,
GetDescendants = function()return{fakeinstancereturns}end,
FindFirstChild=function()return fakeinstancereturns end,
}
for i, v in pairs (stf or{}) do
fakeinstancereturns[i] = v
end
return fakeinstancereturns
end
getgenv().Id = "rbxassetid://2738830850"
for i, v in pairs (Sync.allServerSideSounds) do
game:GetService("ReplicatedStorage").Events.PlayVoice:FireServer(v,getgenv().Id)
end
for i, v in pairs (Sync.allGlobalSideSounds) do
game:GetService("ReplicatedStorage").Events.PlayVoice:FireServer(v,getgenv().Id)
end
game.DescendantAdded:Connect(function(obj)
if not obj:IsA("Sound") then return end
game:GetService("ReplicatedStorage").Events.PlayVoice:FireServer(obj,getgenv().Id)
end)
end)

local players = something:Sector("players", "Left")

players:Element("lmao", "Player", {options = loopkillplr, Amount = 33})
players:Element("Toggle", "Loop kill", nil, function(tbl)
	if tbl.Toggle then
		_G.Disable1 = false
		local step1
		step1 = game:GetService("RunService").RenderStepped:Connect(function()
		if _G.Disable1 then step1:Disconnect() return end
			if Players[values.something.players.Player.Dropdown].Character and Players[values.something.players.Player.Dropdown].Team ~= LocalPlayer.Team and Players[values.something.players.Player.Dropdown].Character:FindFirstChild("UpperTorso") then
				local oh1 = Players[values.something.players.Player.Dropdown].Character.Head
				local oh2 = Players[values.something.players.Player.Dropdown].Character.Head.CFrame.p 
				local oh3 = "Crowbar"
				local oh4 = 99648368743634
				local oh5 = nil
				local oh6 = Vector3.new()
				local oh7 = Vector3.new()
				local oh8 = math.random(160,99999)
				local oh9 = true
				local oh10 = true
				local oh11 = Vector3.new()
				local oh12 = 16000
				local oh13 = Vector3.new()
				local oh14 = Vector3.new()
				local oh15 = Vector3.new()
				for i =1, 3 do
				game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13, oh14, oh15)
			  end
		   end
		end)
	else
		_G.Disable1 = true
		print("stix")
	end
end)
players:Element("Toggle", "Loop break", nil, function(tbl)
	if tbl.Toggle then
		_G.Disable2 = false
		local step2
		step2 = game:GetService("RunService").RenderStepped:Connect(function()
		if _G.Disable2 then step2:Disconnect() return end
			if Players[values.something.players.Player.Dropdown].Character and Players[values.something.players.Player.Dropdown].Character:FindFirstChild("UpperTorso") then
				game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.HeadScale})
				game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.BodyDepthScale})
				game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.BodyWidthScale})
				game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.BodyHeightScale})
				wait(.1)
				game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.BodyWidthScale})
				game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.HeadScale})
				wait(.1)
				game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.BodyHeightScale})
			  end
		   end)
	else
		_G.Disable2 = true
		print("хосманька")
	end
end)
players:Element("Button", "Break player", nil, function(tbl)
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.HeadScale})
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.BodyDepthScale})
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.BodyWidthScale})
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.BodyHeightScale})
end)
players:Element("Button", "Make player skinny", nil, function(tbl)
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.BodyWidthScale})
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.HeadScale})
end)
players:Element("Button", "Turn player into weird character", nil, function(tbl)
	game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = workspace[values.something.players.Player.Dropdown].Humanoid.BodyHeightScale})
end)
players:Element("Button", "Break all players", nil, function(tbl)
	CreateHitElement("Players gonna break in next round",Color3.new(1,1,1), 5, 0, 270, 0, 22)
	for i,v in pairs(game.StarterPlayer.StarterHumanoid:GetChildren()) do
		game:GetService("ReplicatedStorage").Events.IDBody:FireServer("id", {Identified = v})
		end
end)


local knife = skins:Sector("knife", "Left")
knife:Element("Toggle", "knife changer")
knife:Element("Scroll", "model", {options = AllKnives, Amount = 15})

local glove = skins:Sector("glove", "Left")
glove:Element("Toggle", "glove changer")
glove:Element("ScrollDrop", "model", {options = AllGloves, Amount = 9})

local skin = skins:Sector("skins", "Right")
skin:Element("Toggle", "skin changer")
skin:Element("ScrollDrop", "skin", {options = AllSkins, Amount = 15, alphabet = true})

local characters = skins:Sector("characters", "Right")
characters:Element("Toggle", "character changer", nil, function(tbl)
	if tbl.Toggle then
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Gun") then
			ChangeCharacter(ChrModels:FindFirstChild(values.skins.characters.skin.Scroll))
		end
	end
end)
characters:Element("Scroll", "skin", {options = AllCharacters, Amount = 9, alphabet = true}, function(tbl)
	if values.skins.characters["character changer"].Toggle then
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Gun") then
			ChangeCharacter(ChrModels:FindFirstChild(tbl.Scroll))
		end
	end
end)

local angles = angles:Sector("angles", "Left")
angles:Element("Toggle", "enabled")
angles:Element("Dropdown", "yaw base", {options = {"camera", "targets", "spin", "random", "waiting"}})
angles:Element("Slider", "yaw offset", {min = -180, max = 180, default = 0})
angles:Element("Toggle", "jitter")
angles:Element("Slider", "jitter offset", {min = -180, max = 180, default = 0})
angles:Element("Dropdown", "pitch", {options = {"none", "up", "down", "zero", "180", "random"}})
angles:Element("Toggle", "extend pitch")
angles:Element("Dropdown", "body roll", {options = {"off", "180"}})
angles:Element("Slider", "spin speed", {min = 1, max = 48, default = 4})


local aimbot = rage:Sector("aimbot", "Left")
aimbot:Element("Toggle", "enabled")
aimbot:Element("Toggle", "silent aim")
aimbot:Element("Toggle", "prediction")
aimbot:Element("Toggle", "rage mode")
aimbot:Element('Slider', 'penetra', {min = 1, max = 20, default = 1}) -- 3
aimbot:Element('Slider', 'forward track', {min = 1, max = 50, default = 1})
aimbot:Element("Dropdown", "hitscan method", {options = {"old", "new"}})
aimbot:Element("Slider", "points adding", {min = 1, max = 101, default = 15})
aimbot:Element("Slider", "scan speed", {min = 1, max = 100, default = 100})
aimbot:Element("Toggle", "force head")
aimbot:Element("Toggle", "hit logs")

--- go out fighting...

local weapons = rage:MSector("weapons", "Left")
local default = weapons:Tab("default")
local pistol = weapons:Tab("pistol")
local rifle = weapons:Tab("rifle")
local scout = weapons:Tab("scout")
local awp = weapons:Tab("awp")
local auto = weapons:Tab("auto")

local function AddRage(Tab)
	Tab:Element('Jumbobox', 'hitboxes', {options = {'head', 'torso', 'pelvis', 'arms', 'hand'}})
	Tab:Element("Slider", "minimum damage", {min = 1, max = 100, default = 1})
	Tab:Element("Slider", "max fov", {min = 1, max = 360, default = 360})

end

AddRage(default)

pistol:Element("Toggle", "override default")
AddRage(pistol)

rifle:Element("Toggle", "override default")
AddRage(rifle)

scout:Element("Toggle", "override default")
AddRage(scout)

awp:Element("Toggle", "override default")
AddRage(awp)

auto:Element("Toggle", "override default")
AddRage(auto)


local others = rage:Sector("others", "Right")
others:Element("Toggle", "remove head")
others:Element("Dropdown", "leg movement", {options = {"off", "slide"}})
others:Element("ToggleKeybind", "fakelagg", nil, function(val)
    if IsAlive(LocalPlayer) and UserInputService:GetFocusedTextBox() == nil then
        for i,v in pairs(LocalPlayer.Character:GetChildren()) do
            if v:IsA("BasePart") then
                v.Anchored = val
            end
        end
    end
end)

local players = visuals:Sector("players", "Left")
players:Element("Toggle", "teammates")
players:Element("ToggleColor", "box", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("ToggleColor", "name", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("Toggle", "health")
players:Element("ToggleColor", "weapon", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("ToggleColor", "weapon icon", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("Jumbobox", "indicators", {options = {"armor"}})
players:Element("Jumbobox", "outlines", {options = {"drawings", "text"}, default = {Jumbobox = {"drawings", "text"}}})
players:Element("Dropdown", "font", {options = {"Plex", "Monospace", "System", "UI"}})
players:Element("Slider", "size", {min = 12, max = 16, default = 13})
local effects = visuals:Sector("effects", "Right")
effects:Element("ToggleTrans", "weapon chams", {default = {Color = Color3.fromRGB(255,255,255), Transparency = 0}}, function(tbl)
	if WeaponObj == nil then return end
	if tbl.Toggle then
		for i,v in pairs(WeaponObj) do
			UpdateWeapon(v)
		end
	else
		for i,v in pairs(WeaponObj) do
			if v:IsA("MeshPart") then v.TextureID = v.OriginalTexture.Value end
			if v:IsA("Part") and v:FindFirstChild("Mesh") and not v:IsA("BlockMesh") then
				v.Mesh.TextureId = v.Mesh.OriginalTexture.Value
				v.Mesh.VertexColor = Vector3.new(1,1,1)
			end
			v.Color = v.OriginalColor.Value
			v.Material = v.OriginalMaterial.Value
			v.Transparency = 0
		end
	end
end)
effects:Element("Dropdown", "weapon material", {options = {"Smooth", "Flat", "ForceField", "Glass"}}, function(tbl)
	if WeaponObj == nil then return end
	if values.visuals.effects["weapon chams"].Toggle then
		for i,v in pairs(WeaponObj) do
			UpdateWeapon(v)
		end
	end
end)
effects:Element("Slider", "reflectance", {min = 0, max = 100, default = 0}, function(tbl)
	if values.visuals.effects["weapon chams"].Toggle then
		for i,v in pairs(WeaponObj) do
			UpdateWeapon(v)
		end
	end
end)
effects:Element("ToggleTrans", "accessory chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val)
	if RArm == nil or LArm == nil then return end
	if val.Toggle then
		if RGlove ~= nil then
			UpdateAccessory(RGlove)
		end
		if RSleeve ~= nil then
			UpdateAccessory(RSleeve)
		end
		if LGlove ~= nil then
			UpdateAccessory(LGlove)
		end
		if LSleeve ~= nil then
			UpdateAccessory(LSleeve)
		end
	else
		if RGlove then
			ReverseAccessory(RGlove)
		end
		if LGlove then
			ReverseAccessory(LGlove)
		end
		if RSleeve then
			ReverseAccessory(RSleeve)
		end
		if LSleeve then
			ReverseAccessory(LSleeve)
		end
	end
end)
effects:Element("Dropdown", "accessory material", {options = {"Smooth","ForceField"}}, function(val)
	if RArm == nil or LArm == nil then return end
	if values.visuals.effects["accessory chams"].Toggle then
		if RGlove ~= nil then
			UpdateAccessory(RGlove)
		end
		if RSleeve ~= nil then
			UpdateAccessory(RSleeve)
		end
		if LGlove ~= nil then
			UpdateAccessory(LGlove)
		end
		if LSleeve ~= nil then
			UpdateAccessory(LSleeve)
		end
	end
end)
effects:Element("ToggleTrans", "arm chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val)
	if RArm == nil then return end
	if LArm == nil then return end
	if val.Toggle then
		RArm.Color = val.Color
		LArm.Color = val.Color
		RArm.Transparency = val.Transparency
		LArm.Transparency = val.Transparency
	else
		RArm.Color = RArm.Color3Value.Value
		LArm.Color = RArm.Color3Value.Value
		RArm.Transparency = 0
		LArm.Transparency = 0
	end
end)
effects:Element("Jumbobox", "removals", {options = {"scope", "scope lines", "flash", "smoke", "decals", "shadows", "clothes"}}, function(val)
	local tbl = val.Jumbobox
	if table.find(tbl, "decals") then
		Client.createbullethole = function() end
		for i,v in pairs(workspace.Debris:GetChildren()) do
			if v.Name == "Bullet" or v.Name == "SurfaceGui" then
				v:Destroy()
			end
		end
	else
		Client.createbullethole = oldcreatebullethole
	end
	if table.find(tbl, "clothes") then
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") then
			if LocalPlayer.Character:FindFirstChild("Shirt") then
				LocalPlayer.Character:FindFirstChild("Shirt").ShirtTemplate = ""
			end
			if LocalPlayer.Character:FindFirstChild("Pants") then
				LocalPlayer.Character:FindFirstChild("Pants").PantsTemplate = ""
			end
		end
	else
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") then
			if LocalPlayer.Character:FindFirstChild("Shirt") then
				LocalPlayer.Character:FindFirstChild("Shirt").ShirtTemplate = LocalPlayer.Character:FindFirstChild("Shirt").OriginalTexture.Value
			end
			if LocalPlayer.Character:FindFirstChild("Pants") then
				LocalPlayer.Character:FindFirstChild("Pants").PantsTemplate = LocalPlayer.Character:FindFirstChild("Pants").OriginalTexture.Value
			end
		end
	end
	if table.find(tbl, "scope") then
		Crosshairs.Scope.ImageTransparency = 1
        Crosshairs.Scope.Scope.ImageTransparency = 1
        Crosshairs.Frame1.Transparency = 1
        Crosshairs.Frame2.Transparency = 1
        Crosshairs.Frame3.Transparency = 1
        Crosshairs.Frame4.Transparency = 1
	else
		Crosshairs.Scope.ImageTransparency = 0
        Crosshairs.Scope.Scope.ImageTransparency = 0
        Crosshairs.Frame1.Transparency = 0
        Crosshairs.Frame2.Transparency = 0
        Crosshairs.Frame3.Transparency = 0
        Crosshairs.Frame4.Transparency = 0
	end
	PlayerGui.Blnd.Enabled = not table.find(tbl, "flash") and true or false
	Lighting.GlobalShadows = not table.find(tbl, "shadows") and true or false
	if RayIgnore:FindFirstChild("Smokes") then
		if table.find(tbl, "smoke") then
			for i,smoke in pairs(RayIgnore.Smokes:GetChildren()) do
				smoke.ParticleEmitter.Rate = 0
			end
		else
			for i,smoke in pairs(RayIgnore.Smokes:GetChildren()) do
				smoke.ParticleEmitter.Rate = smoke.OriginalRate.Value
			end
		end
	end
end)
effects:Element("ToggleColor", "Ambient", {default = {Color = COL3RGB(255,255,255)}}, function(val) 
	if val.Toggle then
		game.Lighting.ColorShift_Bottom = val.Color
		game.Lighting.ColorShift_Top = val.Color
		game.Lighting.OutdoorAmbient = val.Color
		game.Lighting.ColorShift_Bottom = val.Color
		game.Lighting.ColorShift_Top = val.Color
	else
		game.Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
		game.Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
		game.Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
		game.Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
		game.Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
	end
end) 
effects:Element("ToggleColor", "world color", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val)
	if val.Toggle then
		Camera.ColorCorrection.TintColor = val.Color
	else
		Camera.ColorCorrection.TintColor = Color3.fromRGB(255,255,255)
	end
end)
effects:Element("Toggle", "shadowmap technology", nil, function(val) sethiddenproperty(Lighting, "Technology", val.Toggle and "ShadowMap" or "Legacy") end)

local self = visuals:Sector("self", "Right")
self:Element("ToggleKeybind", "third person", {}, function(tbl)
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
		if tbl.Toggle then
			if tbl.Active then
				LocalPlayer.CameraMaxZoomDistance = values.visuals.self.distance.Slider
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider
				LocalPlayer.CameraMaxZoomDistance = values.visuals.self.distance.Slider
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider
			else
				LocalPlayer.CameraMaxZoomDistance = 0
				LocalPlayer.CameraMinZoomDistance = 0
				LocalPlayer.CameraMaxZoomDistance = 0
				LocalPlayer.CameraMinZoomDistance = 0
			end
		else
            LocalPlayer.CameraMaxZoomDistance = 0
            LocalPlayer.CameraMinZoomDistance = 0
		end
	end
end)
self:Element("Slider", "distance", {min = 6, max = 18, default = 12}, function(tbl)
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
		if values.visuals.self["third person"].Toggle then
			if values.visuals.self["third person"].Active then
				LocalPlayer.CameraMaxZoomDistance = tbl.Slider
				LocalPlayer.CameraMinZoomDistance = tbl.Slider
				LocalPlayer.CameraMaxZoomDistance = tbl.Slider
				LocalPlayer.CameraMinZoomDistance = tbl.Slider
			else
				LocalPlayer.CameraMaxZoomDistance = 0
				LocalPlayer.CameraMinZoomDistance = 0
			end
		else
			LocalPlayer.CameraMaxZoomDistance = 0
			LocalPlayer.CameraMinZoomDistance = 0
		end
	end
end)
LocalPlayer:GetPropertyChangedSignal("CameraMinZoomDistance"):Connect(function(current)
	if values.visuals.self["third person"].Toggle then
		if values.visuals.self["third person"].Active then
			if current ~= values.visuals.self.distance.Slider then
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider
			end
		end
	end
end)
self:Element("Slider", "fov changer", {min = 0, max = 120, default = 80}, function(value)
	RunService.RenderStepped:Wait()
	if LocalPlayer.Character == nil then return end
	if fov == value.Slider then return end
	if values.visuals.self["on scope"].Toggle or not LocalPlayer.Character:FindFirstChild("AIMING") then
		Camera.FieldOfView = value.Slider
	end
end)
self:Element("Toggle", "on scope")
self:Element("Toggle", "no gun bob")
self:Element("Toggle", "visualize silent angle") 
self:Element("Slider", "silent angle speed", {min = 0, max = 10, default = 1}) 
self:Element("Toggle", "viewmodel changer")
self:Element("Slider", "viewmodel x", {min = -180, max = 180})
self:Element("Slider", "viewmodel y", {min = -180, max = 180})
self:Element("Slider", "viewmodel z", {min = -180, max = 180})
self:Element("Slider", "pitch", {min = -360, max = 360})
self:Element("Slider", "yaw", {min = -360, max = 360})
self:Element("Slider", "roll", {min = -360, max = 360})
self:Element("Slider", "scope blend", {min = 0, max = 100, default = 0})

local ads = Client.updateads
Client.updateads = function(self, ...)
    local args = {...}
	coroutine.wrap(function()
		wait()
		if LocalPlayer.Character ~= nil then
			for _,part in pairs(LocalPlayer.Character:GetDescendants()) do
				if part:IsA("Part") or part:IsA("MeshPart") then
					if part.Transparency ~= 1 then
						part.Transparency = LocalPlayer.Character:FindFirstChild("AIMING") and values.visuals.self["scope blend"].Slider/100 or 0
					end
				end
				if part:IsA("Accessory") then
					part.Handle.Transparency = LocalPlayer.Character:FindFirstChild("AIMING") and values.visuals.self["scope blend"].Slider/100 or 0
				end
			end
		end
	end)()
    return ads(self, ...)
end

local world = visuals:Sector("world", "Left")
world:Element("Slider", "time changer", {min = 0, max = 15, default = 0}, function(tbl) 
	game.Lighting.ClockTime = tbl.Slider
end)  
world:Element("ToggleTrans", "molly radius", {default = {Color = Color3.fromRGB(255,0,0)}}, function(tbl)
	if RayIgnore:FindFirstChild("Fires") == nil then return end
	if tbl.Toggle then
		for i,fire in pairs(RayIgnore:FindFirstChild("Fires"):GetChildren()) do
			fire.Transparency = tbl.Transparency
            fire.Color = tbl.Color
		end
	else
		for i,fire in pairs(RayIgnore:FindFirstChild("Fires"):GetChildren()) do
			fire.Transparency = 1
		end
	end
end)
world:Element("ToggleColor", "smoke radius", {default = {Color = Color3.fromRGB(0, 255, 0)}}, function(tbl)
	if RayIgnore:FindFirstChild("Smokes") == nil then return end
	if tbl.Toggle then
		for i,smoke in pairs(RayIgnore:FindFirstChild("Smokes"):GetChildren()) do
			smoke.Transparency = 0
            smoke.Color = tbl.Color
		end
	else
		for i,smoke in pairs(RayIgnore:FindFirstChild("Smokes"):GetChildren()) do
			smoke.Transparency = 1
		end
	end
end)
world:Element('ToggleColor', 'color_for_bullet_tracer', {default = {Color = Color3.fromRGB(0, 255, 0)}})
world:Element("Toggle", "bullet Tracer ",  nil, function(tbl)
	if tbl.Toggle then
		local nigger1 = true
		   if nigger1 == true then
			local Services = {
				Players = game:GetService("Players"),
				UserInputService = game:GetService("UserInputService"),
				RunService = game:GetService("RunService"),
				}

				local Local = {
				Player = Services.Players.LocalPlayer,
				Mouse = Services.Players.LocalPlayer:GetMouse(),
				}

				local Other = {
				Camera = workspace.CurrentCamera,
				BeamPart = Instance.new("Part", workspace)
				}

				Other.BeamPart.Name = "BeamPart"
				Other.BeamPart.Transparency = 1

				local Settings = {
				StartColor = Color3.new(1, 1, 1),
				EndColor = Color3.new(1, 0, 0),
				StartWidth = 1,
				EndWidth = 0.20,
				ShowImpactPoint = false,
				ImpactTransparency = 0,
				ImpactColor = Color3.new(1, 1, 1),
				Time = 0.5,
				}


			local mt = getrawmetatable(game)
			local old = mt.__namecall
			local lp = game:GetService("Players").LocalPlayer
			local rs = game:GetService("RunService").RenderStepped
			local lasthittick = tick()

				local funcs = {}
				local Silent = false

				function funcs:Beam(v1, v2)
					local colorSequence = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Settings.StartColor),
						ColorSequenceKeypoint.new(1, Settings.EndColor),
						})
				local Part = Instance.new("Part", Other.BeamPart)
				Part.Size = Vector3.new()
				Part.Transparency = 1
				Part.CanCollide = false
				Part.CFrame = CFrame.new(v1)
				Part.Anchored = true
				local Attachment = Instance.new("Attachment", Part)
				local Part2 = Instance.new("Part", Other.BeamPart)
				Part2.Size = Vector3.new()
				Part2.Transparency = ShowImpactPoint and Settings.ImpactTransparency or 1
				Part2.CanCollide = false
				Part2.CFrame = CFrame.new(v2)
				Part2.Anchored = true
				Part2.Color = Settings.ImpactColor
				local Attachment2 = Instance.new("Attachment", Part2)
				local Beam = Instance.new("Beam", Part)
				Beam.FaceCamera = true
				Beam.Texture = "rbxassetid://446111271"
				Beam.TextureLength = 1
				Beam.TextureMode = Enum.TextureMode.Stretch
				Beam.TextureSpeed = 2.4
				Beam.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, values.visuals.world['color_for_bullet_tracer'].Color), ColorSequenceKeypoint.new(1, values.visuals.world['color_for_bullet_tracer'].Color)}
				Beam.Attachment0 = Attachment
				Beam.Attachment1 = Attachment2
				Beam.LightEmission = 6
				Beam.LightInfluence = 1
				Beam.Width0 = Settings.StartWidth
				Beam.Width1 = Settings.EndWidth
				delay(Settings.Time, function()
				for i = 0.5, 1, 0.02 do
				wait()
				Beam.Transparency = NumberSequence.new(i)
				end
				Part:Destroy()
				Part2:Destroy()
				end)
			end

				setreadonly(mt, false)
			mt.__namecall = newcclosure(function(self, ...)
				local args = {...}
				if getnamecallmethod() == "FireServer" and self.Name == "Hitpart" or self.Name == "Hit" and tick() - lasthittick > 0.005 then
					lasthittick = tick()
					spawn(function()
						local Beam = funcs:Beam(lp.Character.Gun.Flash.CFrame.p, args[2])
						for i = 1, 1 * lifetime do
							rs:Wait()
							Beam.Transparency = i / (1 * lifetime)
						end
						Beam:Destroy()
					end)
				end
				return old(self, ...)
			end)
		setreadonly(mt, true)

	end
  end
end)    
world:Element("ToggleTrans", "impacts", {default = {Color = Color3.fromRGB(255, 0, 0)}})
world:Element('Slider', 'impacts time', {min = 1, max = 10000, default = 666,})
world:Element("Dropdown", "hitsound", {options = {"none", "skeet", "neverlose", "rust", "custom", "minecraft xp", "win", "cod", "baimware"}})
world:Element("Dropdown", "killsound", {options = {"none", "skeet", "neverlose", "csgo", "ultrakill", "killingspree", "beautiful", "humiliation", "denied"}}) 	
world:Element("Slider", "sound volume", {min = 1, max = 7, default = 1})
world:Element("Dropdown", "skybox", {options = {"none", "nebula", "vaporwave", "clouds"}}, function(tbl)
	local sky = tbl.Dropdown
	if sky ~= "none" then
		if Lighting:FindFirstChildOfClass("Sky") then Lighting:FindFirstChildOfClass("Sky"):Destroy() end
		local skybox = Instance.new("Sky")
		skybox.SkyboxLf = Skyboxes[sky].SkyboxLf
		skybox.SkyboxBk = Skyboxes[sky].SkyboxBk
		skybox.SkyboxDn = Skyboxes[sky].SkyboxDn
		skybox.SkyboxFt = Skyboxes[sky].SkyboxFt
		skybox.SkyboxRt = Skyboxes[sky].SkyboxRt
		skybox.SkyboxUp = Skyboxes[sky].SkyboxUp
		skybox.Name = "override"
		skybox.Parent = Lighting
	else
		if Lighting:FindFirstChildOfClass("Sky") then Lighting:FindFirstChildOfClass("Sky"):Destroy() end
		if oldSkybox ~= nil then oldSkybox:Clone().Parent = Lighting end
	end
end)
world:Element("ToggleColor", "item esp", {default = {Color = Color3.fromRGB(255, 255, 255)}}, function(tbl)
	for i,weapon in pairs(workspace.Debris:GetChildren()) do
		if weapon:IsA("BasePart") and Weapons:FindFirstChild(weapon.Name) then
			weapon.BillboardGui.ImageLabel.Visible = tbl.Toggle and table.find(values.visuals.world["types"].Jumbobox, "icon") and true or false
		end
	end
end)
world:Element("Jumbobox", "types", {options = {"icon"}}, function(tbl)
	for i,weapon in pairs(workspace.Debris:GetChildren()) do
		if weapon:IsA("BasePart") and Weapons:FindFirstChild(weapon.Name) then
			weapon.BillboardGui.ImageLabel.Visible = values.visuals.world["item esp"].Toggle and table.find(tbl.Jumbobox, "icon") and true or false
			weapon.BillboardGui.ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color
		end
	end
end)
local configs = misc:Sector("configs", "Left")
configs:Element("TextBox", "config", {placeholder = "config name"})
configs:Element("Button", "save", {}, function() if values.misc.configs.config.Text ~= "" then library:SaveConfig(values.misc.configs.config.Text) end end)
configs:Element("Button", "load", {}, function() if values.misc.configs.config.Text ~= "" then ConfigLoad:Fire(values.misc.configs.config.Text) end end)
configs:Element("Toggle", "keybind list", nil, function(tbl)
	library:SetKeybindVisible(tbl.Toggle)
end)
configs:Element("Toggle", "spectator list", {}, function(tbl)
	if tbl.Toggle then
	local spec = Instance.new("ScreenGui")
	local TextLabel = Instance.new("TextLabel")

	spec.Name = "spec"
	spec.Parent = game.CoreGui
	spec.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	TextLabel.Parent = spec
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.898996294, 0, 0.24062565, 0)
	TextLabel.Size = UDim2.new(0, 188, 0, 338)
	TextLabel.Font = Enum.Font.Gotham
	TextLabel.Text = ""
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000
	TextLabel.TextStrokeTransparency = 0.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Right
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top

	function GetSpectators()
		local CurrentSpectators = ""
		for i,v in pairs(game.Players:GetChildren()) do 
			pcall(function()
				if v ~= game.Players.LocalPlayer then
					if not v.Character then 
						if (v.CameraCF.Value.p - game:GetService("Workspace").CurrentCamera.CFrame.p).Magnitude < 10 then 
							if CurrentSpectators == "" then
								CurrentSpectators = v.Name
							else
								CurrentSpectators = CurrentSpectators.. "\n" ..v.Name
							end
						end
					end
				end
			end)
		end
		return CurrentSpectators
	end

	spawn(function()
		while wait(.1) do
			if spec.Enabled then
				TextLabel.Text = GetSpectators()
			end
		end
	end)

else
game.CoreGui.spec:Destroy()
end
end)

local crosshaireditor = misc:Sector("crosshair editor", "Right")
local function UpdateCrosshair()
	if values.misc["crosshair editor"].enabled.Toggle then
		local length = values.misc["crosshair editor"].length.Slider
		Crosshair.LeftFrame.Size = UDim2.new(0, length, 0, 2)
		Crosshair.RightFrame.Size = UDim2.new(0, length, 0, 2)
		Crosshair.TopFrame.Size = UDim2.new(0, 2, 0, length)
		Crosshair.BottomFrame.Size = UDim2.new(0, 2, 0, length)
		for _,frame in pairs(Crosshair:GetChildren()) do
			if string.find(frame.Name, "Frame") then
				frame.BorderColor3 = Color3.new(0,0,0)
				if values.misc["crosshair editor"].border.Toggle then
					frame.BorderSizePixel = 1
				else
					frame.BorderSizePixel = 0
				end
			end
		end
	else
		Crosshair.LeftFrame.Size = UDim2.new(0, 10, 0, 2)
		Crosshair.RightFrame.Size = UDim2.new(0, 10, 0, 2)
		Crosshair.TopFrame.Size = UDim2.new(0, 2, 0, 10)
		Crosshair.BottomFrame.Size = UDim2.new(0, 2, 0, 10)
		for _,frame in pairs(Crosshair:GetChildren()) do
			if string.find(frame.Name, "Frame") then
				frame.BorderSizePixel = 0
			end
		end
	end
end
crosshaireditor:Element("Toggle", "enabled", nil, UpdateCrosshair)
crosshaireditor:Element("Slider", "length", {min = 1, max = 15, default = 10}, UpdateCrosshair)
crosshaireditor:Element("Toggle", "border", nil, UpdateCrosshair)

local client = misc:Sector("client", "Right")
client:Element("Toggle", "infinite cash", nil, function(tbl)
	if tbl.Toggle then
		LocalPlayer.Cash.Value = 8000
	end
end)
client:Element("Toggle", "infinite crouch")
client:Element("Jumbobox", "damage bypass", {options = {"fire", "fall"}})
client:Element("Jumbobox", "gun modifiers", {options = {"recoil", "spread", "ammo", "penetration", "firerate", "automatic"}})
client:Element("Toggle", "remove killers", {}, function(tbl)
	if tbl.Toggle then
		if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Killers") then
			local clone = workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Clone()
			clone.Name = "KillersClone"
			clone.Parent = workspace:FindFirstChild("Map")

			workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Destroy()
		end
	else
		if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("KillersClone") then
			workspace:FindFirstChild("Map"):FindFirstChild("KillersClone").Name = "Killers"
		end
	end
end)
client:Element("ToggleColor", "hitmarker", {default = {Color = Color3.fromRGB(255,255,255)}})
client:Element("Toggle", "buy any grenade")
client:Element("Toggle", "inf grenade")
client:Element("Toggle", "chat alive")
client:Element("Jumbobox", "shop", {options = {"inf time", "anywhere"}})
client:Element("Toggle", "anti spectate")
client:Element("Toggle", "Watermark", {}, function(tbl)
	if tbl.Toggle then
		local Watermark = Instance.new("ScreenGui")
		local ScreenLabel = Instance.new("Frame")
		local Color = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")
		local Container = Instance.new("Frame")
		local UIPadding = Instance.new("UIPadding")
		local Text = Instance.new("TextLabel")
		local Background = Instance.new("Frame")
		local UIGradient_2 = Instance.new("UIGradient")

		Watermark.Name = "Watermark"
		Watermark.Parent = game.CoreGui.ScreenGui

		ScreenLabel.Name = "ScreenLabel"
		ScreenLabel.Parent = Watermark
		ScreenLabel.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
		ScreenLabel.BackgroundTransparency = 1.000
		ScreenLabel.BorderColor3 = Color3.fromRGB(20, 20, 20)
		ScreenLabel.Position = UDim2.new(0, 100, 0, -26)
		ScreenLabel.Size = UDim2.new(0, 300, 0, 25)

		Color.Name = "Color"
		Color.Parent = ScreenLabel
		Color.BorderSizePixel = 0
		Color.Size = UDim2.new(1.65, 0, 0, 5)
		Color.ZIndex = 2

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(87, 22, 161)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 22, 161))}
		UIGradient.Rotation = 90
		UIGradient.Parent = Color

		Container.Name = "Container"
		Container.Parent = ScreenLabel
		Container.BackgroundTransparency = 1.000
		Container.BorderSizePixel = 0
		Container.Position = UDim2.new(0, 0, 0, 5)
		Container.Size = UDim2.new(2.4, 0, 0, 14)
		Container.ZIndex = 3

		UIPadding.Parent = Container
		UIPadding.PaddingLeft = UDim.new(0, 4)

		Text.Name = "Text"
		Text.Parent = Container
		Text.BackgroundTransparency = 1.000
		Text.Position = UDim2.new(0.0230769236, 0, 0, 0)
		Text.Size = UDim2.new(1, 0, 1, 0)
		Text.ZIndex = 4
		Text.Font = Enum.Font.Code
		Text.Text = "cripbot-paste| 00:00:00 | Oct.17, 2021 | $$$ "
		Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text.TextSize = 14.000
		Text.TextStrokeTransparency = 0.000
		Text.TextXAlignment = Enum.TextXAlignment.Left

		Background.Name = "Background"
		Background.Parent = ScreenLabel
		Background.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
		Background.BorderColor3 = Color3.fromRGB(20, 20, 20)
		Background.Size = UDim2.new(1.65, 0, 1, 0)

		UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(90, 90, 90))}
		UIGradient_2.Rotation = 90
		UIGradient_2.Parent = Background

		local function UQHM_fake_script()
			local script = Instance.new('LocalScript', Text)
			local fps = game:GetService("Workspace"):GetRealPhysicsFPS()
			local mo = "A.M."
			local mont = nil
			while wait() do
				local l = math.fmod(tick(),86400)
				local h = math.floor(l/3600)
				local m = math.floor(l/60-h*60)
				local s = math.floor(math.fmod(l,60))
				local y = math.floor(1970+tick()/31579200)
				local mon = {{"January",31,31},{"February",59,28},{"March",90,31},{"April",120,30},{"May",151,31},{"June",181,30},{"July",212,31},{"August",243,31},{"September",273,30},{"October",304,31},{"November",334,30},{"December",365,31}}
				if y%4 == 0 then
					mon[2][3] = 29
					for i,v in pairs(mon) do
						if i ~= 1 then
							v[2] = v[2] + 1
						end
					end
				end
				local d = math.floor(tick()/86400%365.25+1)
				for i,v in pairs(mon) do
					if v[2]-v[3]<=d then
						mont = i
					end
				end
				d = d + mon[mont][3]-mon[mont][2]
				if m <= 9 then
					m = "0" ..m
				end
				if s <= 9 then
					s = "0" ..s
				end
				if h >= 12 then
					mo = "P.M."
				else
					mo = "A.M."
				end
				if h > 12 then
					h = h - 12
				end
				script.Parent.Text = "cripbot-paste".. " | " ..h.. ":" ..m.. ":" ..s.. " " ..mo.. " | "..mon[mont][1].. " " ..d.. ", " ..y.. " | $$$ | "..math.floor(game:GetService('Stats').Network.ServerStatsItem["Data Ping"]:GetValue()).. "ms " 
			end
		end

		coroutine.wrap(UQHM_fake_script)()
		local function QQXIOK_fake_script()
			local script = Instance.new('LocalScript', ScreenLabel)

			local gui = script.Parent
			gui.Draggable = true
			gui.Active = true
		end
		coroutine.wrap(QQXIOK_fake_script)()
	end
end)

local oldgrenadeallowed = Client.grenadeallowed
Client.grenadeallowed = function(...)
	if values.misc.client["buy any grenade"].Toggle then
		return true
	end

	return oldgrenadeallowed(...)
end

local movement = misc:Sector("movement", "Left")
movement:Element("Toggle", "bunny hop")
movement:Element("Dropdown", "direction", {options = {"forward", "directional", "directional 2"}})
movement:Element("Dropdown", "type", {options = {"gyro", "cframe", "better"}})
movement:Element("Slider", "speed", {min = 5, max = 60, default = 5})
movement:Element("ToggleKeybind", "walkspeed")
movement:Element("Dropdown", "walk type", {options = {"universal", "cframe"}}) 
movement:Element("ToggleKeybind", "jump bug")
movement:Element("ToggleKeybind", "edge jump")
movement:Element("ToggleKeybind", "edge bug")
movement:Element("ToggleKeybind", "freezeclip", {}, function(tbl)
	if tbl.Toggle and tbl.Active then
	  LocalPlayer.Character.HumanoidRootPart.Anchored = true
	else 
	  LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end
end)
movement:Element("ToggleKeybind", "new freezeclip", nil, function(tbl)
	if tbl.Toggle and tbl.Active then
		local Freto = Instance.new("Part")
		Freto.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
		Freto.CanCollide = false

		Freto.BottomSurface = Enum.SurfaceType.Smooth
		Freto.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		Freto.Name = "Freto"
		Freto.Size = Vector3.new(30, 1, 30)
		Freto.TopSurface = Enum.SurfaceType.Smooth
		Freto.Parent = game:GetService("Workspace")
		Freto.Transparency = 1

		local Part = Instance.new("Part")
		Part.CanCollide = false
		Part.Anchored = true
		Part.BottomSurface = Enum.SurfaceType.Smooth
		Part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		Part.Material = Enum.Material.ForceField
		Part.Shape = Enum.PartType.Ball
		Part.Size = Vector3.new(2, 2, 2)
		Part.TopSurface = Enum.SurfaceType.Smooth
		Part.Transparency = 0.3
		Part.Parent = Freto
		Part.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

		local Weld = Instance.new("Weld", Freto)
		Weld.Parent = Freto
		Weld.Part0 = Freto
		Weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
	else
		game:GetService("Workspace").Freto:Destroy()
	end
end)
local noclip = misc:Sector("noclip", "Left")
		noclip:Element("ToggleKeybind", "noclip", {}, function(tbl)
			if tbl.Toggle and tbl.Active and LocalPlayer.Character then
				Fly = game:GetService("RunService").Stepped:Connect(function()
					spawn(function()
						pcall(function()
							local speed = values.misc.noclip["noclip speed"].Slider * 8
							local velocity = Vector3.new(0, 1, 0)

							if UserInputService:IsKeyDown(Enum.KeyCode.W) then
								velocity = velocity + (Camera.CoordinateFrame.lookVector * speed)
							end
							if UserInputService:IsKeyDown(Enum.KeyCode.A) then
								velocity = velocity + (Camera.CoordinateFrame.rightVector * -speed)
							end
							if UserInputService:IsKeyDown(Enum.KeyCode.S) then
								velocity = velocity + (Camera.CoordinateFrame.lookVector * -speed)
							end
							if UserInputService:IsKeyDown(Enum.KeyCode.D) then
								velocity = velocity + (Camera.CoordinateFrame.rightVector * speed)
							end

							LocalPlayer.Character.HumanoidRootPart.Velocity = velocity
							LocalPlayer.Character.Humanoid.PlatformStand = true
						end)
					end)
				end)

				Noclip = game:GetService("RunService").Stepped:Connect(function()
					for i,v in pairs(LocalPlayer.Character:GetChildren()) do
						if v:IsA("BasePart") and v.CanCollide == true then
							v.CanCollide = false
						end
					end
				end)
			else
				pcall(function()
					Fly:Disconnect()
					Noclip:Disconnect()
					LocalPlayer.Character.HumanoidRootPart.Velocity = -2.90707, 0.00781632, -11.7204
					LocalPlayer.Character.Humanoid.PlatformStand = false
					for i,v in pairs(LocalPlayer.Character:GetChildren()) do
						if v:IsA("BasePart") and v.CanCollide == false then
							v.CanCollide = true
						end
					end
				end)
			end
		end)

		noclip:Element("Slider", "noclip speed", {min = 1, max = 25, default = 1})

		local spammessages = {
			"Раздадим пизды, как будто бы Wi-Fi",
			"Шестьдесят xan'ов я прячу под шапкой",
			"Наркота делает психику шаткой, эй (Ага)",
			"Узкие глаза, как будто бы Шанхай",
			"Получил своё и сказал ей: Bye, bae",
			"Я вытер хуй её Burberry майкой, эй (Skrrt-skrrt)",
			"Попросил вежливо, кидает нюдсы",
			"Черчу line на фарфоровом блюдце",
			"Хочет быть вместе, у нас не получится, эй (Skrrt-skrrt)",
			"На свои кеды я наклеил стразы (Mwah)",
			"Как археолог, курю эти вазы",
			"Keep it going, мысли о пентхаусе (Пентхаусе)",
			"[Куплет 1: AUGUST]",
			"Беру педали, я скидывал листья (Е)",
			"Растолкал xan на её сиськах (Е, е)",
			"Теганый переход, я бегу быстро (Ту-ту-ту, ту-ту-ту)",
			"Мне нужно много циферок, будто бы Maison Margiela (Margiela)",
			"Чувствую холод, детка, бегут мурашки по телу (По телу)",
			"Капуста растёт, е, сука, ей нужно время (Время)",
			"Она сосёт, и её парень — не проблема (Проблема)",
			"Хей, детка, посмотри на меня (Е)",
			"Нужна бумага, как им туалетка щас (Е, е)",
			"Раскачал головой в новеньких вещах",
			"(Ага) Раздадим пизды, как будто бы Wi-Fi",
			"Шестьдесят xan'ов я прячу под шапкой",
			"Наркота делает психику шаткой, эй (Ага)",
			"Узкие глаза, как будто бы Шанхай",
			"Получил своё и сказал ей: Bye, bae",
			"Я вытер хуй её Burberry майкой, эй (Skrrt-skrrt)",
			"Попросил вежливо, кидает нюдсы",
			"Черчу line на фарфоровом блюдце",
			"Хочет быть вместе, у нас не получится, эй (Skrrt-skrrt)",
			"На свои кеды я наклеил стразы (Mwah)",
			"Как археолог, курю эти вазы",
			"Keep it going, мысли о пентхаусе",
			"[Куплет 2: KOUT]",
			"Тяну листья через лист (Лист)",
			"I'm gonna fuck that bih (Bih)",
			"На ней Victoria Secret (Secret)",
			"Со мной только мои близкие (Мои близкие)",
			"Тачки на литых дисках (Дисках)",
			"Купюры разные — диско (Диско)",
			"KOUT fo' real, обитал низко",
			"Но набрал эти числа так быстро (Так быстро)",
			"Очень далеко, вам нужна Visa",
			"Просто живу своей лучшей жизнью",
			"Очень далеко, вам нужна Visa",
			"Просто живу своей лучшей жизнью",
			"Е, это KOUT fo' real (Ага)",
			"Со мной только мои близкие",
			"И мы курим листья в листьях (Так точно)",
			"Let's go (Е)",
			"Раздадим пизды, как будто бы Wi-Fi (Let's go)",
			"Шестьдесят xan'ов я прячу под шапкой (Let's go)",
			"Наркота делает психику шаткой, эй (Ага)",
			"Узкие глаза, как будто бы Шанхай",
			"Получил своё и сказал ей bye-bae",
			"Я вытер хуй её Burberry майкой, эй (Mwah)",
			"(Skrrt-skrrt, так точно)",
			"(Skrrt-skrrt)",
			"JOIN FOR FREE ROBUX gg/hDMAPVZqCp",
"JOIN FOR FREE CS GO RAT gg/hDMAPVZqCp",
"gg/hDMAPVZqCp",
"JOIN VC AND MEET ЛАРИСКА gg/hDMAPVZqCp",
"БЕСПЛАТНЫЕ РОБУКСИ gg/hDMAPVZqCp",
"БЕСПЛАТНЫЕ ЧИТИ КБ РО gg/hDMAPVZqCp"
	 }
	
		local cripbotspammsg = {
		"cripbot",
		"cripbot-paste",
		"$$$",
		"p100",
		"hitting big p",
		"ez kills",
		"ez wins",
		"1",
		"1'd",
		"u mad??",
		"nn dead",
		"who.ru",
		"UID issue",
		"IQ issue",
		"are you gonna inject??",
		"cripbot-paste > all",
		"mad?",
		"did you even execute??",
		"gimmie ur watermelons",
		"a rat with a hdmi port is typing this",	
		"It looks like your face caught on fire and someone tried to put it out with a fork.",
		"Don't you love nature, despite what it did to you?",
		"Well, that happend.",
        "OOF",
        "Ouchies.",
        "u mad?",
        "Practice makes perfect.",
        "Did you mean to do that?",
        "Don't do that again.",
        "Bada ba ba ba, I'm lovin' it.",
        "How'd that happen?",
        "Sʇod ʇʍᴉsʇᴉuƃ ʎonɹ ɥǝɐp˙",
        "Well, that happend.",
        "yeah ok",
        "Tip : stop made this",
        "Tip : This button doesn't relieve rage, for some reason.",
        "Tip : Don't be rage.",
        "Mada mada.",
        "VCMYXC1RiQVoUHWoKPSROQ==",
        "Hack the game",
        "Error 404 : Rage quit not found.",
        "Sweet rage bro!!",
        "Whos that behind you?",
        "Oh, So close!",
        "Nope.",
        "Undo!",
        "Is that a jojo reference?",
        "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHH...",
        "Stop screwing around!",
        "useless button rite",
        "?????",
        "That wasn't the plan.",
        "???????????",
        "nice one",
        "whats 4 squared?",
        "Don't lose your head.",
        "Stimulate your senses.",
        "Don't clip that.",
        "Kappa.",
        "O Wuts dis?", 
        "Try again.", 
        "Game over!",
        "Why?", 
        "Stop rage quitting",
        "Are you angry yet?",
        "I've got 99 problems, This cheat aint one",
        "Huh? What happend?",
        "Where'd you go?",
        "Don't be rage again.",
        "Did you rage quit again?",
		"Fuck off, fuck off...",
		"Hello, depression",
		"I hear your message",
		"Still don't understand",
		"I know we're hurting",
		"Drugging and doping",
		"Death by our own hands",
		"I'm sorry that I couldn't be the one",
		"Cause we can't run",
		"The end has come",
		"I'm sorry that I couldn't be the one",
		"Cause we can't run",
		"The end has come",
		"Hello, my mental",
		"You think I should but",
		"I can't read your mind",
		"Admit we fuck up",
		"Our wounds are healing",
		"Some can't heal with time",
		"Cause we can't run",
		"The end has come",
		"'Cause we can't run",
		"The end has come",
		"ur my fan",
        "you cried trying to report me",
        "u has no parents Imaoo",
        "are u having a bad time? ðŸ˜¹ðŸ’€",
        "u lost to C0VVID",
        "negro",
        "so trash OMEGALUL",
        "random",
        "i know ur location LOL",
        "LLLLLLLLL",
        "clipped",
        "emo lokin stupid 12yo",
        "u trying to be me so hard",
        "you waant to sjjck my djcick",
        "clip me clipping owning u",
        "ur black",
        "stay mad",
        "Youâ€™re adopted kid",
        "kill pyourself",
        "special kid",
        "get ratio'ed",
        "i can buy ur life",
		"i can buy ur life",
		"Держи ✈ и лети нахуй !",
        "Hexagon is the best!",
		"synapse x🤮🤢 jjsploit🔥💖",
        "missed shot due to umm i forgor",
        "[gamesense] Missed shot due to ?",
		"She/Her 🏳️‍⚧️ LGBTQ+ Ally 🌈",
        "game:Shutdown()",
        "pls give me alsike",
        "pls give me hexadecimal",
        "-ur life",
        "owl hub'ed",
        "LOL 9 Y.O. KID WITH FREE HACKS!11111",
		"JOIN FOR FREE ROBUX gg/hDMAPVZqCp",
		"JOIN FOR FREE CS GO RAT gg/hDMAPVZqCp",
		"gg/hDMAPVZqCp",
		"JOIN VC AND MEET ЛАРИСКА gg/hDMAPVZqCp",
		"БЕСПЛАТНЫЕ РОБУКСИ gg/hDMAPVZqCp",
		"БЕСПЛАТНЫЕ ЧИТИ КБ РО gg/hDMAPVZqCp"
 }

 local deadinside = {"what are you feel?","baby, what you wishin’ for?","это 1 еблан😘","Varechkaa#2007","мой килл сей лучше твоего(","you have 20501 fathers","Maybe you should wish it more?","The unfolding of the year","get a life nn","M.I.A","get a friends nn","touch my pussy","will we still have learned it?","ты сдох чел(","give me bloxsense.pub","hi semi","1 by hui.ware","1 by varya.ware","backtacke'd","1000-7","zxc?","wanna sex","i feel bad","u got neverbloxed","1 by DeathCore","you have 2012 fathers, deathcore said so","shootware'd","Kys 1yo autist","You are so mad, dude","2fast4u","Walling hacking","just say others im russian","onetapt","K.I.A","LLLLLLL","NN quit'ed","You tried to escape from me?","love you and even your silence.","Where are you? I' running after you.","I love you more than drug'sz","Your eyes have changed tone, you let go of the palm.","It' so hard to forget you.","Eternal darkness has come into my world.","I would stop, but for who?","I feel the scent of your lips.","You makin' me suffer","I think you'r wrong.","Baby, it' all because of you.","dyrachyo","deadlingforyou","Who is she?","i don' feel the same with you.","i feel you so close.","This world has left me with nothing.",'You are the most important person in my life','If you meet again, hug as you remember.',"Kiss me how you love.","After all, you once loved me too.","And everyone disgusts me after.","After your beauty, I don' see everyone near.","Choke me on the floor.","You smell like my dream, which was killed at 16.","I fall asleep under to wake up with others.","I will drown but only with you.","I love you more than drug'sz, believe.","I was so tired of making mistakes.","I thought I wouldn’ let you down.","While I' drinking cologne in one gulp.","I would stop, but for who?","Zai, see, the threshold and cotton wool --Where?","In my blood.","There' a whole clip in me, a clip.","But it doesn' hurt me a bit, it doesn' hurt.","And for a second, so many thoughts.","Just keep in mind even a hundred miles away.","I’ll definitely find you.","By eyes, your insanely beautiful eyes.","One day I will strangle you.","One day I will strangle you inside me.","I' ready to be your doll voodoo.","You'v touched everything alive inside of me.","Where are you? I' running after you.","I' torn with a dream.","Your cold heart is forbidden, bt so flawlessly","And I' on my knees.","I hold your black heart that I have mutilated.","You fall asleep without me, I'll be there in the morning.","You text me, I'l just lie.","That I don' love you, let' play a game?","Imagine a world without me, and that I' going to die soon.","I' feel myself so cold without you.","This world has left me with nothing.","No one will find me here anymore.","Took away love and took away eyes.","And forbid me to see you.","I feel the smell, I feel the taste.","I feel the scent of your lips.","The sun has stopped shining for me now.","Eternal darkness has come into my world.","There was a spark, but now it' gone.","Sending my beloved greetings.","I feel the warmth of your hands.","I hear the sound of your heart.","But I don' see, but I don' see..","It' so hard to forget you.","It' so hard to love you.","Right now, they'r looking at us right now.","I miss you so much. Take me urgently.","There is no point in livin' without you.","My hair still smells like you","Give me an answer.","How to suppress all this pain within me?","You, me, and it' not that simple.","Smoke, poison, because you are my air.","I' breathing, you can hear it too? I' still breathing.","Your angel doesn' save me.","I still can' believe that I was once empty.","Close my eyes and holding my breath.","Snuggle closer, blowing smoke.","Well, how did it all happen?, I don' understand.","When the sun burns out, I will lose access to you.","Inside me there are rains, showers and thunderstorms.","It' winter inside you, always snow and frost.","I' so tired of bending over sag for you.","I think you'r wrong.","You makin' me suffer?","You there is no place for love in my heart, but I will find it for you.","And her lips, cold scarlet colors.","Pouring rain and snow.","Washed away your tracks.","And I lost the keys to the house.","Just like I lost you.","I choose die of love, to you.","Your sea of tears suddenly turned bad.","All this odd numbers are worthless.","And you crying again.","I stowaway on the train with the flight to your heart.","I' be waiting for you at the foot.","I' wait for you as long as you need.","And for many, many, many years I will miss you.","I remember everything that was between you and me.","How did it all happen like this?","Close your eyes, imagine what will happen between you and me.","Why did all of this happen?","You don’ sleep, I only fall asleep with you.","Emptiness.","There' emptiness around me and I don' know.","I' how on pins and needles, love me quietly, kil1 me loudly (kil1 me)","I' between your ribs and, you know, it' damn spacious for me here.","I would even say damn empty here.","Darling if I die.","Will you be in my side?","Don' look away in my eyes.","I'l get on my knees and cry.","Who is she? Did we get drunk again?","And so it goes in circles: mistake after mistake.","When will I stop missing her smile?","Outside the window, a black bird does not give me sleep.","I won' feel alive anymore because of you.","It' all because of you, it' all because of you.","And you keep laughing into my eyes.","And still wrap around my neck like a snake.","Baby, it' all because of you.","It' all because of you, because of you.","But for some reason, I' drawn back to you again.","I want to be unhappy with you, rather than happy with someone else.","Your eyes have changed tone, you let go of the palm","i don' feel the same with you.","i feel you so close."}
	

 local huybotspammsg = {
    "КАК БЕСПЛАТНО СКАЧАТЬ ЧИТ ДЛЯ РОБЛОКС COUNTER BLOX",
    "БЕСПЛАТНЫЙ СКРИПТ НА COUNTER BLOX | 2024 ЛУЧШИЕ ЧИТЫ РОБЛОКС ИНЖЕКТОР ЭКСПЛОИТ",
    "Неплохие читы на роблокс!Merry christmas!Roblox mod menu 2023-24!",
    "РАБОЧИЙ ВХ И АИМБОТ НА КБРО | БЕСПЛАТНЫЙ СКРИПТ НА КБРО 2023",
    "новый чит контер блокс кб ро в 2023 топ чит",
    "Maks17Chetkijjz 10 тыс. просмотров Counter Blox HvH?",
    "ЭТО ЛУЧШИЙ БЕСПЛАТНЫЙ ЧИТ ДЛЯ СКАЙВАРСА И БЕДВАРСА | НОВЫЙ АНТИ-ЧИТ | AUGUSTUS",
    "как скачать инжектор?",
    "(CB:RO Remangined) до глобала с софтом в роблокс кс го!",
    "10 СОВЕТОВ, КОТОРЫЕ ПОМОГУТ ТЕБЕ СТАТЬ ПРО В КБРО!",
    "НОВЫЙ ЧИТ НА КОНТР БЛОКС 2024 | HEXAGON CB:RO",
    "НОВЫЙ ЧИТ НА КОНТР БЛОКС 2024 | NIXUS CB:RO",
    "Как скачять чит на Counter Blox. Без ключя !!!",
    "🤣КАК ТАЩИТЬ ЕСЛИ ТЫ НУБ???🤣 ТОП ТАКТИКА #cbro #counterblox #контрблокс",
    "Counter Blox | ROBLOX Подсадки, баги, позиции и т.д В CB:RO",
    "✅ Как и Где Скачать Лучший Чит на Роблокс Крнл ✅ Читы на Roblox Krnl ✅ Взлом Роблокса ✅",
    "СТРИМ ИГРАЮ С ЧИТАМИ В COUNTER BLOX!!!",
    "Как получить нож в контр блокс?",
    "как использовать читы в роблокс 2024",
    "ВЫПАЛ КЕРАМБИТ?!?! ОТКРЫТИЕ КЕЙСОВ КОНТР БЛОКС !!! КОНТР БЛОКС !!! КБРО",
    "БЕЗУМНЫЕ ПОДСАДЫ В КБ РО",
    "НОВЫЙ РАБОЧИЙ СКРИПТ ДЛЯ COUNTER BLOX | COUNTER BLOX SCRIPT/HACK/SOFTWARE",
    "🎃 ПРОСТОЙ СКРИПТ на АИМ-БОТ Counter Blox в Roblox | УБИЛ ВСЕХ ИГРОКОВ НА СЕРВЕРЕ! 🎃",
    "ЭТОТ БАГ НА WH РАБОТАЕТ С БЕТЫ (CB:RO)",
    "СЛИВ ЧИТА НА CB:RO(Roblox)",
    "is that cuteware?",
    "SynapseX is back",
    "ИДЕАЛЬНЫЙ ЧИТ НА КОНТР БЛОКС Raduga x Skript 2024",
    "РАЗНОСИМ ДЕЗМАТЧ В КБРО С ЧИТАМИ | РАБОЧИЙ СКРИПТ КБРО",
    "ЛУЧШИЕ⛄ЧИТЫ⛄НА РОБЛОКС В 2024 ГОДУ ❄️",
    "СКРИПТ КОУНТЕР БЛОКС|SCRIPT COUNTER Blox|СКРИПТ CounterBlox|UNDETECTED2024",
    "скачять кил ауру контер блокс без вирусов",
    "Держи ✈ и лети нахуй !",
    "???????????",
    "ВАТАФАК АР Ю ДУИНГ😡",
    "KICK NEFOR",
	"JOIN FOR FREE ROBUX gg/hDMAPVZqCp",
	"JOIN FOR FREE CS GO RAT gg/hDMAPVZqCp",
	"gg/hDMAPVZqCp",
	"JOIN VC AND MEET ЛАРИСКА gg/hDMAPVZqCp",
	"БЕСПЛАТНЫЕ РОБУКСИ gg/hDMAPVZqCp",
	"БЕСПЛАТНЫЕ ЧИТИ КБ РО gg/hDMAPVZqCp"
}

		local chat = misc:Sector("chat", "Left")
		chat:Element("Toggle", "dead-inside mode", nil, function(tbl)
			if tbl.Toggle then
				while values.misc.chat["dead-inside mode"].Toggle do
					game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(deadinside[math.random(1,table.getn(deadinside))], false, "Innocent", false, true)
					wait(values.misc.chat["speed (ms)"].Slider/999)
				end
			end
		end)
        chat:Element("Toggle", "KOTOVCHKI chat spam", nil, function(tbl)
			if tbl.Toggle then
				while values.misc.chat["KOTOVCHKI chat spam"].Toggle do
					game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(huybotspammsg[math.random(1,table.getn(huybotspammsg))], false, "Innocent", false, true)
					wait(values.misc.chat["speed (ms)"].Slider/999)
				end
			end
		end)
		chat:Element("Toggle", "chat spam", nil, function(tbl)
			if tbl.Toggle then
				while values.misc.chat["chat spam"].Toggle do
					game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(values.misc.chat.type.Dropdown == "Standard" and spammessages[math.random(1,table.getn(spammessages))] or cripbotspammsg[math.random(1,table.getn(cripbotspammsg))], false, "Innocent", false, true)
					wait(values.misc.chat["speed (ms)"].Slider/999)
				end
			end
		end)
chat:Element("Dropdown", "type", {options = {"Standard", "cripbot"}})
chat:Element("Slider", "speed (ms)", {min = 5, max = 1500, default = 500})
chat:Element("Dropdown", "kill say type", {options = {"off", "standard", "cripbot", "xosmane", "rosense", "dead-inside", "troll J.", "femware", "cris-paste", "Vaderhaxx", "MEMZ"}})
chat:Element("Toggle", "no filter")

local grenades = misc:Sector("grenades", "Right")
grenades:Element("ToggleKeybind", "spam grenades")
coroutine.wrap(function()
	while true do
		wait(0.5)
		if values.misc.grenades["spam grenades"].Toggle and values.misc.grenades["spam grenades"].Active then
			local oh1 = game:GetService("ReplicatedStorage").Weapons[values.misc.grenades.grenade.Dropdown].Model
			local oh3 = 25
			local oh4 = 35
			local oh6 = ""
			local oh7 = ""
			game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vector3.new(0,-100,0), oh6, oh7)
		end
	end
end)()
grenades:Element("Dropdown", "grenade", {options = {"Flashbang", "Smoke Grenade", "Molotov", "HE Grenade", "Decoy Grenade", "Discombobulator"}})
grenades:Element("Button", "crash server", {}, function()
		for i = 1,1.5,1 do	
			game:GetService("ReplicatedStorage").Events.DropMag:FireServer(LocalPlayer.Character.Gun.Mag)
		end
end)  

local objects = {}
local utility = {}
do
    utility.default = {
        Line = {
            Thickness = 1.5,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
        Text = {
            Size = 13,
            Center = true,
            Outline = true,
            Font = Drawing.Fonts.Plex,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
        Square = {
            Thickness = 1.5,
            Filled = false,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
    }
    function utility.create(type, isOutline)
        local drawing = Drawing.new(type)
        for i, v in pairs(utility.default[type]) do
            drawing[i] = v
        end
		if isOutline then
			drawing.Color = Color3.new(0,0,0)
			drawing.Thickness = 3
		end
        return drawing
    end
    function utility.add(plr)
        if not objects[plr] then
            objects[plr] = {
                Name = utility.create("Text"),
                Weapon = utility.create("Text"),
				Armor = utility.create("Text"),
                BoxOutline = utility.create("Square", true),
                Box = utility.create("Square"),
                HealthOutline = utility.create("Line", true),
                Health = utility.create("Line"),
            }
        end
    end
    for _,plr in pairs(Players:GetPlayers()) do
        if Player ~= LocalPlayer then
            utility.add(plr)
        end
    end
    Players.PlayerAdded:Connect(utility.add)
	Players.PlayerRemoving:Connect(function(plr)
		if objects[plr] then
			for i,v in pairs(objects[plr]) do
				if v then
					v:Remove()
				end
			end
	
			objects[plr] = nil
		end
	end)
end
local Items = Instance.new("ScreenGui")
Items.Name = "Items"
Items.Parent = game.CoreGui
Items.ResetOnSpawn = false
Items.ZIndexBehavior = "Global"
do
	function add(plr)
		local ImageLabel = Instance.new("ImageLabel")
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.Size = UDim2.new(0, 62, 0, 25)
		ImageLabel.Visible = false
		ImageLabel.Image = "rbxassetid://1784884358"
		ImageLabel.ScaleType = Enum.ScaleType.Fit
		ImageLabel.Name = plr.Name
		ImageLabel.AnchorPoint = Vector2.new(0.5,0.5)
		ImageLabel.Parent = Items
	end
	for _,plr in pairs(Players:GetPlayers()) do
		if Player ~= LocalPlayer then
			add(plr)
		end
	end
	Players.PlayerAdded:Connect(add)
	Players.PlayerRemoving:Connect(function(plr)
		wait()
		Items[plr.Name]:Destroy()
	end)
end
local debrisitems = {}
workspace.Debris.ChildAdded:Connect(function(obj)
	if obj:IsA("BasePart") and Weapons:FindFirstChild(obj.Name) then
		RunService.RenderStepped:Wait()

		local BillboardGui = Instance.new("BillboardGui")
		BillboardGui.AlwaysOnTop = true
		BillboardGui.Size = UDim2.new(0, 40, 0, 40)
		BillboardGui.Adornee = obj

		local ImageLabel = Instance.new("ImageLabel")
		ImageLabel.Parent = BillboardGui
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.Size = UDim2.new(1, 0, 1, 0)
		ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color
		ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name)
		ImageLabel.ScaleType = Enum.ScaleType.Fit
		ImageLabel.Visible = values.visuals.world["item esp"].Toggle and table.find(values.visuals.world["types"].Jumbobox, "icon") and true or false

		BillboardGui.Parent = obj
	end
end)
for _, obj in pairs(workspace.Debris:GetChildren()) do
	if obj:IsA("BasePart") and Weapons:FindFirstChild(obj.Name) then
		RunService.RenderStepped:Wait()

		local BillboardGui = Instance.new("BillboardGui")
		BillboardGui.AlwaysOnTop = true
		BillboardGui.Size = UDim2.new(0, 40, 0, 40)
		BillboardGui.Adornee = obj

		local ImageLabel = Instance.new("ImageLabel")
		ImageLabel.Parent = BillboardGui
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.Size = UDim2.new(1, 0, 1, 0)
		ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color
		ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name)
		ImageLabel.ScaleType = Enum.ScaleType.Fit
		ImageLabel.Visible = values.visuals.world["item esp"].Toggle and table.find(values.visuals.world["types"].Jumbobox, "icon") and true or false

		BillboardGui.Parent = obj
	end
end
local function YROTATION(cframe)
    local x, y, z = cframe:ToOrientation()
    return CFrame.new(cframe.Position) * CFrame.Angles(0,y,0)
end
local function XYROTATION(cframe)
    local x, y, z = cframe:ToOrientation()
    return CFrame.new(cframe.Position) * CFrame.Angles(x,y,0)
end
local weps = {
	Pistol = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8"},
	SMG = {"MP9", "MAC10", "MP7", "UMP", "P90", "Bizon"},
	Rifle = {"M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG"},
	Sniper = {"AWP", "Scout", "G3SG1"}
}
local RandomGuns = { "USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8" ,"MP9", "MAC10", "MP7", "UMP", "P90", "Bizon", "M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG", "AWP", "Scout", "G3SG1","CT Knife" ,"T Knife", "Banana", "Bayonet", "Bearded Axe", "Butterfly Knife", "Cleaver", "Crowbar", "Falchion Knife", "Flip Knife", "Gut Knife", "Huntsman Knife", "Karambit", "Sickle"} 
local weps2 = {
	Pistol = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8"},
	SMG = {"MP9", "MAC10", "MP7", "UMP", "P90", "Bizon"},
	Rifle = {"M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG"},
	Sniper = {"AWP", "Scout", "G3SG1"}
}
local function GetWeaponRage(weapon)
	return table.find(weps.Pistol, weapon) and "pistol" or table.find(weps.Rifle, weapon) and "rifle" or weapon == "AWP" and "awp" or weapon == "G3SG1"  and "auto" or weapon == "Scout" and "scout" or "default"
end
local function GetStatsRage(weapon)
    if weapon == "default" then
        return values.rage.weapons.default
    else
        if values.rage.weapons[weapon]["override default"].Toggle then
            return values.rage.weapons[weapon]
        else
            return values.rage.weapons.default
        end
    end
end
local function GetWeaponLegit(weapon)
	return table.find(weps2.Pistol, weapon) and "pistol" or table.find(weps2.Rifle, weapon) and "rifle" or table.find(weps2.SMG, weapon) and "smg" or table.find(weps2.Sniper, weapon) and "sniper" or "default"
end
local Jitter = false  
local Spin = 0  
local RageTarget  
local Filter = false  
local LastStep  
local TriggerDebounce = false  
local DisableAA = false  
aroundtheworld_value = 0

local Fov = Drawing.new("Circle")  
Fov.Filled = true  
Fov.Color = COL3RGB(15,15,15)  
Fov.Transparency = 0.5  
Fov.Position = Vec2(Mouse.X, Mouse.Y + 16)  
Fov.Radius = 120  

RunService.RenderStepped:Connect(function(step)
	Fov.Visible = false  
	LastStep = step  
	Ping = game.Stats.PerformanceStats.Ping:GetValue()  
	RageTarget = nil  
	local CamCFrame = Camera.CFrame  
	local CamLook = CamCFrame.LookVector  
	local PlayerIsAlive = false  
	local Character = LocalPlayer.Character  
	RageTarget = nil  
	Spin = CLAMP(Spin + values.angles.angles["spin speed"].Slider, 0, 360)  
	if Spin == 360 then Spin = 0 end  
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and LocalPlayer.Character:FindFirstChild("UpperTorso") then  
		PlayerIsAlive = true  
	end  
	for i,v in pairs(ChamItems) do  
		if v.Parent == nil then  
			TBLREMOVE(ChamItems, i)  
		end  
	end  
	Fov.Position = Vec2(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)  
	if PlayerIsAlive then  
		local SelfVelocity = LocalPlayer.Character.HumanoidRootPart.Velocity  
		if values.something.varechka["ddos"].Toggle and values.something.varechka["ddos"].Active then      
			for count = 1, 77  do      
				game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer({[1] = "createparticle", [2] = "bullethole", [3] = LocalPlayer.Character.Head, [4] = Vector3.new(0,0,0), [5] = "SurfaceGui", [8] = "oldcreatebullethole", [9] = "oldbullethole"})       
			end          
		end  
	--[[ if values.rage.fakelag["ping spike"].Toggle and values.rage.fakelag["ping spike"].Active then  
			for count = 1, 20  do  
				game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer({[1] = "createparticle", [2] = "bullethole", [3] = LocalPlayer.Character.Head, [4] = Vec3(0,0,0)})   
			end  
		end  ]]
		local Root = LocalPlayer.Character.HumanoidRootPart  
		if values.misc.client["infinite crouch"].Toggle then  
			Client.crouchcooldown = 0  
		end 

		---J. u fucking loser

		local function predict(part, ping)
			local oldPos = part.Position
			local newPos = part.Position
			local playerSpeed = (newPos - oldPos).magnitude / step
			local direction = CFrame.new(oldPos, newPos)
			local final = (direction * CFrame.new(0, 0, -(playerSpeed * (ping / 1000)))).p
			return final
		end

		if values.something.varechka["he grenade"].Toggle and values.something.varechka["he grenade"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.CFrame.Position
					local oh3 = "HE Grenade"
					local oh4 = 9e9
					local oh5 = LocalPlayer.Character.Gun
					local oh8 = 9e9
					local oh9 = true
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = 16868
					local oh13 = Vector3.new(0/0,0/0)
					for i= 0,3 do
					game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
				end
		end
		end
		end
		if values.something.varechka["test kill all"].Toggle and values.something.varechka["test kill all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
			for b2, b3 in pairs(game:GetService("Players"):GetChildren()) do
				if b3.Team ~= b3.Parent.LocalPlayer.Team then
					if b3.Character and b3.Character:FindFirstChild("UpperTorso") and b3.Parent.LocalPlayer.Character and b3.Parent.LocalPlayer.Character:FindFirstChild("EquippedTool") then
						if b3.Character:FindFirstChild("Humanoid") and b3.Character.Humanoid.Health > 0 then
							killallisworking = true
							local b4 = {
                                [1] = b3.Character.UpperTorso,
                                [2] = b3.Character.UpperTorso.Position,
                                [3] = "G3SG1",
                                [4] = -130,
                                [5] = LocalPlayer.Character.Gun,
                                [8] = 9e9,
                                [9] = true,
                                [10] = false,
                                [11] = Vector3.new(),
                                [12] = 16868,
                                [13] = Vector3.new()
}
function EbalRot(table, min, max, random) -- стих динаху
    if random == true then 
        return table[#table + math.random(min,max * 9e9)]
    else
        return table[#table + math.random(min,max)]
    end
end
for i = 1, 500 do
    EbalRot(b4, 1000, 5000, false)
end
								for i=1, 2, 2 do
									game.ReplicatedStorage.Events.Hit:FireServer(unpack(b4))
								end
							else
								game.ReplicatedStorage.Events.Hit:FireServer(unpack(b4))
							end
						else killallisworking = false end
					end
				end
		else killallisworking = false end
		if values.something.varechka["he grenade"].Toggle and values.something.varechka["he grenade"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild('UpperTorso') then
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.Position
					local oh3 = 'G3SG1'
					local oh4 = 8888
					local oh5 = LocalPlayer.Character.Gun
					local oh7 = Vector3.new()
					local oh8 = 77765
					local oh9 = false
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = 1
					local oh13 = Vector3.new()
					game:GetService('ReplicatedStorage').Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
				end
			end
		end
		if values.something.varechka["kill all mode"].Dropdown == "easy" and values.something.varechka["J kill all"].Toggle and values.something.varechka["J kill all"].Active and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then
					local oh1 = Player.Character.Head   
					local oh2 = predict(Player.Character.Head, Ping)   
					local oh3 = Client.gun.name 
					local oh4 = 4096   
					local oh5 = LocalPlayer.Character.Gun   
					local oh8 = 1
					local oh9 = false   
					local oh10 = false 
					local oh11 = Vector3.new()   
					local oh12 = 16868   
					local oh13 = Vector3.new()    
					for i = 1, values.something.varechka["hits amount"].Slider, 1 do 
						game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
					end
				end
			end
		end
		if values.something.varechka["kill all mode"].Dropdown == "medium" and values.something.varechka["J kill all"].Toggle and values.something.varechka["J kill all"].Active and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("Head") then
					local oh1 = Player.Character.Head
					local oh2 = predict(Player.Character.Head, Ping)   
					local oh3 = Client.gun.Name
					local oh4 = 16000 -- local oh4 = -250
					local oh5 = LocalPlayer.Character.Gun
					local oh8 = math.random(12, 24)
					local oh9 = true
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = 16000
					local oh13 = Vector3.new() 
					for i = 1, values.something.varechka["hits amount"].Slider, 1 do 
						game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
					end
				end
			end
		end
		if values.something.varechka["kill all mode"].Dropdown == "hard" and values.something.varechka["J kill all"].Toggle and values.something.varechka["J kill all"].Active and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("Head") then
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.Position 
					local oh3 = Client.gun.Name
					local oh4 = 400
					local oh5 = LocalPlayer.Character.Gun
					local oh8 = 1000
					local oh9 = true
					local oh10 = false
					local oh11 = Vector3.new()
					local oh12 = 16000
					local oh13 = Vector3.new()
					for i = 1, values.something.varechka["hits amount"].Slider, 1 do 
						game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
					end
				end
			end
		end
		if values.something.varechka["kill all mode"].Dropdown == "random" and values.something.varechka["J kill all"].Toggle and values.something.varechka["J kill all"].Active and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild('UpperTorso') then
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.Position
					local oh3 = RandomGuns[math.random(1,#RandomGuns)]
					local oh4 = 8888
					local oh5 = LocalPlayer.Character.Gun
					local oh7 = Vector3.new()
					local oh8 = 77765
					local oh9 = false
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = 1
					local oh13 = Vector3.new()
					game:GetService('ReplicatedStorage').Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
				end
			end
		end
		if values.something.varechka["kill all type"].Dropdown == "funny" and values.something.varechka["pasted kill all"].Toggle and values.something.varechka["pasted kill all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.Position 
					local oh3 = "AK47"
					local oh4 = 9120
					local oh5 = LocalPlayer.Character.Gun
					local oh8 = 19000
					local oh9 = false
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = -500
					local oh13 = Vector3.new() 
					for i = 1, values.something.varechka["hits amount"].Slider, 1 do 
						game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
					end
				end
			end
		end
		if values.something.varechka["kill all type"].Dropdown == "neverblox" and values.something.varechka["pasted kill all"].Toggle and values.something.varechka["pasted kill all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.Position 
					local oh3 = Client.gun.Name
					local oh4 = 4096
					local oh5 = Client.Gun
					local oh6 = Vector3.new()
					local oh7 = Vector3.new()
					local oh8 = 10
					local oh9 = false
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = 16868
					local oh13 = Vector3.new() 
					for i = 1, values.something.varechka["hits amount"].Slider, 1 do 
						game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
					end
				end
			end
		end
		if values.something.varechka["kill all type"].Dropdown == "deadware" and values.something.varechka["pasted kill all"].Toggle and values.something.varechka["pasted kill all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then
					for i = 1, 3 do 
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.Position
					local oh3 = "Flip Knife"
					local oh4 = 1
					local oh5 = Player.Character.Gun
					local oh8 = math.random(1, 360)
					local oh9 = true
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = 1
					local oh13 = Vector3.new()
						game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
					end
				end
			end
		end
		if values.something.varechka["kill all type"].Dropdown == "new" and values.something.varechka["pasted kill all"].Toggle and values.something.varechka["pasted kill all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then
					local oh1 = Player.Character.UpperTorso
					local oh2 = Player.Character.UpperTorso.Position 
					local oh3 = "Banana"
					local oh4 = 666666
					local oh5 = Client.Gun
					local oh6 = Vector3.new()
					local oh7 = Vector3.new()
					local oh8 = 98647993464364
					local oh9 = false
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = 18678554887566868
					local oh13 = Vector3.new()
					local oh14 = true
                    local oh15 = Vector3.new()
					local oh16 = Vector3.new()
                    local oh17 = Vector3.new()
					local oh18 = Vector3.new()
                    local oh19 = Vector3.new()
					local oh20 = Vector3.new()
                    local oh21 = Vector3.new()
					local oh22 = Vector3.new()
                    local oh23 = Vector3.new()
					local oh24 = Vector3.new()
                    local oh25 = Vector3.new()
					local oh26 = Vector3.new()
                    local oh27 = Vector3.new()
					local oh28 = Vector3.new()
                    local oh29 = Vector3.new()
					local oh30 = Vector3.new()
                    local oh31 = Vector3.new()
					local oh32 = Vector3.new()
                    local oh33 = Vector3.new()
					local oh34 = Vector3.new()
                    local oh35 = Vector3.new()
					local oh36 = Vector3.new()
                    local oh37 = Vector3.new()
					local oh38 = Vector3.new()
                    local oh39 = Vector3.new()
					local oh40 = Vector3.new()
                    local oh41 = Vector3.new()
					local oh42 = Vector3.new()
                    local oh43 = Vector3.new()
					local oh44 = Vector3.new()
                    local oh45 = Vector3.new()
					local oh46 = Vector3.new()
                    local oh47 = Vector3.new()
					local oh48 = Vector3.new()
                    local oh49 = Vector3.new()
					local oh50 = Vector3.new()
                    local oh51 = Vector3.new()
					local oh52 = Vector3.new()
                    local oh53 = Vector3.new()
					local oh54 = Vector3.new()
                    local oh55 = Vector3.new()
					local oh56 = Vector3.new()
                    local oh57 = Vector3.new()
					local oh58 = Vector3.new()
                    local oh59 = Vector3.new()
					local oh60 = Vector3.new()
                    local oh61 = Vector3.new()
					local oh62 = Vector3.new()
                    local oh63 = Vector3.new()
					local oh64 = Vector3.new()
                    local oh65 = Vector3.new()
					local oh66 = Vector3.new()
                    local oh67 = Vector3.new()
					local oh68 = Vector3.new()
                    local oh69 = Vector3.new()
					local oh70 = Vector3.new()
                    local oh71 = Vector3.new()
					local oh72 = Vector3.new()
                    local oh73 = Vector3.new()
					local oh74 = Vector3.new()
                    local oh75 = Vector3.new()
					local oh76 = Vector3.new()
                    local oh77 = Vector3.new()
					local oh78 = Vector3.new()
                    local oh79 = Vector3.new()
					local oh80 = Vector3.new()
                    local oh81 = Vector3.new()
					local oh82 = Vector3.new()
                    local oh83 = Vector3.new()
					local oh84 = Vector3.new()
                    local oh85 = Vector3.new()
					local oh86 = Vector3.new()
                    local oh87 = Vector3.new()
					local oh88 = Vector3.new()
                    local oh89 = Vector3.new()
					local oh90 = Vector3.new()
                    local oh91 = Vector3.new()
					local oh92 = Vector3.new()
                    local oh93 = Vector3.new()
					local oh94 = Vector3.new()
                    local oh95 = Vector3.new()
					local oh96 = Vector3.new()
                    local oh97 = Vector3.new()
					local oh98 = Vector3.new()
                    local oh99 = Vector3.new()
					local oh100 = Vector3.new()
					local oh101 = Vector3.new()
                    local oh102 = Vector3.new()
					local oh103 = Vector3.new()
                    local oh104 = Vector3.new()
					local oh105 = Vector3.new()
					local oh106 = Vector3.new()
					local oh107 = Vector3.new()
					local oh108 = Vector3.new()
					local oh109 = Vector3.new()
					local oh110 = Vector3.new()
					local oh111 = Vector3.new()
					local oh112 = Vector3.new()
					local oh113 = Vector3.new()
					local oh114 = Vector3.new()
					local oh115 = Vector3.new()
					for i = 1, values.something.varechka["hits amount"].Slider, 1 do 
						game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13, oh14, oh15, oh16, oh17, oh18, oh19, oh20, oh21, oh22, oh23, oh24, oh25, oh26, oh27, oh28, oh29, oh30, oh31, oh32, oh33, oh34, oh35, oh36, oh37, oh38, oh39, oh40, oh41, oh42, oh43, oh44, oh45, oh46, oh47, oh48, oh49, oh50, oh51, oh52, oh53, oh54, oh55, oh56, oh57, oh58, oh59, oh60, oh61, oh62, oh63, oh64, oh65, oh66, oh67, oh68, oh69, oh70, oh71, oh72, oh73, oh74, oh75, oh76, oh77, oh78, oh79, oh80, oh81, oh82, oh83, oh84, oh85, oh86, oh87, oh88, oh89, oh90, oh91, oh92, oh93, oh94, oh95, oh96, oh97, oh98, oh99, oh100, oh101, oh102, oh103, oh104, oh105, oh106, oh107, oh108, oh109, oh110, oh111, oh112, oh113, oh114, oh115)
					end
				end
			end
		end
		if values.something.varechka["better kill all"].Toggle and values.something.varechka["better kill all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
			for b2, b3 in pairs(game:GetService("Players"):GetChildren()) do
				if b3.Team ~= b3.Parent.LocalPlayer.Team then
					if b3.Character and b3.Character:FindFirstChild("UpperTorso") and b3.Parent.LocalPlayer.Character and b3.Parent.LocalPlayer.Character:FindFirstChild("EquippedTool") then
						if b3.Character:FindFirstChild("Humanoid") and b3.Character.Humanoid.Health > 0 then
							killallingnoobs = true
							local b4 = {
								[1] = b3.Character.UpperTorso,
								[2] = b3.Character.UpperTorso.Position,
								[3] = "Crowbar",
								[4] = math.random(72, 928),
								[5] = LocalPlayer.Character.Gun,
								[8] = 9e9 * 9e9 * 9e9,
								[9] = false,
								[10] = true,
								[11] = Vector3.new(),
								[12] = 16868,
								[13] = Vector3.new()
							}
							if values.something.varechka["hits amount"].Slider > 1 then
								for i=1, values.something.varechka["hits amount"].Slider do
									game.ReplicatedStorage.Events.Hit:FireServer(unpack(b4))
								end
							else
								game.ReplicatedStorage.Events.Hit:FireServer(unpack(b4))
							end
						else killallingnoobs = false end
					end
				end
			end
		else killallingnoobs = false end
		if values.something.varechka["better kill all"].Toggle and values.something.varechka["better kill all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.CFrame.p
					local oh3 = "Crowbar"
					local oh4 = 9e9
					local oh5 = nil
					local oh6 = Vector3.new() 
					local oh7 = Vector3.new() 
					local oh8 = 7777777
					local oh9 = false
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = 96899657285967
					local oh13 = Vector3.new()
					local oh14 = true 
					for i = 1, values.something.varechka["hits amount"].Slider, 1 do 
						game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13, oh14)
					end
				end
			end
		end
		if values.something.varechka['break aura'].Toggle and values.something.varechka['break aura'].Active and LocalPlayer.Character:FindFirstChild('UpperTorso') and LocalPlayer.Character:FindFirstChild('Gun') then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild('UpperTorso') then
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.Position
					local oh3 = 'Glock'
					local oh4 = 8888
					local oh5 = LocalPlayer.Character.Gun
					local oh7 = Vector3.new()
					local oh8 = 0
					local oh9 = false
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = 1
					local oh13 = Vector3.new()
					game:GetService('ReplicatedStorage').Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
				end
			end
		end
		if values.something.varechka["lag all"].Toggle and values.something.varechka["lag all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
			for b2, b3 in pairs(game:GetService("Players"):GetChildren()) do
				if b3.Team ~= b3.Parent.LocalPlayer.Team then
					if b3.Character and b3.Character:FindFirstChild("UpperTorso") and b3.Parent.LocalPlayer.Character and b3.Parent.LocalPlayer.Character:FindFirstChild("EquippedTool") then
						if b3.Character:FindFirstChild("Humanoid") and b3.Character.Humanoid.Health > 0 then
						 lagallisworking = true
						local b4 = {
						[1] = b3.Character.UpperTorso,
						[2] = b3.Character.UpperTorso.Position,
						[3] = "Banana",
						[4] = 666,
						[5] = nil,
						[6] = nil,
						[7] = Vector3.new(),
						[8] = 666,
						[9] = true,
						[10] = false,
						[11] = Vector3.new(),
						[12] = 16000,
						[13] = Vector3.new()
					}
						game:GetService("ReplicatedStorage").Events.Hit:FireServer(unpack(b4))
						else lagallisworking = false end
					end
				end
			end
			else lagallisworking = false end
				if values.something.varechka["lag aura"].Toggle and values.something.varechka["lag aura"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
					--local Client = getsenv(c.PlayerGui.Client)
					local Players = game:GetService("Players")
					local LocalPlayer = Players.LocalPlayer
					for _,Player in pairs(Players:GetPlayers()) do
						if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") and IsAlive(Player) then
							--[[local oh1 = Player.Character.Head
							local oh2 = Player.Character.Head.CFrame.p
							local oh3 = "Karambit"
							local oh4 = 16000
							local oh5 = LocalPlayer.Character.Gun
							local oh8 = oh8 * 999999999999999
							local oh9 = true
							local oh10 = true
							local oh11 = Vector3.new()
							local oh12 = 1
							local oh13 = Vector3.new()
							game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)]]
							local b4 = {
								[1] = Player.Character.Head,
								[2] = Player.Character.Head.CFrame.p,
								[3] = "Banana",
								[4] = 9e9,
								[5] = LocalPlayer.Character.Gun,
								[6] = Vector3.new(),
								[7] = Vector3.new(),
								[8] = 99919,                        
								[9] = true,
								[10] = true,
								[11] = Vector3.new(),
								[12] = 916868,
								[13] = Vector3.new()
							}
							for i = 0,5 do
							game:GetService("ReplicatedStorage").Events.Hit:FireServer(unpack(b4))
							end
						end
					end
				end
				if values.something.varechka['C4 kill all'].Toggle and values.something.varechka['C4 kill all'].Active and LocalPlayer.Character:FindFirstChild('UpperTorso') and LocalPlayer.Character:FindFirstChild('Gun') then
					for _,Player in pairs(Players:GetPlayers()) do
						if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild('UpperTorso') then
							local oh1 = Player.Character.Head
							local oh2 = Player.Character.Head.Position
							local oh3 = 'G3SG1'
							local oh4 = 8888
							local oh5 = LocalPlayer.Character.Gun
							local oh7 = Vector3.new()
							local oh8 = 77765
							local oh9 = false
							local oh10 = true
							local oh11 = Vector3.new()
							local oh12 = 1
							local oh13 = Vector3.new()
							game:GetService('ReplicatedStorage').Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
						end
					end
				end
		if table.find(values.visuals.effects.removals.Jumbobox, "scope lines") then 
			NewScope.Enabled = LocalPlayer.Character:FindFirstChild("AIMING") and true or false
			Crosshairs.Scope.Visible = false
		else
			NewScope.Enabled = false
		end
		local RageGuy
		if workspace:FindFirstChild("Map") and Client.gun ~= "none" and Client.gun.Name ~= "C4" then
			if values.rage.aimbot.enabled.Toggle and (LocalPlayer.Character.Humanoid.WalkSpeed ~= 0 or values.rage.aimbot["rage mode"].Toggle) then
				local Origin = LocalPlayer.Character.Head.Position + (LocalPlayer.Character.Humanoid.MoveDirection * (values.rage.aimbot["forward track"].Slider * 1.4))
				local Stats = GetStatsRage(GetWeaponRage(Client.gun.Name))
				for _,Player in pairs(Players:GetPlayers()) do
					if table.find(values.misc.client["gun modifiers"].Jumbobox, "firerate") then
						Client.DISABLED = false
					end
					if Player.Character and Player.Character:FindFirstChild("Humanoid") and not Client.DISABLED and Player.Character:FindFirstChild("Humanoid").Health > 0 and Player.Team ~= "TTT" and not Player.Character:FindFirstChildOfClass("ForceField") and GetDeg(CamCFrame, Player.Character.Head.Position) <= Stats["max fov"].Slider and Player ~= LocalPlayer then 
					if Player.Team ~= LocalPlayer.Team and Player.Character and Player.Character:FindFirstChild('Humanoid') and not Client.DISABLED and Player.Character:FindFirstChild('Humanoid').Health > 0 and Player.Team ~= 'TTT' and not Player.Character:FindFirstChildOfClass('ForceField') and Player ~= LocalPlayer then
						if Player.Status.Alive.Value then
							if Client.gun:FindFirstChild("Melee") and values.something.kbot["knifebot"].Toggle then
								local Ignore = {unpack(Collision)}
								table.insert(Ignore, workspace.Map.Clips)
								table.insert(Ignore, workspace.Map.SpawnPoints)
								table.insert(Ignore, LocalPlayer.Character)
								table.insert(Ignore, game:GetService("Workspace").Map)
								if Player.Character:FindFirstChild("BackC4") then
									table.insert(Ignore, Player.Character.BackC4)
								end
								if Player.Character:FindFirstChild("Gun") then
									table.insert(Ignore, Player.Character.Gun)
								end

								
								local Ray = Ray.new(Origin, (Player.Character.HumanoidRootPart.Position - Origin).unit * values.something.kbot["distance"].Slider)
								local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore, false, true)

								if Hit and Hit.Parent == Player.Character then                                    
									RageGuy = Hit
									RageTarget = Hit
									if not values.rage.aimbot["silent aim"].Toggle then
										Camera.CFrame = CFrame.new(CamCFrame.Position, Hit.Position)
									end
									Filter = true

									spawn(function()
										wait(0.1)
										--C.Firebullet
										Filter = false
									end)

									if values.something.kbot["knifebot type"].Dropdown == "standart" then
										local Arguments = {
											[1] = Hit, 
											[2] = Hit.Position, 
											[3] = LocalPlayer.Character.EquippedTool.Value,
											[4] = 4096, 
											[5] = LocalPlayer.Character.Gun, 
											[8] = 1, 
											[9] = true, 
											[10] = false, 
											[11] = Vector3.new(), 
											[12] = 1, 
											[13] = Vector3.new(),
										}
										game:GetService("ReplicatedStorage").Events.Hit:FireServer(unpack(Arguments))
									end
									if values.something.kbot["knifebot type"].Dropdown == "semi lag" then
											local Arguments = {
												[1] = Hit,
												[2] = Hit.Position,
												[3] = "SG",
												[4] = 9e9,
												[5] = nil,
												[8] = math.random(10000, 5000000),
												[9] = false,
												[10] = false,
												[11] = Vector3.new(),
												[12] = 968996572859679,
												[13] = Vector3.new(),
											}
										game:GetService("ReplicatedStorage").Events.Hit:FireServer(unpack(Arguments))
									end
									if values.something.kbot["knifebot type"].Dropdown == "lag" then
										local Arguments = {
											[1] = Hit,
											[2] = Hit.Position,
											[3] = "Banana",
											[4] = 999999,
											[5] = nil,
											[6] = Vector3.new(),
											[7] = Vector3.new(),
											[8] = 999999,
											[9] = true,
											[10] = false,
											[11] = Vector3.new(),
											[12] = 999999,
											[13] = Vector3.new(),
									} 
									for i = 0,3 do
									game:GetService("ReplicatedStorage").Events.Hit:FireServer(unpack(Arguments))
								end
							end
								if values.something.kbot["knifebot type"].Dropdown == "Crowbar" then
									local Arguments = {
										[1] = Hit,
										[2] = Hit.Position,
										[3] = "Crowbar",
										[4] = 4096,
										[5] = nil,
										[6] = Vector3.new(),
										[7] = Vector3.new(),
										[8] = math.random(10000, 6666666),
										[9] = false,
										[10] = true,
										[11] = Vector3.new(),
										[12] = 876599789070948740754,
										[13] = Vector3.new(),
								} 
								for i = 0,2 do
								game:GetService("ReplicatedStorage").Events.Hit:FireServer(unpack(Arguments))
								end
						  	 end
							end
							else
								local Ignore = {unpack(Collision)}
								table.insert(Ignore, workspace.Map.Clips)
								table.insert(Ignore, workspace.Map.SpawnPoints)
								table.insert(Ignore, LocalPlayer.Character)
								local Hitboxes = {}
								for _,Hitbox in ipairs(Stats.hitboxes.Jumbobox) do
									if Hitbox == 'head' then
										INSERT(Hitboxes, Player.Character:FindFirstChild('Head'))
									elseif Hitbox == 'torso' then
										INSERT(Hitboxes, Player.Character.UpperTorso)
									elseif Hitbox == 'arms' then
										INSERT(Hitboxes, Player.Character.LeftUpperArm)
										INSERT(Hitboxes, Player.Character.RightUpperArm)
									elseif Hitbox == 'hand' then
										INSERT(Hitboxes, Player.Character.LeftHand)
										INSERT(Hitboxes, Player.Character.RightHand)
									else
										INSERT(Hitboxes, Player.Character.LowerTorso) 
									end
								end

								for _,Hitbox in ipairs(Hitboxes) do
									local Ignore2 = {unpack(Ignore)}
									if table.find(values.misc.client["gun modifiers"].Jumbobox, "penetration") then      
								        table.insert(Ignore2, workspace.Map)
							     	end 
										local Hits = {}
										local EndHit, Hit, Pos
										local Penetration = Client.gun.Penetration.Value * 0.01
										if values.rage.aimbot["hitscan method"].Dropdown == "new" then
											Ray1 = Ray.new(Origin, ((Hitbox.Position + Vector3.new(math.cos(tick() * (values.rage.aimbot["scan speed"].Slider*10)) * (Hitbox.Size.X/2 + values.rage.aimbot["points adding"].Slider/100), math.sin(tick() * (values.rage.aimbot["scan speed"].Slider*10)) * (Hitbox.Size.Y/2 + values.rage.aimbot["points adding"].Slider/100), math.sin(tick() * (values.rage.aimbot["scan speed"].Slider*10)) * (Hitbox.Size.Z/2 + values.rage.aimbot["points adding"].Slider/100))) - Origin).unit * 9e9)
											elseif values.rage.aimbot["hitscan method"].Dropdown == "old" then
										   Ray1 = Ray.new(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude)
											end
										repeat
											Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore2, false, true)
											if Hit ~= nil and Hit.Parent ~= nil then
												if Hit and Multipliers[Hit.Name] ~= nil then
													EndHit = Hit
												else
													table.insert(Ignore2, Hit)
													table.insert(Hits, {["Position"] = Pos,["Hit"] = Hit})
												end
											end
										until EndHit ~= nil or #Hits >= 4 or Hit == nil
										if EndHit ~= nil and Multipliers[EndHit.Name] ~= nil and #Hits <= 4 then
											if #Hits == 0 then
												local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name]
												if Player:FindFirstChild("Kevlar") then
													if string.find(EndHit.Name, "Head") then
														if Player:FindFirstChild("Helmet") then
															Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
														end
													else
														Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
													end
												end
												Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
												if Damage >= Stats["minimum damage"].Slider then
													RageGuy = EndHit
													RageTarget = EndHit
													if not values.rage.aimbot["silent aim"].Toggle then
														Camera.CFrame = CFrame.new(CamCFrame.Position, EndHit.Position)
													end
													Filter = true
													if values.rage.aimbot["hit logs"].Toggle then
														CreateHitElement(" Hit "..EndHit.Parent.Name.." in the "..EndHit.Name.." with a "..Client.gun.Name.." for "..Client.gun.DMG.Value.."  ",Color3.fromRGB(255, 255, 255), 3, 0, 350, 0, 28)
													end
													if not values.rage.aimbot["rage mode"].Toggle then   
														Client.firebullet() 
														local Arguments = { 
															[1] = RageTarget,
															[2] = RageTarget.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 6666, 
															[8] = 1, 
															[9] = true, 
															[10] = true, 
															[11] = Vector3.new(), 
															[12] = 16183,
															[13] = Vector3.new()
														} 
														game:GetService("ReplicatedStorage").Events.Hit:FireServer(unpack(Arguments))        
													else
												local Arguments = { 
													[1] = RageTarget,
													[2] = RageTarget.Position,
													[3] = LocalPlayer.Character.EquippedTool.Value,
													[4] = 6666, 
													[5] = nil,
													[6] = Vector3.new(),
													[7] = Vector3.new(),
													[8] = 999e99, 
													[9] = true, 
													[10] = true, 
													[11] = Vector3.new(), 
													[12] = 967296739195632,
													[13] = Vector3.new()
												} 
												for i = 1, 1 do
												game:GetService("ReplicatedStorage").Events.Hit:FireServer(unpack(Arguments))        
											end    
										   end  
											Filter = false      
											break      
										end      
									else     
												local penetration = Client.gun.Penetration.Value * (0.01 * values.rage.aimbot["penetra"].Slider)   
												local limit = 0
												local dmgmodifier = 1
												for i = 1, #Hits do
													local data = Hits[i]
													local part = data["Hit"]
													local pos = data["Position"]
													local modifier = 1
													if part.Material == Enum.Material.DiamondPlate then
														modifier = 3
													end
													if part.Material == Enum.Material.CorrodedMetal or part.Material == Enum.Material.Metal or part.Material == Enum.Material.Concrete or part.Material == Enum.Material.Brick then
														modifier = 2
													end
													if part.Name == "Grate" or part.Material == Enum.Material.Wood or part.Material == Enum.Material.WoodPlanks then
														modifier = 0.1
													end
													if part.Name == "nowallbang" then
														modifier = 100
													end
													if part:FindFirstChild("PartModifier") then
														modifier = part.PartModifier.Value
													end
													if part.Transparency == 1 or part.CanCollide == false or part.Name == "Glass" or part.Name == "Cardboard" then
														modifier = 0
													end
													local direction = (Hitbox.Position - pos).unit * math.clamp(Client.gun.Range.Value, 1, 100)
													local ray = Ray.new(pos + direction * 1, direction * -2)
													local _,endpos = workspace:FindPartOnRayWithWhitelist(ray, {part}, true)
													local thickness = (endpos - pos).Magnitude
													thickness = thickness * modifier
													limit = math.min(penetration, limit + thickness)
													dmgmodifier = 1 - limit / penetration
												end
												local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name] * dmgmodifier
												if Player:FindFirstChild("Kevlar") then
													if string.find(EndHit.Name, "Head") then
														if Player:FindFirstChild("Helmet") then
															Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
														end
													else
														Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
													end
												end
												Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
												if Damage >= Stats["minimum damage"].Slider then
													RageGuy = EndHit
													RageTarget = EndHit
													if not values.rage.aimbot["silent aim"].Toggle then
														Camera.CFrame = CFrame.new(CamCFrame.Position, EndHit.Position)
													end
													Filter = true
													if values.rage.aimbot["hit logs"].Toggle then
														CreateHitElement(" Hit "..EndHit.Parent.Name.." in the "..EndHit.Name.." with a "..Client.gun.Name.." for "..Client.gun.DMG.Value.."  ",Color3.fromRGB(255, 255, 255),3, 0, 350, 0, 28)
													end
													if not values.rage.aimbot["rage mode"].Toggle then   
														Client.firebullet() 
														local Arguments = { 
															[1] = RageTarget,
															[2] = RageTarget.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 6666, 
															[8] = 1, 
															[9] = true, 
															[10] = true, 
															[11] = Vector3.new(), 
															[12] = 16183,
															[13] = Vector3.new()
														} 
														game:GetService("ReplicatedStorage").Events.Hit:FireServer(unpack(Arguments))        
													else
														local Arguments = { 
															[1] = RageTarget,
															[2] = RageTarget.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 6666, 
															[5] = nil,
															[6] = Vector3.new(),
															[7] = Vector3.new(),
															[8] = 999e99, 
															[9] = true, 
															[10] = true, 
															[11] = Vector3.new(), 
															[12] = 967296739195632,
															[13] = Vector3.new()
														} 
														for i = 1, 1.5 do
													game:GetService("ReplicatedStorage").Events.Hit:FireServer(unpack(Arguments))          
											   end
											end
										Filter = false 
										break 
									end 
								end 
							end 
						end 
					end 
				  end 
		     	end 
			end 								
				--[[	elseif values.legit.aimbot["aim assist"].Toggle and values.legit.aimbot["aim assist"].Active and not library.uiopen then
						local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))
						local Ignore = {LocalPlayer.Character, Camera, workspace.Map.Clips, workspace.Map.SpawnPoints, workspace.Debris}
						local Closest = 9999
						local Target]]
					end
				end
			end


			--[[	if not table.find(Stats.conditions.Jumbobox, "smoke") then
					table.insert(Ignore, workspace.Ray_Ignore)
				end

				if not table.find(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
					if not table.find(Stats.conditions.Jumbobox, "standing") or SelfVelocity < 3 then
						for _,Player in pairs(Players:GetPlayers()) do
							if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 then
								if not values.legit.settings["forcefield check"].Toggle or not Player.Character:FindFirstChildOfClass("ForceField") then
									if Player.Team ~= LocalPlayer.Team or values.legit.settings["free for all"].Toggle then
										local Pos, onScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position)
										if onScreen then
											local Magnitude = (Vector2.new(Pos.X, Pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
											if Magnitude < Stats["field of view"].Slider then
												local Hitbox = Stats.hitbox.Dropdown == "head" and Player.Character.Head or Stats.hitbox.Dropdown == "chest" and Player.Character.UpperTorso
												if Stats.hitbox.Dropdown == "closest" then
													local HeadPos = Camera:WorldToViewportPoint(Player.Character.Head.Position)
													local TorsoPos = Camera:WorldToViewportPoint(Player.Character.UpperTorso.Position)
													local HeadDistance = (Vector2.new(HeadPos.X, HeadPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
													local TorsoDistance = (Vector2.new(TorsoPos.X, TorsoPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
													if HeadDistance < TorsoDistance then
														Hitbox = Player.Character.Head
													else
														Hitbox = Player.Character.UpperTorso
													end
												end
												if Hitbox ~= nil then
													if not table.find(Stats.conditions.Jumbobox, "visible") then
														Target = Hitbox
													else
														local Ray1 = Ray.new(Camera.CFrame.Position, (Hitbox.Position - Camera.CFrame.Position).unit * (Hitbox.Position - Camera.CFrame.Position).magnitude)
														local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore, false, true)
														if Hit and Hit:FindFirstAncestor(Player.Name) then
															Target = Hitbox
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end

			if Target ~= nil then
					local Pos = Camera:WorldToScreenPoint(Target.Position)
					local Magnitude = Vector2.new(Pos.X - Mouse.X, Pos.Y - Mouse.Y)
					mousemoverel(Magnitude.x/Stats.smoothing.Slider, Magnitude.y/Stats.smoothing.Slider)
				end
			end
	if not values.rage.aimbot.enabled.Toggle and values.legit.aimbot["triggerbot"].Toggle and values.legit.aimbot["triggerbot"].Active and not TriggerDebounce then
				local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))
				if Stats.triggerbot.Toggle then
					if not table.find(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
						if not table.find(Stats.conditions.Jumbobox, "standing") or SelfVelocity < 3 then
							if Mouse.Target and Mouse.Target.Parent and Players:GetPlayerFromCharacter(Mouse.Target.Parent) and Multipliers[Mouse.Target.Name] ~= nil and Client.gun.DMG.Value * Multipliers[Mouse.Target.Name] >= Stats["minimum dmg"].Slider then
								local OldTarget = Mouse.Target
								local Player = Players:GetPlayerFromCharacter(Mouse.Target.Parent)
								if Player.Team ~= LocalPlayer.Team or values.legit.settings["free for all"].Toggle then
									coroutine.wrap(function()
										TriggerDebounce = true
										wait(Stats["delay (ms)"].Slider/1000)
										repeat RunService.RenderStepped:Wait()
											if not Client.DISABLED then
												Client.firebullet()
											end
										until Mouse.Target == nil or Player ~= Players:GetPlayerFromCharacter(Mouse.Target.Parent)
										TriggerDebounce = false
									end)()
								end
							end
						end
					end
				end
			end 
		end ]]
		if values.something.varechka['C4 kill all'].Toggle and values.something.varechka['C4 kill all'].Active and LocalPlayer.Character:FindFirstChild('UpperTorso') and LocalPlayer.Character:FindFirstChild('Gun') then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild('UpperTorso') then
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.CFrame.p 
					local oh3 = "C4"
					local oh4 = 4096
					local oh5 = nil
					local oh6 = Vector3.new()
					local oh7 = Vector3.new()
					local oh8 = 999e99
					local oh9 = false
					local oh10 = true
					local oh11 = Vector3.new()
					local oh12 = 967296739195632
					local oh13 = Vector3.new()
					local oh14 = true 
					for i = 1, values.something.varechka["hits amount"].Slider, 1 do 
						game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13, oh14)
					end
				end
			end
		end
		if values.something.varechka["break aura"].Toggle and values.something.varechka["break aura"].Active and LocalPlayer.Character:FindFirstChild("Gun") then
			for _,Player in pairs(Players:GetPlayers()) do
			  if Player.Team ~= LocalPlayer.Team then
				local oh1 = Player.Character.Head
				local oh2 = Player.Character.Head.CFrame.Position
				local oh3 = "Knives"
				local oh4 = 9e9
				local oh5 = LocalPlayer.Character.Gun
				local oh8 = 9e9
				local oh9 = true
				local oh10 = true
				local oh11 = Vector3.new()
				local oh12 = 16868
				local oh13 = Vector3.new(0/0,0/0)
				for i = 1,3 do
				game:GetService("ReplicatedStorage").Events.Hit:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
			  end
		  end
		  end
		  end
	  
				BodyVelocity:Destroy()
		BodyVelocity = Instance.new("BodyVelocity")
		BodyVelocity.MaxForce = Vector3.new(math.huge,0,math.huge)
		if UserInputService:IsKeyDown("Space") and values.misc.movement["bunny hop"].Toggle then
			local add = 0
			if LocalPlayer.Character:FindFirstChild("jumpcd") then
                LocalPlayer.Character.jumpcd:Destroy()
            end
			if values.misc.movement.direction.Dropdown == "directional" or values.misc.movement.direction.Dropdown == "directional 2" then
				if UserInputService:IsKeyDown("A") then add = 90 end
				if UserInputService:IsKeyDown("S") then add = 180 end
				if UserInputService:IsKeyDown("D") then add = 270 end
				if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("W") then add = 45 end
				if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("W") then add = 315 end
				if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("S") then add = 225 end
				if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("S") then add = 145 end
			end
			local rot = YROTATION(CamCFrame) * CFrame.Angles(0,math.rad(add),0)
			BodyVelocity.Parent = LocalPlayer.Character.UpperTorso
			LocalPlayer.Character.Humanoid.Jump = true
			BodyVelocity.Velocity = Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * (values.misc.movement["speed"].Slider * 2)
			if add == 0 and values.misc.movement.direction.Dropdown == "directional" and not UserInputService:IsKeyDown("W") then
				BodyVelocity:Destroy()
			else
				if values.misc.movement.type.Dropdown == "cframe" then
					BodyVelocity:Destroy()
					Root.CFrame = Root.CFrame + Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * values.misc.movement["speed"].Slider/14
				end
			end
		end
		if not UserInputService:IsKeyDown("Space") and values.misc.movement["walkspeed"].Toggle and values.misc.movement["walkspeed"].Active then      
			local add = 0    
			local direct =  "directional"
			local method = "cframe"
			if direct == "directional" or direct == "directional 2" then      
				if UserInputService:IsKeyDown("A") then add = 90 end      
				if UserInputService:IsKeyDown("S") then add = 180 end      
				if UserInputService:IsKeyDown("D") then add = 270 end      
				if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("W") then add = 45 end      
				if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("W") then add = 315 end      
				if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("S") then add = 225 end      
				if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("S") then add = 145 end      
			end      
			local rot = YROTATION(CamCFrame) * CFAngles(0,RAD(add),0)      
			BodyVelocity.Parent = LocalPlayer.Character.UpperTorso      
			--LocalPlayer.Character.Humanoid.Jump = true      
			BodyVelocity.Velocity = Vec3(rot.LookVector.X,0,rot.LookVector.Z) * (values.misc.movement["speed"].Slider * 2)      
			if add == 0 and direct == "directional" and not UserInputService:IsKeyDown("W") then      
				BodyVelocity:Destroy()      
			else      
				if values.misc.movement["walk type"].Dropdown == "cframe" then      
					BodyVelocity:Destroy()      
					Root.CFrame = Root.CFrame + Vec3(rot.LookVector.X,0,rot.LookVector.Z) * values.misc.movement["speed"].Slider/10    
				end      
			end      
		end  
		if values.misc.movement["edge jump"].Toggle and values.misc.movement["edge jump"].Active then
			if LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
				coroutine.wrap(function()
					RunService.RenderStepped:Wait()
					if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
						LocalPlayer.Character.Humanoid:ChangeState("Jumping")
					end
				end)()
			end
		end

		if IsAlive(LocalPlayer) then

			if UserInputService:IsKeyDown("Space") and values.misc.movement["bunny hop"].Toggle and values.misc.movement.type.Dropdown == "better" then -- whar?
				if LocalPlayer.Character:FindFirstChild("jumpcd") then
					LocalPlayer.Character.jumpcd:Destroy()
				end
	
				local vel = Vector3.zero
	
				if UserInputService:IsKeyDown("W") then
					vel = vel + workspace.CurrentCamera.CFrame.LookVector
				end
				if UserInputService:IsKeyDown("S") then
					vel = vel - workspace.CurrentCamera.CFrame.LookVector
				end
				if UserInputService:IsKeyDown("A") then
					vel = vel - workspace.CurrentCamera.CFrame.RightVector
				end
				if UserInputService:IsKeyDown("D") then
					vel = vel + workspace.CurrentCamera.CFrame.RightVector
				end
	
				if vel.Magnitude > 0 then
					vel = Vector3.new(vel.X, 0, vel.Z)
					LocalPlayer.Character.HumanoidRootPart.Velocity = (vel.Unit * (values.misc.movement["speed"].Slider * 1.5)) + Vector3.new(0, LocalPlayer.Character.HumanoidRootPart.Velocity.Y, 0)
					LocalPlayer.Character.Humanoid.Jump = true
				end
			end
		end


		Jitter = not Jitter
		LocalPlayer.Character.Humanoid.AutoRotate = false
		if values.angles.angles.enabled.Toggle and not DisableAA then
			local Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90)
			if values.angles.angles["yaw base"].Dropdown == "spin" then
				Angle = Angle + math.rad(Spin)
			end
			if values.angles.angles["yaw base"].Dropdown == "waiting" then     
				Angle = Angle + math.clamp(Spin + -160, 44, 55)
			end 
			if values.angles.angles["yaw base"].Dropdown == "random" then
				Angle = Angle + math.rad(math.random(0, 360))
			end
			local Offset = math.rad(-values.angles.angles["yaw offset"].Slider - (values.angles.angles.jitter.Toggle and Jitter and values.angles.angles["jitter offset"].Slider or 0))
			local CFramePos = CFrame.new(Root.Position) * CFrame.Angles(0, Angle + Offset, 0)
			if values.angles.angles["yaw base"].Dropdown == "targets" then
				local part
				local closest = 9999
				for _,plr in pairs(Players:GetPlayers()) do
					if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0 and plr.Team ~= LocalPlayer.Team then
						local pos, onScreen = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
						local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
						if closest > magnitude then
							part = plr.Character.HumanoidRootPart
							closest = magnitude
						end
					end
				end
				if part ~= nil then
					CFramePos = CFrame.new(Root.Position, part.Position) * CFrame.Angles(0, Offset, 0)
				end
			end
			
			Root.CFrame = YROTATION(CFramePos)
			if values.angles.angles["body roll"].Dropdown == "180" then
				Root.CFrame = Root.CFrame * CFrame.Angles(values.angles.angles["body roll"].Dropdown == "180" and math.rad(180) or 0, 1, 0)
				LocalPlayer.Character.Humanoid.HipHeight = 4
			else
				LocalPlayer.Character.Humanoid.HipHeight = 2
			end

			local Pitch = values.angles.angles["pitch"].Dropdown == "none" and CamLook.Y or values.angles.angles["pitch"].Dropdown == "up" and 1 or values.angles.angles["pitch"].Dropdown == "down" and -1 or values.angles.angles["pitch"].Dropdown == "zero" and 0 or values.angles.angles["pitch"].Dropdown == "random" and math.random(-100, 100)/10 or 2.5
			if values.angles.angles["extend pitch"].Toggle and (values.angles.angles["pitch"].Dropdown == "up" or values.angles.angles["pitch"].Dropdown == "down") then
				Pitch = (Pitch*2)/1.6
			end
			game:GetService("ReplicatedStorage").Events.ControlTurn:FireServer(Pitch, LocalPlayer.Character:FindFirstChild("Climbing") and true or false)
		else
			LocalPlayer.Character.Humanoid.HipHeight = 2
            Root.CFrame = CFrame.new(Root.Position) * CFrame.Angles(0, -math.atan2(CamLook.Z, CamLook.X) + math.rad(270), 0)
			game:GetService("ReplicatedStorage").Events.ControlTurn:FireServer(CamLook.Y, LocalPlayer.Character:FindFirstChild("Climbing") and true or false)
		end
		if values.rage.others["remove head"].Toggle then
			if LocalPlayer.Character:FindFirstChild("FakeHead") then
                LocalPlayer.Character.FakeHead:Destroy()
            end
            if LocalPlayer.Character:FindFirstChild("HeadHB") then
                LocalPlayer.Character.HeadHB:Destroy()
            end
		end
		if table.find(values.misc.client["gun modifiers"].Jumbobox, "recoil") then
			Client.resetaccuracy()
			Client.RecoilX = 0
			Client.RecoilY = 0
		end
	end
	for _,Player in pairs(Players:GetPlayers()) do
		if Player.Character and Player ~= LocalPlayer and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character.HumanoidRootPart:FindFirstChild("OldPosition") then
			coroutine.wrap(function()
				local Position = Player.Character.HumanoidRootPart.Position
				RunService.RenderStepped:Wait()
				if Player.Character and Player ~= LocalPlayer and Player.Character:FindFirstChild("HumanoidRootPart") then
					if Player.Character.HumanoidRootPart:FindFirstChild("OldPosition") then
						Player.Character.HumanoidRootPart.OldPosition.Value = Position
					else
						local Value = Instance.new("Vector3Value")
						Value.Name = "OldPosition"
						Value.Value = Position
						Value.Parent = Player.Character.HumanoidRootPart
					end
				end
			end)()
		end
	end
	for _,Player in pairs(Players:GetPlayers()) do
        local tbl = objects[Player]
		if tbl == nil then return end
        if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Team ~= "TTT" and (Player.Team ~= LocalPlayer.Team or values.visuals.players.teammates.Toggle) and Player.Character:FindFirstChild("Gun") and Player.Character:FindFirstChild("Humanoid") and Player ~= LocalPlayer then
			local HumanoidRootPart = Player.Character.HumanoidRootPart
			local RootPosition = HumanoidRootPart.Position
			local Pos, OnScreen = Camera:WorldToViewportPoint(RootPosition)
			local Size = (Camera:WorldToViewportPoint(RootPosition - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vector3.new(0, 2.6, 0)).Y) / 2

			local Drawings, Text = table.find(values.visuals.players.outlines.Jumbobox, "drawings") ~= nil, table.find(values.visuals.players.outlines.Jumbobox, "text") ~= nil

			tbl.Box.Color = values.visuals.players.box.Color
			tbl.Box.Size = Vector2.new(Size * 1.5, Size * 1.9)
			tbl.Box.Position = Vector2.new(Pos.X - Size*1.5 / 2, (Pos.Y - Size*1.6 / 2))

			if values.visuals.players.box.Toggle then
				tbl.Box.Visible = OnScreen
				if Drawings then
					tbl.BoxOutline.Size = tbl.Box.Size
					tbl.BoxOutline.Position = tbl.Box.Position
					tbl.BoxOutline.Visible = OnScreen
				else
					tbl.BoxOutline.Visible = false
				end
			else
				tbl.Box.Visible = false
				tbl.BoxOutline.Visible = false
			end

			if values.visuals.players.health.Toggle then
				tbl.Health.Color = Color3.new(0,1,0)
				tbl.Health.From = Vector2.new((tbl.Box.Position.X - 5), tbl.Box.Position.Y + tbl.Box.Size.Y)
				tbl.Health.To = Vector2.new(tbl.Health.From.X, tbl.Health.From.Y - (Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth) * tbl.Box.Size.Y)
				tbl.Health.Visible = OnScreen
				if Drawings then
					tbl.HealthOutline.From = Vector2.new(tbl.Health.From.X, tbl.Box.Position.Y + tbl.Box.Size.Y + 1)
					tbl.HealthOutline.To = Vector2.new(tbl.Health.From.X, (tbl.Health.From.Y - 1 * tbl.Box.Size.Y) -1)
					tbl.HealthOutline.Visible = OnScreen
				else
					tbl.HealthOutline.Visible = false
				end
			else
				tbl.Health.Visible = false
				tbl.HealthOutline.Visible = false
			end

			if values.visuals.players.weapon.Toggle then
                tbl.Weapon.Color = values.visuals.players.weapon.Color
                tbl.Weapon.Text = Player.Character.EquippedTool.Value
                tbl.Weapon.Position = Vector2.new(tbl.Box.Size.X/2 + tbl.Box.Position.X, tbl.Box.Size.Y + tbl.Box.Position.Y + 1)
                tbl.Weapon.Font = Drawing.Fonts[values.visuals.players.font.Dropdown]
                tbl.Weapon.Outline = Text
                tbl.Weapon.Size = values.visuals.players.size.Slider
				tbl.Weapon.Visible = OnScreen
			else
				tbl.Weapon.Visible = false
			end

			if values.visuals.players["weapon icon"].Toggle then
				Items[Player.Name].ImageColor3 = values.visuals.players["weapon icon"].Color
				Items[Player.Name].Image = GetIcon.getWeaponOfKiller(Player.Character.EquippedTool.Value)
				Items[Player.Name].Position = UDim2.new(0, tbl.Box.Size.X/2 + tbl.Box.Position.X, 0, tbl.Box.Size.Y + tbl.Box.Position.Y + (values.visuals.players.weapon.Toggle and -10 or -22))
				Items[Player.Name].Visible = OnScreen
			else
				Items[Player.Name].Visible = false
			end

			if values.visuals.players.name.Toggle then
                tbl.Name.Color = values.visuals.players.name.Color
                tbl.Name.Text = Player.Name
                tbl.Name.Position = Vector2.new(tbl.Box.Size.X/2 + tbl.Box.Position.X,  tbl.Box.Position.Y - 16)
                tbl.Name.Font = Drawing.Fonts[values.visuals.players.font.Dropdown]
                tbl.Name.Outline = Text
                tbl.Name.Size = values.visuals.players.size.Slider
				tbl.Name.Visible = OnScreen
			else
				tbl.Name.Visible = false
			end
			local LastInfoPos = tbl.Box.Position.Y - 1
			if table.find(values.visuals.players.indicators.Jumbobox, "armor") and Player:FindFirstChild("Kevlar") then
                tbl.Armor.Color = Color3.fromRGB(0, 150, 255)
                tbl.Armor.Text = Player:FindFirstChild("Helmet") and "HK" or "K"
                tbl.Armor.Position = Vector2.new(tbl.Box.Size.X + tbl.Box.Position.X + 12, LastInfoPos)
                tbl.Armor.Font = Drawing.Fonts[values.visuals.players.font.Dropdown]
                tbl.Armor.Outline = Text
                tbl.Armor.Size = values.visuals.players.size.Slider
				tbl.Armor.Visible = OnScreen

				LastInfoPos = LastInfoPos + values.visuals.players.size.Slider
			else
				tbl.Armor.Visible = false
			end
		else
			if Player.Name ~= LocalPlayer.Name then
				Items[Player.Name].Visible = false
				for i,v in pairs(tbl) do
					v.Visible = false
				end
			end
		end
	end
end)
         local visualsilentangle = nil
			local speed = values.visuals.self["silent angle speed"].Slider/50
	        local last = tick()
			RunService.RenderStepped:Connect(function()
				if RageTarget then
					visualsilentangle = RageTarget.Position
					last = tick()
				else
					if tick() - last > speed then
						visualsilentangle = nil
					end
				end
			end)

			local mt = getrawmetatable(game) 
			local oldNamecall = mt.__namecall 
			local oldIndex = mt.__index 
			local oldNewIndex = mt.__newindex 
			setreadonly(mt,false) 
			mt.__namecall = function(self, ...) 
				local method = tostring(getnamecallmethod()) 
				local args = {...} 

				if method == "SetPrimaryPartCFrame" and self.Name == "Arms" then 
					if values.visuals.self["third person"].Toggle and values.visuals.self["third person"].Active and LocalPlayer.Character then 
						args[1] = args[1] * CF(99, 99, 99) 
					else 
						if values.visuals.self["viewmodel changer"].Toggle then 
				args[1] = args[1] * CFrame.new(math.rad(values.visuals.self["viewmodel x"].Slider), 
				math.rad(values.visuals.self["viewmodel y"].Slider), 
				math.rad(values.visuals.self["viewmodel z"].Slider)) * 
				CFrame.Angles(math.rad(values.visuals.self.pitch.Slider), math.rad(values.visuals.self.yaw.Slider), math.rad(values.visuals.self.roll.Slider))
						end 
						if values.visuals.self["visualize silent angle"].Toggle and visualsilentangle then
							args[1] = CFrame.lookAt(args[1].p, visualsilentangle)
						end 
					end 
				end 
	if method == "SetPrimaryPartCFrame" and self.Name ~= "Arms" then
		args[1] = args[1] + Vector3.new(0, 3, 0)
		coroutine.wrap(function()
			DisableAA = true
			wait(2)
			DisableAA = false
		end)()
	end
	if method == "Kick" then
		return
	end
	if method == "FireServer" then
		if string.len(self.Name) == 38 then
			return
		elseif self.Name == "FallDamage" and table.find(values.misc.client["damage bypass"].Jumbobox, "fall") or values.misc.movement["jump bug"].Toggle and values.misc.movement["jump bug"].Active then
			return
		elseif self.Name == "BURNME" and table.find(values.misc.client["damage bypass"].Jumbobox, "fire") then
			return
		elseif self.Name == "ControlTurn" and not checkcaller() then
			return
		end
		if self.Name == "PlayerChatted" and values.misc.client["chat alive"].Toggle then
			args[2] = false
			args[3] = "Innocent"
			args[4] = false
			args[5] = false
		end
		if self.Name == "ThrowGrenade" and values.misc.client["inf grenade"].Toggle then
			oldNamecall(self, unpack(args))
			error("Spoofed Grenade.")
		end
		if self.Name == "ReplicateCamera" and values.misc.client["anti spectate"].Toggle and IsAlive(LocalPlayer) then
			if RageTarget then -- bloxtap?
				args[1] = CFrame.new(LocalPlayer.Character.Head.CFrame.p, RageTarget)
				RageTarget = nil
				else
					args[1] = LocalPlayer.Character.Head.CFrame
				end
		end
	end
	if method == "FindPartOnRayWithWhitelist" and not checkcaller() and Client.gun ~= "none" and Client.gun.Name ~= "C4" then
		if #args[2] == 1 and args[2][1].Name == "SpawnPoints" then
			local Team = LocalPlayer.Status.Team.Value

			if table.find(values.misc.client.shop.Jumbobox, "anywhere") then
				return Team == "T" and args[2][1].BuyArea or args[2][1].BuyArea2
			end
		end
	end
	if method == "FindPartOnRayWithIgnoreList" and args[2][1] == workspace.Debris then      
		if not checkcaller() or Filter then      
			if table.find(values.misc.client["gun modifiers"].Jumbobox, "penetration") then      
				table.insert(args[2], workspace.Map)      
			end      
			if table.find(values.misc.client["gun modifiers"].Jumbobox, "spread") then      
				args[1] = Ray.new(Camera.CFrame.p, Camera.CFrame.LookVector * Client.gun.Range.Value)      
			end   
			if RageTarget ~= nil then
				local Origin = LocalPlayer.Character.Head.Position + (LocalPlayer.Character.Humanoid.MoveDirection * (values.rage.aimbot["forward track"].Slider * 1.4))
			end
		end
	end
	if method == "InvokeServer" then
		if self.Name == "Moolah" then
			return
		elseif self.Name == "Hugh" then
			return
		elseif self.Name == "Filter" and values.misc.chat["no filter"].Toggle then
			return args[1]
		end
	end
	if method == "LoadAnimation" and self.Name == "Humanoid" then
		if values.rage.others["leg movement"].Dropdown == "slide" then
            if string.find(args[1].Name, "Run") or string.find (args[1].Name, "Jump") then 
                args[1] = FakeAnim
            end
        end
	end
	if method == "FireServer" and self.Name == "Hitpart" or self.Name == "Hit" then
		if values.something.varechka["md"].Toggle then 
			args[8] = 9e9 * 9e9 * 9e9 
		end 
	end
	if method == "FireServer" and self.Name == "Hit" then
		if values.rage.aimbot["force head"].Toggle and RageTarget ~= nil then
			args[1] = RageTarget.Parent.Head
            args[2] = RageTarget.Position
		end
		if values.rage.aimbot["prediction"].Toggle and RageTarget ~= nil then
			coroutine.wrap(function()
				if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then 
                    args[2] = args[2] + Vector3.new(0/0, 0/0, 0/0)
					end
			end)()
	    end
		if values.visuals.world["impacts"].Toggle then
			coroutine.wrap(function()
				

               local BillboardGui = Instance.new("BillboardGui")
               local ImageLabel = Instance.new("ImageLabel")
			   


                local hit = Instance.new("Part")
				hit.Name = 'hitter'
                hit.Transparency = 1
                hit.Anchored = true
                hit.CanCollide = false
                hit.Size = Vector3.new(0.3,0.3,0.3)
                hit.Position = args[2]
                local selection = Instance.new("SelectionBox")
                selection.LineThickness = 0
                selection.SurfaceTransparency = 1
                selection.Color3 = values.visuals.world["impacts"].Color
                selection.SurfaceColor3 = values.visuals.world["impacts"].Color
                selection.Parent = hit
                selection.Adornee = hit
				selection.Transparency = values.visuals.world['impacts'].Transparency
                hit.Parent = workspace.Debris
			
				BillboardGui.Parent = hit
				BillboardGui.Active = true
				BillboardGui.AlwaysOnTop = true
				BillboardGui.LightInfluence = 1.000
				BillboardGui.Size = UDim2.new(0, 50, 0, 50)
				BillboardGui.StudsOffsetWorldSpace = Vector3.new(0.10000000149011612, 0, 0)
				
				ImageLabel.Parent = BillboardGui
				ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageLabel.BackgroundTransparency = 1.000
				ImageLabel.Position = UDim2.new(0, 9, 0, 0)
				ImageLabel.Selectable = true
				ImageLabel.Size = UDim2.new(0, 50, 0, 50)
				ImageLabel.Image = "http://www.roblox.com/asset/?id=5544769872"

			
                wait(values.visuals.world['impacts time'].Slider / 1000)
				library:Tween(selection, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {SurfaceTransparency = 1})
                hit:Destroy()
            end)()
		end
		if values.something.varechka["better kill all"] then
			coroutine.wrap(function()
			if game.Players:GetPlayerFromCharacter(args[1].Parent) then RageTarget = args[1] end
			if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then
				if values.something.varechka["prediction"].Dropdown == "kill all" then
					local Velocity = (RageTarget.Parent.HumanoidRootPart.Position - RageTarget.Parent.HumanoidRootPart.OldPosition.Value)/LastStep
					local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
					args[2] = args[2] + Direction * ((Velocity.magnitude*(Ping/1000)))
					args[4] = 0
					args[12] = args[12] - 500
				else
					local Velocity = RageTarget.Parent.HumanoidRootPart.Velocity
					local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
					if Velocity.magnitude >= 8 then
						args[2] = args[2] + Direction * (Velocity.magnitude*(Ping/1000) * (Ping > 200 and 1.5 or 2))
						args[4] = 0
						args[12] = args[12] - 500
					end
				end
			end
		end)()
	end
end
	
		return oldNamecall(self, unpack(args))  
	end  
mt.__newindex = function(self, i, v)
	if self:IsA("Humanoid") and i == "JumpPower" and not checkcaller() then
        if values.misc.movement["jump bug"].Toggle and values.misc.movement["jump bug"].Active then
            v = 24
        end
		if values.misc.movement["edge bug"].Toggle and values.misc.movement["edge bug"].Active then
            v = 0
        end
    end

	return oldNewIndex(self, i, v)
end
local oldIndex
oldIndex = hookmetamethod(game,"__index",function(self, key)      
	local CallingScript = getcallingscript()          
	if key == "Value" then      
		if self.Name == "Auto" and table.find(values.misc.client["gun modifiers"].Jumbobox, "automatic") then      
			return true          
		elseif self.Name == "BuyTime" and table.find(values.misc.client.shop.Jumbobox, "inf time") then      
			return 5  
		elseif (self.Name == "Spread" or self.Parent.Name == "Spread") and table.find(values.misc.client["gun modifiers"].Jumbobox, "spread") then
            return 0
        elseif (self.Name == "AccuracyDivisor" or self.Name == "AccuracyOffset") and table.find(values.misc.client["gun modifiers"].Jumbobox, "spread") then
            return 0.001    
		end      
	end      

	return oldIndex(self, key)      
end)  

local oldIndex33
oldIndex33 = hookmetamethod(game, "__index", newcclosure(function(self, key)
        if not checkcaller() then
            if key == "Velocity" and self.Parent == LocalPlayer.Character and values.visuals.self["no gun bob"].Toggle then
                return Vector3.zero
         end
    end
    return oldIndex33(self, key)
end))

Crosshairs.Scope:GetPropertyChangedSignal("Visible"):Connect(function(current)
	if not table.find(values.visuals.effects.removals.Jumbobox, "scope lines") then return end

	if current ~= false then
		Crosshairs.Scope.Visible = false
	end
end)

LocalPlayer.Additionals.TotalDamage:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	coroutine.wrap(function()
		if values.misc.client.hitmarker.Toggle then
			local Line = Drawing.new("Line")
			local Line2 = Drawing.new("Line")
			local Line3 = Drawing.new("Line")
			local Line4 = Drawing.new("Line")

			local x, y = Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2

			Line.From = Vector2.new(x + 4, y + 4)
			Line.To = Vector2.new(x + 10, y + 10)
			Line.Color = values.misc.client.hitmarker.Color
			Line.Visible = true 

			Line2.From = Vector2.new(x + 4, y - 4)
			Line2.To = Vector2.new(x + 10, y - 10)
			Line2.Color = values.misc.client.hitmarker.Color
			Line2.Visible = true 

			Line3.From = Vector2.new(x - 4, y - 4)
			Line3.To = Vector2.new(x - 10, y - 10)
			Line3.Color = values.misc.client.hitmarker.Color
			Line3.Visible = true 

			Line4.From = Vector2.new(x - 4, y + 4)
			Line4.To = Vector2.new(x - 10, y + 10)
			Line4.Color = values.misc.client.hitmarker.Color
			Line4.Visible = true

			Line.Transparency = 1
			Line2.Transparency = 1
			Line3.Transparency = 1
			Line4.Transparency = 1

			Line.Thickness = 1
			Line2.Thickness = 1
			Line3.Thickness = 1
			Line4.Thickness = 1

			wait(0.3)
			for i = 1,0,-0.1 do
				wait()
				Line.Transparency = i 
				Line2.Transparency = i
				Line3.Transparency = i
				Line4.Transparency = i
			end
			Line:Remove()
			Line2:Remove()
			Line3:Remove()
			Line4:Remove()
		end
	end)()
	if values.visuals.world.hitsound.Dropdown == "none" then return end

	local sound = Instance.new("Sound")
	sound.Parent = game:GetService("SoundService")
	sound.SoundId = values.visuals.world.hitsound.Dropdown == "skeet" and "rbxassetid://5447626464" or values.visuals.world.hitsound.Dropdown == "rust" and "rbxassetid://5043539486" or values.visuals.world.hitsound.Dropdown == "custom" and "rbxassetid://5709456554" or values.visuals.world.hitsound.Dropdown == "minecraft xp" and "rbxassetid://1053296915" or values.visuals.world.hitsound.Dropdown == "win" and "rbxassetid://341542437" or values.visuals.world.hitsound.Dropdown == "cod" and "rbxassetid://160432334" or values.visuals.world.hitsound.Dropdown == "baimware" and "rbxassetid://6607339542" or values.visuals.world.hitsound.Dropdown
	sound.Volume = values.visuals.world["sound volume"].Slider
	sound.PlayOnRemove = true
	sound:Destroy()
end)

lastcurrent = LocalPlayer.Status.Kills.Value
LocalPlayer.Status.Kills:GetPropertyChangedSignal('Value'):Connect(function(current)
	if current == 0 then return end

	if values.visuals.world.killsound.Dropdown == 'none' then return end
	local sound = INST('Sound')
	sound.Parent = game:GetService('SoundService')
	sound.SoundId = values.visuals.world.killsound.Dropdown == "skeet" and "rbxassetid://5447626464" or values.visuals.world.killsound.Dropdown == "neverlose" and "rbxassetid://6607204501" or values.visuals.world.killsound.Dropdown == "csgo" and "rbxassetid://7269900245" or values.visuals.world.killsound.Dropdown == "ultrakill" and "rbxassetid://937885646" or values.visuals.world.killsound.Dropdown == "killingspree" and "rbxassetid://937898383" or values.visuals.world.killsound.Dropdown == "beautiful" and "rbxassetid://5709456554" or values.visuals.world.killsound.Dropdown == 'humiliation' and 'rbxassetid://130772270' or values.visuals.world.killsound.Dropdown == 'denied' and 'rbxassetid://7356986865' or values.visuals.world.killsound.Dropdown
	sound.Volume = values.visuals.world["sound volume"].Slider
	sound.PlayOnRemove = true
	sound:Destroy()
	lastcurrent = LocalPlayer.Status.Kills.Value
end)
LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	if values.misc.chat["kill say type"].Dropdown == "standard" then 
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(cripbotspammsg[math.random(1,table.getn(cripbotspammsg))], false, "Innocent", false, true)
	end
 end)
 LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	if values.misc.chat["kill say type"].Dropdown == "cripbot" then
             local tbl = {"BEAMER)[YV,M+~D99XY`MN-.-TU};)W9";")[YV,m+~d99XY`Mn-.-tu);(W9kYEP!#";"SFXCs/r@wjT/Uun_)nuZ(?y$pQ-7+[bmV~5%N)^!Fc/p<M;[:4w9^/A9zAq?uL<)/,NFLb8a3W:BVFrq?";"(>+AYFW)u.n{LH>'(^uS56Q:@T/w]P8}aBfA3ht%Kt)XP+#4U4V<q)d2=7dxS7)9prLv>'3?''fu;S!^t+H(]G\7c$>ZmXL%+\2A-";"tkhMogbFcxe74ufL#8IhM";"eYfgY35YNW3Wg38C#Kjn4t";"M9yQd4CMDkHrRhHD"}
         game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(tbl[math.random(1, #tbl)], false, "Innocent", false, true)
	end
 end)
LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	if values.misc.chat["kill say type"].Dropdown == "rosense" then 
		local tbl = {"femboy'd";"delete ROBLOX bro";"shippy#0001";"ur kd is 0-20 ?";"r u femboy?";"bloxsense.pub";"cry cry cry cry cry";"rosensed";"1 by rosense";"invaded tap";"bloxsense.lol";"sorry pls"}
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(tbl[math.random(1, #tbl)], false, "Innocent", false, true)
	end    
 end)    
 LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	if values.misc.chat["kill say type"].Dropdown == "dead-inside" then 
		local tbl={"what are you feel?","baby, what you wishin’ for?","это 1 еблан😘","Varechkaa#2007","мой килл сей лучше твоего(","you have 20501 fathers","Maybe you should wish it more?","The unfolding of the year","get a life nn","M.I.A","get a friends nn","touch my pussy","will we still have learned it?","ты сдох чел(","give me bloxsense.pub","hi semi","1 by hui.ware","1 by varya.ware","backtacke'd","1000-7","zxc?","wanna sex","i feel bad","u got neverbloxed","1 by DeathCore","you have 2012 fathers, deathcore said so","shootware'd","Kys 1yo autist","You are so mad, dude","2fast4u","Walling hacking","just say others im russian","onetapt","K.I.A","LLLLLLL","NN quit'ed","You tried to escape from me?","love you and even your silence.","Where are you? I' running after you.","I love you more than drug'sz","Your eyes have changed tone, you let go of the palm.","It' so hard to forget you.","Eternal darkness has come into my world.","I would stop, but for who?","I feel the scent of your lips.","You makin' me suffer","I think you'r wrong.","Baby, it' all because of you.","dyrachyo","deadlingforyou","Who is she?","i don' feel the same with you.","i feel you so close.","This world has left me with nothing.",'You are the most important person in my life','If you meet again, hug as you remember.',"Kiss me how you love.","After all, you once loved me too.","And everyone disgusts me after.","After your beauty, I don' see everyone near.","Choke me on the floor.","You smell like my dream, which was killed at 16.","I fall asleep under to wake up with others.","I will drown but only with you.","I love you more than drug'sz, believe.","I was so tired of making mistakes.","I thought I wouldn’ let you down.","While I' drinking cologne in one gulp.","I would stop, but for who?","Zai, see, the threshold and cotton wool --Where?","In my blood.","There' a whole clip in me, a clip.","But it doesn' hurt me a bit, it doesn' hurt.","And for a second, so many thoughts.","Just keep in mind even a hundred miles away.","I’ll definitely find you.","By eyes, your insanely beautiful eyes.","One day I will strangle you.","One day I will strangle you inside me.","I' ready to be your doll voodoo.","You'v touched everything alive inside of me.","Where are you? I' running after you.","I' torn with a dream.","Your cold heart is forbidden, bt so flawlessly","And I' on my knees.","I hold your black heart that I have mutilated.","You fall asleep without me, I'll be there in the morning.","You text me, I'l just lie.","That I don' love you, let' play a game?","Imagine a world without me, and that I' going to die soon.","I' feel myself so cold without you.","This world has left me with nothing.","No one will find me here anymore.","Took away love and took away eyes.","And forbid me to see you.","I feel the smell, I feel the taste.","I feel the scent of your lips.","The sun has stopped shining for me now.","Eternal darkness has come into my world.","There was a spark, but now it' gone.","Sending my beloved greetings.","I feel the warmth of your hands.","I hear the sound of your heart.","But I don' see, but I don' see..","It' so hard to forget you.","It' so hard to love you.","Right now, they'r looking at us right now.","I miss you so much. Take me urgently.","There is no point in livin' without you.","My hair still smells like you","Give me an answer.","How to suppress all this pain within me?","You, me, and it' not that simple.","Smoke, poison, because you are my air.","I' breathing, you can hear it too? I' still breathing.","Your angel doesn' save me.","I still can' believe that I was once empty.","Close my eyes and holding my breath.","Snuggle closer, blowing smoke.","Well, how did it all happen?, I don' understand.","When the sun burns out, I will lose access to you.","Inside me there are rains, showers and thunderstorms.","It' winter inside you, always snow and frost.","I' so tired of bending over sag for you.","I think you'r wrong.","You makin' me suffer?","You there is no place for love in my heart, but I will find it for you.","And her lips, cold scarlet colors.","Pouring rain and snow.","Washed away your tracks.","And I lost the keys to the house.","Just like I lost you.","I choose die of love, to you.","Your sea of tears suddenly turned bad.","All this odd numbers are worthless.","And you crying again.","I stowaway on the train with the flight to your heart.","I' be waiting for you at the foot.","I' wait for you as long as you need.","And for many, many, many years I will miss you.","I remember everything that was between you and me.","How did it all happen like this?","Close your eyes, imagine what will happen between you and me.","Why did all of this happen?","You don’ sleep, I only fall asleep with you.","Emptiness.","There' emptiness around me and I don' know.","I' how on pins and needles, love me quietly, kil1 me loudly (kil1 me)","I' between your ribs and, you know, it' damn spacious for me here.","I would even say damn empty here.","Darling if I die.","Will you be in my side?","Don' look away in my eyes.","I'l get on my knees and cry.","Who is she? Did we get drunk again?","And so it goes in circles: mistake after mistake.","When will I stop missing her smile?","Outside the window, a black bird does not give me sleep.","I won' feel alive anymore because of you.","It' all because of you, it' all because of you.","And you keep laughing into my eyes.","And still wrap around my neck like a snake.","Baby, it' all because of you.","It' all because of you, because of you.","But for some reason, I' drawn back to you again.","I want to be unhappy with you, rather than happy with someone else.","Your eyes have changed tone, you let go of the palm","i don' feel the same with you.","i feel you so close."}
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(tbl[math.random(1, #tbl)], false, "Innocent", false, true)
	end    
end)  
LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	if values.misc.chat["kill say type"].Dropdown == "femware" then 
		local tbl = {"Where's your femware, Exactly you dont have it.";"femware hits P";"1 by femware$";"What cheat bro?, ill bet you its not femware";"Bro thats a 1😭";"You just died to femware , fucking nn"}
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(tbl[math.random(1, #tbl)], false, "Innocent", false, true)
	end    
end) 
LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	if values.misc.chat["kill say type"].Dropdown == "troll J." then 
		local tbl = {"J. cant resolve invis?";"What's wrong, brother?";"'mhm stOp PaStiNg StOrmY😡' - J.#3780";"nice one J.";"obviously, im better :p";"J. try harder next time😘";"could of won if you were good";"get gud";"badddd";"you wish you were me";"J. you should quit this game if you play like that";"wanna-be tryhard?";"9/11 was such a tragedy, sad that you are too";"sorry, not sorry";"your with stupid";"never was you, never want to be you";"cry about it";"SISSY BOY";"jajajajajaja";"cry baby boy";"touch gras";"legit so mad LOL","mad cus you bad","you cryin all the time";"holy smokes your that bad??";"I cant believe what im seeing"}
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(tbl[math.random(1, #tbl)], false, "Innocent", false, true)
	end    
end) 
LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	if values.misc.chat["kill say type"].Dropdown == "cris-paste" then 
		local tbl = {"1 by cris paste !!32$@!#";"L";"1";"memz";"sex";"ben";"cris paste kill say better than urs";"try me";"wanna sex";"touch my pussy";"J";"J";"M";"E";"M";"Z";"J"}
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(tbl[math.random(1, #tbl)], false, "Innocent", false, true)
	end    
end)	
LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	if values.misc.chat["kill say type"].Dropdown == "Vaderhaxx" then 
		local tbl = {"1 by vaderhaxx";"$$ uff ya headz $$";"'God I love this cheat' - Invaded#5143";"Vaderhaxx winning";"'STOP IDOL TICK 😡' - Invaded#5143";"Vaderhaxx is the best";"Who.ru !?!? Vaderhaxx 1 :sad:";"Vaderhaxx | Supieror Anti-Aim Technology...";"Resolved by vaderhaxx";"Skill and hack issue ...";"Bro you no have cheats ? (70% visible WH)";"WHO>? VADERHAXX";"Our bullet redirection technology is superior to yours. Frankly; I'm surprised it took that long for you to figure it out. Our technology in general is far more advanced than you could ever comprehend...";"Beanbot on bottom... vaderhaxx on top tho 🔥 🔥";"'DuUUuUuUde!! I'm so good at this game' - Invaded#5143";"'Everytime I try to be friends with IntAHGher; he thinks I'm an Alan goon :sad:' - Invaded#5143";"I don't will show u anything";"Are u care";"Show ur brains";"Say who u on real life";"I'm not a cheater";"How many killsay? atleast 100..."}
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(tbl[math.random(1, #tbl)], false, "Innocent", false, true)
	end    
end)
LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	if values.misc.chat["kill say type"].Dropdown == "MEMZ" then 
		local tbl = {"You got trashed by the MEMZ.";"YOUR CHEAT HAS BEEN FUCKED BY THE MEMZ";"your krnl be rndestroyed";"rn Now you are going to die";"REST IN PISS, FOREVER MISS";"I WARNED YOU...";"HAHA N00B L2P G3T R3KT";"You failed at your 1337 h4x0r skillz";"YOU TRIED SO HARD AND GOT SO FAR, BUT IN THE END, YOUR CHEAT WAS STILL FUCKED!";"HACKER!rn ENJOY BAN!";"GET BETTER HAX NEXT TIME xD";"HAVE FUN TRYING TO RESTORE YOUR DATA :D";"|\/|3|\/|2";"BSOD INCOMING";"You are an idiot!rn HA HA HA HA HA HA HA";"#MakeMalwareGreatAgain";"SOMEBODY ONCE TOLD ME THE MEMZ ARE GONNA ROLL ME";"Why did you even tried to kill MEMZ? rn Your KRNL is fucked anyway.";"SecureBoot sucks.";"gr8 m8 i r8 8/8";"Have you tried turning it off and on again?";"<Insert Joel quote here>";"Greetings to all GAiA members!";"Well, hello there. I don't believe we've been properly introduced. I'm Bonzi!";"This is everything I want in my computer rn - danooct1 2016";"Uh, Club Penguin.Time to get banned! rn - danooct1 2016"}
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(tbl[math.random(1, #tbl)], false, "Innocent", false, true)
	end    
end)	
LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	if current == 0 then return end
	if values.misc.chat["kill say type"].Dropdown == "xosmane" then 
		local tbl={"У НЕГО ЕЩЁ СПИДРАН ВКЛЮЧЁН КИК ЕГО УЖЕ","аим+навотка",'"у меня не стреляет блять😭😭" - хосмане','"э кудаа леон на гуро аьа💹ьаьаь" - банан',"moto moto 1120",'"хасманя лысый гном" - никсус',"SORRY I HURT YOUR ROBLOX EGO BUT LOOK -> 🤏 I DONT CARE","донт сри май бебе герл","shootware'd",'ВАТАФАК АР Ю ДУИНГ😡',"KICK NEFOR",'"а сам та нахуй ебантяй😏" - банан',"лариска.hook","$$$ лариска.hook $$$","поколение пауков моя тима вся в ryodan'e🕷","🔥обожаю playboi carti😎😎✌ и все что с ним связано💓💓","бойцовский клуб редан, задыхаешься цепями⛓","Порву-За-Братву","🥦 Vegan living healthy","Горжусь Z 🥰🇷🇺","ты думаешь что ты шаришь?🤣🤣🤣🤣🤣🤣 ахаха.","Доброе времени суток ! Идёт набор в клан standoff 2 Anime Win Team ","комфортный чатик для тебя по роблоксу","Господи, как же хочется украиночку... ","💥💥💥Любители по фигачить клубами пара☁️","Мяу! Я милая кошкодевочка. У меня пушистое меховое пальто насыщенного цвета.","а здесь дают робуксы?","Стримснайпят ✅ Лагает ✅  Вебка пересвечивает ✅  Начали за T ✅  Не повезло ✅  0 помощи  -98хп ✅  Достал нож не в тайминг ✅  Неудобно сидеть ✅ ","п-папочка, я твой котёнок 🥺","Ддос - бан навсегда без разбора 💻🚫","прилоскал косматого ~(˘▾˘~)","senpai~~~, заовни меня ^^","You Has been RAC Banned","Weapon Stat Change.","chlenix_5hs_usp_start","Tapt by Anti-Hack","every1 is dead ☹️ nobody to kill ☹️","I'm going to hack your toaster, enjoy eating burnt bread kiddo.",'"Я хочу от тебя двоих котят на мою пусси" - никсус','"i--aaammm nefor" - стикс','"Чесоточный клещ" - никсус','"Нука диапазон сделпй мне в очко" - никсус','"АОАОАОАО КЛАВА СВЕТИЦА + 500 хуев мне в жопу" - никсус',"Im not cheating","Im everywhere you go","OPP S...","eks dee","А у меня девушки нет, максимум подруги, для меня отношения в до 18 - детское ребячество"}
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(tbl[math.random(1, #tbl)], false, "Innocent", false, true)
	end    
end)	
RayIgnore.ChildAdded:Connect(function(obj)
    if obj.Name == "Fires" then
        obj.ChildAdded:Connect(function(fire)
			if values.visuals.world["molly radius"].Toggle then
				fire.Transparency = values.visuals.world["molly radius"].Transparency
                fire.Color = values.visuals.world["molly radius"].Color
			end
        end)
    end
    if obj.Name == "Smokes" then
        obj.ChildAdded:Connect(function(smoke)
			RunService.RenderStepped:Wait()
			local OriginalRate = Instance.new("NumberValue")
			OriginalRate.Value = smoke.ParticleEmitter.Rate
			OriginalRate.Name = "OriginalRate"
			OriginalRate.Parent = smoke
			if table.find(values.visuals.effects.removals.Jumbobox, "smokes") then
				smoke.ParticleEmitter.Rate = 0
			end
            smoke.Material = Enum.Material.ForceField
			if values.visuals.world["smoke radius"].Toggle then
				smoke.Transparency = 0
                smoke.Color = values.visuals.world["smoke radius"].Color
			end
        end)
    end
end)
if RayIgnore:FindFirstChild("Fires") then
    RayIgnore:FindFirstChild("Fires").ChildAdded:Connect(function(fire)
		if values.visuals.world["molly radius"].Toggle then
			fire.Transparency = values.visuals.world["molly radius"].Transparency
			fire.Color = values.visuals.world["molly radius"].Color
		end
    end)
end
if RayIgnore:FindFirstChild("Smokes") then
	for _,smoke in pairs(RayIgnore:FindFirstChild("Smokes"):GetChildren()) do
		local OriginalRate = Instance.new("NumberValue")
		OriginalRate.Value = smoke.ParticleEmitter.Rate
		OriginalRate.Name = "OriginalRate"
		OriginalRate.Parent = smoke
		smoke.Material = Enum.Material.ForceField
	end
    RayIgnore:FindFirstChild("Smokes").ChildAdded:Connect(function(smoke)
		RunService.RenderStepped:Wait()
		local OriginalRate = Instance.new("NumberValue")
		OriginalRate.Value = smoke.ParticleEmitter.Rate
		OriginalRate.Name = "OriginalRate"
		OriginalRate.Parent = smoke
		if table.find(values.visuals.effects.removals.Jumbobox, "smokes") then
			smoke.ParticleEmitter.Rate = 0
		end
        smoke.Material = Enum.Material.ForceField
		if values.visuals.world["smoke radius"].Toggle then
			smoke.Transparency = 0
			smoke.Color = values.visuals.world["smoke radius"].Color
		end
    end)
end
Camera.ChildAdded:Connect(function(obj)
	while true do
		wait()
		if table.find(values.misc.client["gun modifiers"].Jumbobox, "ammo") then
			Client.ammocount = 30
			Client.ammocount2 = 30
		end
	end
end)
Camera.ChildAdded:Connect(function(obj)
	RunService.RenderStepped:Wait()
	if obj.Name ~= "Arms" then return end
	local Model
	for i,v in pairs(obj:GetChildren()) do
		if v:IsA("Model") and (v:FindFirstChild("Right Arm") or v:FindFirstChild("Left Arm")) then
			Model = v
		end
	end
	if Model == nil then return end
	for i,v in pairs(obj:GetChildren()) do
		if (v:IsA("BasePart") or v:IsA("Part")) and v.Transparency ~= 1 and v.Name ~= "Flash" then
			local valid = true
			if v:IsA("Part") and v:FindFirstChild("Mesh") and not v:IsA("BlockMesh") then
				valid = false
				local success, err = pcall(function()
					local OriginalTexture = Instance.new("StringValue")
					OriginalTexture.Value = v.Mesh.TextureId
					OriginalTexture.Name = "OriginalTexture"
					OriginalTexture.Parent = v.Mesh
				end)
				local success2, err2 = pcall(function()
					local OriginalTexture = Instance.new("StringValue")
					OriginalTexture.Value = v.Mesh.TextureID
					OriginalTexture.Name = "OriginalTexture"
					OriginalTexture.Parent = v.Mesh
				end)
				if success or success2 then valid = true end
			end

			for i2,v2 in pairs(v:GetChildren()) do
				if (v2:IsA("BasePart") or v2:IsA("Part")) then
					table.insert(WeaponObj, v2)
				end
			end

			if valid then
				table.insert(WeaponObj, v)
			end
		end
	end

	local gunname = Client.gun ~= "none" and values.skins.knife["knife changer"].Toggle and Client.gun:FindFirstChild("Melee") and values.skins.knife.model.Scroll or Client.gun ~= "none" and Client.gun.Name
	if values.skins.skins["skin changer"].Toggle and gunname ~= nil and Skins:FindFirstChild(gunname) then
		if values.skins.skins.skin.Scroll[gunname] ~= "Inventory" then
			MapSkin(gunname, values.skins.skins.skin.Scroll[gunname])
		end
	end
	for _,v in pairs(WeaponObj) do
		if v:IsA("MeshPart") then
			local OriginalTexture = Instance.new("StringValue")
			OriginalTexture.Value = v.TextureID
			OriginalTexture.Name = "OriginalTexture"
			OriginalTexture.Parent = v
		end

		local OriginalColor = Instance.new("Color3Value")
		OriginalColor.Value = v.Color
		OriginalColor.Name = "OriginalColor"
		OriginalColor.Parent = v

		local OriginalMaterial = Instance.new("StringValue")
		OriginalMaterial.Value = v.Material.Name
		OriginalMaterial.Name = "OriginalMaterial"
		OriginalMaterial.Parent = v

		if values.visuals.effects["weapon chams"].Toggle then
			UpdateWeapon(v)
		end
	end
	RArm = Model:FindFirstChild("Right Arm"); LArm = Model:FindFirstChild("Left Arm")
	if RArm then
		local OriginalColor = Instance.new("Color3Value")
		OriginalColor.Value = RArm.Color
		OriginalColor.Name = "Color3Value"
		OriginalColor.Parent = RArm
		if values.visuals.effects["arm chams"].Toggle then
			RArm.Color = values.visuals.effects["arm chams"].Color
			RArm.Transparency = values.visuals.effects["arm chams"].Transparency
		end
		RGlove = RArm:FindFirstChild("Glove") or RArm:FindFirstChild("RGlove")
		if values.skins.glove["glove changer"].Toggle and Client.gun ~= "none" then
			if RGlove then RGlove:Destroy() end
			RGlove = GloveModels[values.skins.glove.model.Dropdown].RGlove:Clone()
			RGlove.Mesh.TextureId = Gloves[values.skins.glove.model.Dropdown][values.skins.glove.model.Scroll[values.skins.glove.model.Dropdown]].Textures.TextureId
			RGlove.Parent = RArm
			RGlove.Transparency = 0
			RGlove.Welded.Part0 = RArm
		end
		if RGlove.Transparency == 1 then
			RGlove:Destroy()
			RGlove = nil
		else
			local GloveTexture = Instance.new("StringValue")
			GloveTexture.Value = RGlove.Mesh.TextureId
			GloveTexture.Name = "StringValue"
			GloveTexture.Parent = RGlove

			if values.visuals.effects["accessory chams"].Toggle then
				UpdateAccessory(RGlove)
			end
		end
		RSleeve = RArm:FindFirstChild("Sleeve")
		if RSleeve ~= nil then
			local SleeveTexture = Instance.new("StringValue")
			SleeveTexture.Value = RSleeve.Mesh.TextureId
			SleeveTexture.Name = "StringValue"
			SleeveTexture.Parent = RSleeve
			if values.visuals.effects["arm chams"].Toggle then
				LArm.Color = values.visuals.effects["arm chams"].Color
			end
			if values.visuals.effects["accessory chams"].Toggle then
				UpdateAccessory(RSleeve)
			end
		end
	end
	if LArm then
		local OriginalColor = Instance.new("Color3Value")
		OriginalColor.Value = LArm.Color
		OriginalColor.Name = "Color3Value"
		OriginalColor.Parent = LArm
		if values.visuals.effects["arm chams"].Toggle then
			LArm.Color = values.visuals.effects["arm chams"].Color
			LArm.Transparency = values.visuals.effects["arm chams"].Transparency
		end
		LGlove = LArm:FindFirstChild("Glove") or LArm:FindFirstChild("LGlove")
		if values.skins.glove["glove changer"].Toggle and Client.gun ~= "none" then
			if LGlove then LGlove:Destroy() end
			LGlove = GloveModels[values.skins.glove.model.Dropdown].LGlove:Clone()
			LGlove.Mesh.TextureId = Gloves[values.skins.glove.model.Dropdown][values.skins.glove.model.Scroll[values.skins.glove.model.Dropdown]].Textures.TextureId
			LGlove.Transparency = 0
			LGlove.Parent = LArm
			LGlove.Welded.Part0 = LArm
		end
		if LGlove.Transparency == 1 then
			LGlove:Destroy()
			LGlove =  nil
		else
			local GloveTexture = Instance.new("StringValue")
			GloveTexture.Value = LGlove.Mesh.TextureId
			GloveTexture.Name = "StringValue"
			GloveTexture.Parent = LGlove

			if values.visuals.effects["accessory chams"].Toggle then
				UpdateAccessory(LGlove)
			end
		end
		LSleeve = LArm:FindFirstChild("Sleeve")
		if LSleeve ~= nil then
			local SleeveTexture = Instance.new("StringValue")
			SleeveTexture.Value = LSleeve.Mesh.TextureId
			SleeveTexture.Name = "StringValue"
			SleeveTexture.Parent = LSleeve

			if values.visuals.effects["accessory chams"].Toggle then
				UpdateAccessory(LSleeve)
			end
		end
	end
end)
Camera.ChildAdded:Connect(function(obj)
	if obj.Name == "Arms" then
		RArm, LArm, RGlove, RSleeve, LGlove, LSleeve = nil, nil, nil, nil, nil, nil
		WeaponObj = {}
	end
end)
Camera:GetPropertyChangedSignal("FieldOfView"):Connect(function(fov)
	if LocalPlayer.Character == nil then return end
	if fov == values.visuals.self["fov changer"].Slider then return end
	if values.visuals.self["on scope"].Toggle or not LocalPlayer.Character:FindFirstChild("AIMING") then
		Camera.FieldOfView = values.visuals.self["fov changer"].Slider
	end
end)
LocalPlayer.Cash:GetPropertyChangedSignal("Value"):Connect(function(cash)
	if values.misc.client["infinite cash"].Toggle and cash ~= 2^33 then
		LocalPlayer.Cash.Value = 2^33
	end
end)
if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Origin") then
	if workspace.Map.Origin.Value == "de_cache" or workspace.Map.Origin.Value == "de_vertigo" or workspace.Map.Origin.Value == "de_nuke" or workspace.Map.Origin.Value == "de_aztec" then
		oldSkybox = Lighting:FindFirstChildOfClass("Sky"):Clone()
	end
end
workspace.ChildAdded:Connect(function(obj)
	if obj.Name == "Map" then
		wait(5)
		if values.misc.client["remove killers"].Toggle then
			if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Killers") then
				local clone = workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Clone()
				clone.Name = "KillersClone"
				clone.Parent = workspace:FindFirstChild("Map")
	
				workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Destroy()
			end
		end
		if oldSkybox ~= nil then
			oldSkybox:Destroy()
			oldSkybox = nil
		end
		local Origin = workspace.Map:WaitForChild("Origin")
		if workspace.Map.Origin.Value == "de_cache" or workspace.Map.Origin.Value == "de_vertigo" or workspace.Map.Origin.Value == "de_nuke" or workspace.Map.Origin.Value == "de_aztec" then
			oldSkybox = Lighting:FindFirstChildOfClass("Sky"):Clone()

			local sky = values.visuals.world.skybox.Dropdown
			if sky ~= "none" then
				Lighting:FindFirstChildOfClass("Sky"):Destroy()
				local skybox = Instance.new("Sky")
				skybox.SkyboxLf = Skyboxes[sky].SkyboxLf
				skybox.SkyboxBk = Skyboxes[sky].SkyboxBk
				skybox.SkyboxDn = Skyboxes[sky].SkyboxDn
				skybox.SkyboxFt = Skyboxes[sky].SkyboxFt
				skybox.SkyboxRt = Skyboxes[sky].SkyboxRt
				skybox.SkyboxUp = Skyboxes[sky].SkyboxUp
				skybox.Name = "override"
				skybox.Parent = Lighting
			end
		else
			local sky = values.visuals.world.skybox.Dropdown
			if sky ~= "none" then
				local skybox = Instance.new("Sky")
				skybox.SkyboxLf = Skyboxes[sky].SkyboxLf
				skybox.SkyboxBk = Skyboxes[sky].SkyboxBk
				skybox.SkyboxDn = Skyboxes[sky].SkyboxDn
				skybox.SkyboxFt = Skyboxes[sky].SkyboxFt
				skybox.SkyboxRt = Skyboxes[sky].SkyboxRt
				skybox.SkyboxUp = Skyboxes[sky].SkyboxUp
				skybox.Name = "override"
				skybox.Parent = Lighting
			end
		end
	end
end)
Lighting.ChildAdded:Connect(function(obj)
    if obj:IsA("Sky") and obj.Name ~= "override" then
		oldSkybox = obj:Clone()
    end
end)

local function CollisionTBL(obj)
	if obj:IsA("Accessory") then
		table.insert(Collision, obj)
	end
	if obj:IsA("Part") then
		if obj.Name == "HeadHB" or obj.Name == "FakeHead" then
			table.insert(Collision, obj)
		end
	end
end
LocalPlayer.CharacterAdded:Connect(function(char) 
	repeat RunService.RenderStepped:Wait() 
	until char:FindFirstChild("Gun") 
	SelfObj = {} 
	if values.skins.characters["character changer"].Toggle then 
		ChangeCharacter(ChrModels:FindFirstChild(values.skins.characters.skin.Scroll)) 
	end 
	if char:FindFirstChildOfClass("Shirt") then 
		local String = INST("StringValue") 
		String.Name = "OriginalTexture" 
		String.Value = char:FindFirstChildOfClass("Shirt").ShirtTemplate 
		String.Parent = char:FindFirstChildOfClass("Shirt") 

		if table.find(values.visuals.effects.removals.Jumbobox, "clothes") then 
			char:FindFirstChildOfClass("Shirt").ShirtTemplate = "" 
		end 
	end 
	if char:FindFirstChildOfClass("Pants") then 
		local String = INST("StringValue") 
		String.Name = "OriginalTexture" 
		String.Value = char:FindFirstChildOfClass("Pants").PantsTemplate 
		String.Parent = char:FindFirstChildOfClass("Pants") 

		if table.find(values.visuals.effects.removals.Jumbobox, "clothes") then 
			char:FindFirstChildOfClass("Pants").PantsTemplate = "" 
		end 
	end 
	for i,v in pairs(char:GetChildren()) do 
		if v:IsA("BasePart") and v.Transparency ~= 1 then 
			table.insert(SelfObj, v) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Color 
			Color.Parent = v 

			local String = INST("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Material.Name 
			String.Parent = v 
		elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then 
			table.insert(SelfObj, v.Handle) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Handle.Color 
			Color.Parent = v.Handle 

			local String = INST("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Handle.Material.Name 
			String.Parent = v.Handle 
		end 
	end 
	LocalPlayer.Character.ChildAdded:Connect(function(Child) 
		if Child:IsA("Accessory") and Child.Handle.Transparency ~= 1 then 
			table.insert(SelfObj, Child.Handle) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = Child.Handle.Color 
			Color.Parent = Child.Handle 

			local String = INST("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = Child.Handle.Material.Name 
			String.Parent = Child.Handle 
		end 
	end) 
end) 
if LocalPlayer.Character ~= nil then 
	for i,v in pairs(LocalPlayer.Character:GetChildren()) do 
		if v:IsA("BasePart") and v.Transparency ~= 1 then 
			table.insert(SelfObj, v) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Color 
			Color.Parent = v 

			local String = INST("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Material.Name 
			String.Parent = v 
		elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then 
			table.insert(SelfObj, v.Handle) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Handle.Color 
			Color.Parent = v.Handle 

			local String = INST("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Handle.Material.Name 
			String.Parent = v.Handle 
		end 
	end 
	if values.visuals.self["self chams"].Toggle then 
		for _,obj in pairs(SelfObj) do 
			if obj.Parent ~= nil then 
				obj.Material = values.visuals.self["self material"].Dropdown == "Smooth" and "SmoothPlastic" or "ForceField" and "ForceField" or "Neon" and "Neon" or "Glass" and "Glass"
				obj.Reflectance = values.visuals.self["self reflectance"]
				obj.Color = values.visuals.self["self chams"].Color 
			end 
		end 
	end 
	LocalPlayer.Character.ChildAdded:Connect(function(Child) 
		if Child:IsA("Accessory") and Child.Handle.Transparency ~= 1 then 
			table.insert(SelfObj, Child.Handle) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = Child.Handle.Color 
			Color.Parent = Child.Handle 

			local String = INST("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = Child.Handle.Material.Name 
			String.Parent = Child.Handle 

			if values.visuals.self["self chams"].Toggle then 
				for _,obj in pairs(SelfObj) do 
					if obj.Parent ~= nil then 
						obj.Material = values.visuals.self["self material"].Dropdown == "Smooth" and "SmoothPlastic" or "ForceField" and "ForceField" or "Neon" and "Neon" or "Glass" and "Glass"
						obj.Reflectance = values.visuals.self["self reflectance"]
						obj.Color = values.visuals.self["self chams"].Color 
					end 
				end 
			end 
		end 
	end) 
end 

while true do 
	task.wait(10)
	if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Radar") then
		workspace:FindFirstChild("Map"):FindFirstChild("Radar"):Destroy()
	end
end
