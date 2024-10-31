local ids = {"10427371065", "8726082314", "10569857544", "1377928804", "124342709513109", "11818627057", "3232865325", "14424817453"}
local sound_id = "8212205984"
local random_ids = math.random(1, #ids)

local loadscript = true

local sound = Instance.new("Sound")
sound.Parent = game:GetService("SoundService")
sound.SoundId = "rbxassetid://"..sound_id
sound.Volume = 3

repeat wait() until game:IsLoaded()
game:GetService("StarterGui"):SetCore("SendNotification", {
      Title = "Gui v2 is ready!",
      Icon = "rbxassetid://"..ids[random_ids],
      Text = "Join to the server",
      Duration = 5
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
