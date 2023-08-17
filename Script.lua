local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "IAgui",
    LoadingTitle = "IAgui",
    LoadingSubtitle = "by IArepetsky_YT",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = true,
       Invite = "discord.gg/2WvBm7Br65", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local PlayerTab = Window:CreateTab("Player", 4483362458) -- Title, Image

 local Slider = PlayerTab:CreateSlider({
    Name = "Walkspeed",
    Range = {16, 500},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 10,
    Flag = "Slider1",
    Callback = function(Value)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
 })

 local Slider = PlayerTab:CreateSlider({
    Name = "JumpHeight",
    Range = {10, 500},
    Increment = 1,
    Suffix = "Jump",
    CurrentValue = 10,
    Flag = "Slider1",
    Callback = function(Value)
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
 })

 local Button = PlayerTab:CreateButton({
    Name = "Fly",
    Callback = function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
    end,
 })

local FunTab = Window:CreateTab("Fun", 4483362458)


local Button = FunTab:CreateButton({
    Name = "Chattroll",
    Callback = function()
        local Action = game.Players:GetPlayers()
        for i = 1,#Action do
            Action[i].Chatted:connect(function(Message)
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("".."["..Action[i].Name.."]".." "..Message, "All")
            end)
        end
    end,
 })

local Button = FunTab:CreateButton({
    Name = "Night",
    Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Night%20Time%20Toggle.txt"))()
    end,
 })

 local Button = FunTab:CreateButton({
    Name = "Walk on Walls",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end,
 })

local Button = FunTab:CreateButton({
    Name = "EnableGravity",
    Callback = function()
        workspace.Gravity = 196.2
	    game.StarterGui:SetCore("SendNotification", {Title="Normal Gravity"; Text="Gravity Enabled"; Duration=1;})
    end,
 })

local Button = FunTab:CreateButton({
    Name = "DisableGravity",
    Callback = function()
        workspace.Gravity = 0
        game.StarterGui:SetCore("SendNotification", {Title="Zero Gravity"; Text="Gravity Disabled"; Duration=1;})
    end,
 })

local Button = FunTab:CreateButton({
    Name = "Invisible",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Invisible%20Gui'))()
    end,
 })

local Button = FunTab:CreateButton({
    Name = "Click Fling",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt'),true))()
    end,
 })

local ToolsTab = Window:CreateTab("Tools", 4483362458)

local Button = ToolsTab:CreateButton({
    Name = "TPtool",
    Callback = function()
        local Tele = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
Tele.RequiresHandle = false
Tele.RobloxLocked = true
Tele.Name = "TPTool"
Tele.ToolTip = "Teleport Tool"
Tele.Equipped:connect(function(Mouse)
	Mouse.Button1Down:connect(function()
		if Mouse.Target then
			game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart.CFrame = (CFrame.new(Mouse.Hit.x, Mouse.Hit.y + 5, Mouse.Hit.z))
		end
	end)
end)
    end,
 })

local Button = ToolsTab:CreateButton({
    Name = "Btools",
    Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
    end,
 })

local GuiTab = Window:CreateTab("Gui", 4483362458)

local Button = GuiTab:CreateButton({
    Name = "Dex Explorer",
    Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
    end,
 })

local Button = GuiTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Yield.txt"))()
    end,
 })

local Button = GuiTab:CreateButton({
    Name = "c00llgui",
    Callback = function()
        loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
    end,
 })

 local Button = GuiTab:CreateButton({
    Name = "Ice Hub (Brookhaven)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
    end,
 })

local Button = GuiTab:CreateButton({
    Name = "Vynixu's MM2",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/pHZVpMnF'))()
    end,
 })

local Button = GuiTab:CreateButton({
    Name = "Go to old gui",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/AYAvTMLp"))()
        Rayfield:Destroy()
    end,
 })
