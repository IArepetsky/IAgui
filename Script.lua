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
