local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("IAgui", "BloodTheme")

local Tab = Window:NewTab("Top Scripts")
local Section = Tab:NewSection("Scripts")


Section:NewSlider("Walkspeed", "Walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue) -- walkspeed
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewButton("Chattroll", "Troll in chat", function() -- Chattroll
    local Action = game.Players:GetPlayers()
    for i = 1,#Action do
        Action[i].Chatted:connect(function(Message)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("".."["..Action[i].Name.."]".." "..Message, "All")
        end)
    end
end)

Section:NewButton("TPTool", "Teleport tool", function() -- TPTool
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
end)

Section:NewButton("Btools", "Building Tools", function() -- Btools
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)

Section:NewButton("Night", "Night is client script", function() -- Night
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Night%20Time%20Toggle.txt"))()
end)

Section:NewButton("Fly", "This is fly ._.", function() -- Fly On PC
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)

Section:NewButton("Chat spam", "Chat spam (not my)", function() -- Spam
    local METATABLE = {['Delay'] = 1; ['Spam'] = false; ['Mouse'] = game:GetService('Players').LocalPlayer:GetMouse(); ['LocalPlayer'] = game:GetService('Players').LocalPlayer};

getgenv().CHATVIEW = function()
    local CHATVISIBLE = METATABLE['LocalPlayer'].PlayerGui.Chat.Frame 
    CHATVISIBLE.ChatChannelParentFrame.Visible = true 
    CHATVISIBLE.ChatBarParentFrame.Position = CHATVISIBLE.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), CHATVISIBLE.ChatChannelParentFrame.Size.Y)
end
CHATVIEW()

local coryuscripts = Instance.new("ScreenGui")
local bigframe = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ecxoirtybuuttonCORYU = Instance.new("TextButton")
local bottomIGNORETHISFRAME = Instance.new("Frame")
local topIGNORETHISFRAME = Instance.new("Frame")
local spamtitle = Instance.new("TextLabel")
local SPAMTEXTBOX = Instance.new("TextBox")
local onbuttontext = Instance.new("TextLabel")
local onbutton = Instance.new("TextButton")
local offbutton = Instance.new("TextLabel")
local offbutton_2 = Instance.new("TextButton")

coryuscripts.Name = "coryuscripts"
coryuscripts.Parent = METATABLE['LocalPlayer']:WaitForChild("PlayerGui")
coryuscripts.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
coryuscripts.ResetOnSpawn = false

bigframe.Name = "bigframe"
bigframe.Parent = coryuscripts
bigframe.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
bigframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
bigframe.BorderSizePixel = 0
bigframe.Position = UDim2.new(0.173443452, 0, 0.673819721, 0)
bigframe.Size = UDim2.new(0, 243, 0, 152)

Title.Name = "Title"
Title.Parent = bigframe
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.085195154, 0, 0, 0)
Title.Size = UDim2.new(0, 200, 0, 21)
Title.Font = Enum.Font.Code
Title.Text = "Coryu Spam"
Title.TextColor3 = Color3.fromRGB(255, 185, 0)
Title.TextSize = 16.000

ecxoirtybuuttonCORYU.Name = "ecxoirtybuuttonCORYU"
ecxoirtybuuttonCORYU.Parent = bigframe
ecxoirtybuuttonCORYU.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ecxoirtybuuttonCORYU.BackgroundTransparency = 1.000
ecxoirtybuuttonCORYU.BorderColor3 = Color3.fromRGB(0, 0, 0)
ecxoirtybuuttonCORYU.BorderSizePixel = 0
ecxoirtybuuttonCORYU.Position = UDim2.new(0.905561149, 0, 0, 0)
ecxoirtybuuttonCORYU.Size = UDim2.new(0, 19, 0, 21)
ecxoirtybuuttonCORYU.Font = Enum.Font.Code
ecxoirtybuuttonCORYU.Text = "X"
ecxoirtybuuttonCORYU.TextColor3 = Color3.fromRGB(255, 185, 0)
ecxoirtybuuttonCORYU.TextSize = 14.000

bottomIGNORETHISFRAME.Name = "bottomIGNORETHISFRAME"
bottomIGNORETHISFRAME.Parent = bigframe
bottomIGNORETHISFRAME.BackgroundColor3 = Color3.fromRGB(255, 185, 0)
bottomIGNORETHISFRAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
bottomIGNORETHISFRAME.BorderSizePixel = 0
bottomIGNORETHISFRAME.Size = UDim2.new(0, 243, 0, 2)

topIGNORETHISFRAME.Name = "topIGNORETHISFRAME"
topIGNORETHISFRAME.Parent = bigframe
topIGNORETHISFRAME.BackgroundColor3 = Color3.fromRGB(198, 142, 0)
topIGNORETHISFRAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
topIGNORETHISFRAME.BorderSizePixel = 0
topIGNORETHISFRAME.Position = UDim2.new(0, 0, -0.0131578948, 0)
topIGNORETHISFRAME.Size = UDim2.new(0, 243, 0, 2)

spamtitle.Name = "spamtitle"
spamtitle.Parent = bigframe
spamtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
spamtitle.BackgroundTransparency = 1.000
spamtitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
spamtitle.BorderSizePixel = 0
spamtitle.Position = UDim2.new(0.0852634758, 0, 0.611842096, 0)
spamtitle.Size = UDim2.new(0, 200, 0, 16)
spamtitle.Font = Enum.Font.Code
spamtitle.Text = "Spam"
spamtitle.TextColor3 = Color3.fromRGB(255, 185, 0)
spamtitle.TextSize = 16.000

SPAMTEXTBOX.Name = "SPAMTEXTBOX"
SPAMTEXTBOX.Parent = spamtitle
SPAMTEXTBOX.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
SPAMTEXTBOX.BorderColor3 = Color3.fromRGB(255, 185, 0)
SPAMTEXTBOX.BorderSizePixel = 2
SPAMTEXTBOX.Position = UDim2.new(-0.0728095993, 0, 1.61513138, 0)
SPAMTEXTBOX.Size = UDim2.new(0, 232, 0, 22)
SPAMTEXTBOX.Font = Enum.Font.Code
SPAMTEXTBOX.PlaceholderColor3 = Color3.fromRGB(255, 185, 0)
SPAMTEXTBOX.PlaceholderText = "Enter Chat Here!"
SPAMTEXTBOX.Text = ""
SPAMTEXTBOX.TextColor3 = Color3.fromRGB(255, 185, 0)
SPAMTEXTBOX.TextSize = 14.000

onbuttontext.Name = "onbuttontext"
onbuttontext.Parent = bigframe
onbuttontext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
onbuttontext.BackgroundTransparency = 1.000
onbuttontext.BorderColor3 = Color3.fromRGB(0, 0, 0)
onbuttontext.BorderSizePixel = 0
onbuttontext.Position = UDim2.new(0.152387708, 0, 0.256578952, 0)
onbuttontext.Size = UDim2.new(0, 26, 0, 16)
onbuttontext.Font = Enum.Font.Code
onbuttontext.Text = "On"
onbuttontext.TextColor3 = Color3.fromRGB(255, 185, 0)
onbuttontext.TextSize = 16.000

onbutton.Name = "onbutton"
onbutton.Parent = onbuttontext
onbutton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
onbutton.BorderColor3 = Color3.fromRGB(255, 185, 0)
onbutton.BorderSizePixel = 2
onbutton.Position = UDim2.new(0, 0, 1.4375, 0)
onbutton.Size = UDim2.new(0, 26, 0, 22)
onbutton.Font = Enum.Font.SourceSans
onbutton.Text = ""
onbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
onbutton.TextSize = 14.000

offbutton.Name = "offbutton"
offbutton.Parent = bigframe
offbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
offbutton.BackgroundTransparency = 1.000
offbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
offbutton.BorderSizePixel = 0
offbutton.Position = UDim2.new(0.728245854, 0, 0.256578952, 0)
offbutton.Size = UDim2.new(0, 26, 0, 16)
offbutton.Font = Enum.Font.Code
offbutton.Text = "Off"
offbutton.TextColor3 = Color3.fromRGB(255, 185, 0)
offbutton.TextSize = 16.000

offbutton_2.Name = "offbutton"
offbutton_2.Parent = offbutton
offbutton_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
offbutton_2.BorderColor3 = Color3.fromRGB(255, 185, 0)
offbutton_2.BorderSizePixel = 2
offbutton_2.Position = UDim2.new(0, 0, 1.4375, 0)
offbutton_2.Size = UDim2.new(0, 26, 0, 22)
offbutton_2.Font = Enum.Font.SourceSans
offbutton_2.Text = ""
offbutton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
offbutton_2.TextSize = 14.000

ecxoirtybuuttonCORYU.MouseButton1Down:connect(function()
    bigframe:Destroy()
end)

onbutton.MouseButton1Down:connect(function()
METATABLE['Spam'] = true
    SPAMTEXTBOX:CaptureFocus()
        if SPAMTEXTBOX.Text:sub(0,0) == "" then
            repeat wait(METATABLE['Delay'])
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(""..SPAMTEXTBOX.Text.."", "All")
        until METATABLE['Spam'] == false
    end
end)
    
offbutton_2.MouseButton1Down:connect(function()
    METATABLE['Spam'] = false
end)

METATABLE['Mouse'].KeyDown:connect(function(framekey)
    if framekey:lower() == 'z' then
    bigframe.Visible = not bigframe.Visible
    end
end)
end)

local Mobile Window: NewTab ("Mobile")
local Mobile = Tab:NewSection("Mobile Scripts")

Mobile:NewButton("DisableGravity", "???", function() -- DisableGravity
    workspace.Gravity = 0
    game.StarterGui:SetCore("SendNotification", {Title="Zero Gravity"; Text="Gravity Disabled"; Duration=1;})
end)

Mobile:NewButton("EnableGravity", "???", function() -- EnableGravity
    workspace.Gravity = 196.2
	game.StarterGui:SetCore("SendNotification", {Title="Normal Gravity"; Text="Gravity Enabled"; Duration=1;})
end)

Mobile:NewButton("Fly (Mobile)", "Fly", function() --Fly on Mobile
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)

local Gui Window: NewTab ("Gui")
local Gui = Tab:NewSection("Gui")

Gui:NewButton("Dex Explorer", "Explorer", function() -- Dex Explorer
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end)

Gui:NewButton("Infinite Yield", "Best gui", function() -- Dex Explorer
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Yield.txt"))()
end)

Gui:NewButton("c00llgui", "Hacker gui", function() -- c00llgui
    loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)



