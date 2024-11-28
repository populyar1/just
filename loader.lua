local ids = {"10427371065", "8726082314", "10569857544", "1377928804", "124342709513109", "11818627057", "3232865325", "14424817453"}
local sound_ids = {"8212205984", "7772283448", "6832470734", "9068077052", "9068077052", "5785516639", "6349641063", "784747919"}
local random_ids = math.random(0, #ids)
local random_soundids = math.random(0, #sound_ids)

local loadscript = true

local sound = Instance.new("Sound")
sound.Parent = game:GetService("SoundService")
sound.SoundId = "rbxassetid://"..sound_ids[random_soundids]
sound.Volume = 3


game:GetService("StarterGui"):SetCore("SendNotification", {
      Title = "Gui v2 is loading...",
      Text = "Please wait!",
      Duration = 15
})

repeat wait() until game:IsLoaded()
game:GetService("StarterGui"):SetCore("SendNotification", {
      Title = "Gui v2 is ready!",
      Icon = "rbxassetid://"..ids[random_ids],
      Text = "Join to the server",
      Duration = math.huge
})
sound:Play()

game.Players.LocalPlayer.OnTeleport:Connect(function()
      if loadscript == true then
            loadscript = false
          queue_on_teleport([[
            repeat wait() until game:IsLoaded()
            local load = true
            if load == true then
                load = false
                loadstring(game:HttpGet('https://raw.githubusercontent.com/populyar1/just/refs/heads/main/Gui_v2.lua'))()
            else
                print("Please reload Gui!")
            end
        ]])
      end
end)
