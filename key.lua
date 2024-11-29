local copy = game.Players.LocalPlayer.PlayerGui:WaitForChild("verify").Verify.VerefyButton.Code.CopyCode
local verifybutton = game.Players.LocalPlayer.PlayerGui:WaitForChild("verify").Verify.VerefyButton
local event = game.Players.LocalPlayer.PlayerGui:WaitForChild("verify").Verify.Event
local code = game.Players.LocalPlayer.PlayerGui:WaitForChild("verify").Verify.code
local me = game:GetService("Players").LocalPlayer

local reallink = false
local Verified = false
local format = nil

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
local buttonGuiv2 = menu.Menu.ScrollingFrame.CriminalityGuiV2.GuiV2
local buttonGuiv2M = menu.Menu.ScrollingFrame.CriminalityGuiV2M.GuiV2M

buttonGuiv2.MouseButton1Click:Connect(function()
      Verified = true
      format = "PC"
end)

buttonGuiv2M.MouseButton1Click:Connect(function()
      Verified = true
      format = "Mobile"
end)

me.OnTeleport:Connect(function()
      if Verified == true then
            if loadscript == true then
                  loadscript = false
                  if format == "PC" then
                        queue_on_teleport([[
                            repeat wait() until game:IsLoaded()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/populyar1/just/refs/heads/main/loader.lua"))()
                        ]])
                  elseif format == "Mobile" then
                        queue_on_teleport([[
                            repeat wait() until game:IsLoaded()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/populyar1/just/refs/heads/main/loader2.lua"))()
                        ]])
                  else
                        return nil
                  end
            end
      end
end)
