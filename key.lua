local copy = game.Players.LocalPlayer.PlayerGui:WaitForChild("Verification").Verefy.VerefyButton.Code.CopyCode
local verifybutton = game.Players.LocalPlayer.PlayerGui:WaitForChild("Verification").Verefy.VerefyButton
local event = game.Players.LocalPlayer.PlayerGui:WaitForChild("Verification").Verefy.Event
local code = game.Players.LocalPlayer.PlayerGui:WaitForChild("Verification").Verefy.code
local me = game:GetService("Players").LocalPlayer

local reallink = false
local Verified = false

local loadscript = true

local link1 = "youtube.com/watch?v=dQw4w9WgXcQ"
local link2 = "discord.gg/Xt2V7rVG4w"

copy.MouseButton1Click:Connect(function()
      setclipboard(code.Value)
end)

verifybutton.MouseButton1Click:Connect(function()
      if reallink == false then
            setclipboard(link1)
            reallink = true
      else
            setclipboard(link2)
      end
end)

event:FireServer(true)

local menu = me.PlayerGui:WaitForChild("Scripts")
local button = menu.Menu.ScrollingFrame.Script2

button.MouseButton1Click:Connect(function()
      Verified = true
end)

me.OnTeleport:Connect(function()
      if Verified == true then
            if loadscript == true then
                  loadscript = false
                  queue_on_teleport([[
                      repeat wait() until game:IsLoaded()
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/populyar1/just/refs/heads/main/loader.lua"))()
                  ]])
            end
      end
end)
