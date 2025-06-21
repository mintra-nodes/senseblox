local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "senseblox - prison break",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "SenseBlox Scripts",
   LoadingSubtitle = "by StingingNettles",
   Theme = "Ocean", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "SenseBlox-PB"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "SenseBlox Login",
      Subtitle = "Authentication",
      Note = "Login to senseblox by entering your special authentication code, if your a guest just use the key `user`, although with an authentication key you get more features.", -- Use this to tell the user how to get a key
      FileName = "SenseBlox-Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"admin", "user"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main Stuff", "rewind")
local Tab2 = Window:CreateTab("Locations", "rewind")
local Tab3 = Window:CreateTab("Credits", "rewind")

local Section1 = Tab:CreateSection("These are scripts you can inject, they give you advantages.")

local Section21 = Tab2:CreateSection("Teleport to any place. (NOT READY YET)")

local Section31 = Tab3:CreateSection("Made and Released by surron.official on discord.")

local Button = Tab:CreateButton({
   Name = "Execute Fly Script",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-fly-Script-41453"))()
   end,
})

local Button2 = Tab:CreateButton({
   Name = "Execute Fling Script",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Touch-fling-open-source-30994"))()
   end,
})

local Button3 = Tab:CreateButton({
   Name = "Execute ESP Script",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Esp-Universal-open-source-10455"))()
   end,
})

local Button4 = Tab:CreateButton({
   Name = "Execute Invisible Script",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invisible-FE-19153"))()
   end,
})

-- WalkSpeed Slider
local WalkSpeedSlider = Tab:CreateSlider({
   Name = "WalkSpeed",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "WalkSpeedSlider",
   Callback = function(Value)
       if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
           local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
           if humanoid then
               humanoid.WalkSpeed = Value
           end
       end
   end,
})

-- JumpPower Slider
local JumpPowerSlider = Tab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 200},
   Increment = 5,
   Suffix = "Power",
   CurrentValue = 50,
   Flag = "JumpPowerSlider",
   Callback = function(Value)
       if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
           local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
           if humanoid then
               humanoid.JumpPower = Value
           end
       end
   end,
})

-- Gravity Slider
local GravitySlider = Tab:CreateSlider({
   Name = "Gravity",
   Range = {0, 196.2},
   Increment = 1,
   Suffix = "Gravity",
   CurrentValue = 196.2,
   Flag = "GravitySlider",
   Callback = function(Value)
       workspace.Gravity = Value
   end,
})

Rayfield:LoadConfiguration() 