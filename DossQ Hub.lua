local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DossQ HUB", "DarkTheme")

local Tab = Window:NewTab("Menu function")

local Section = Tab:NewSection("Hack speed(ห้ามกดปุ่มวิ่ง)")
Section:NewToggle("เปิดปิด แฮคสปีด", "ควย", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 45
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)
local Section = Tab:NewSection("Noclip(เดินทะลุ)")
Section:NewButton("กดเปิด", "ควยไร", function()
    local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
end)



local Section = Tab:NewSection("teleport")
Section:NewButton("จุดเกิด", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-42.4474602, 4.25244856, 0.341605216, -0.989274561, -1.55219404e-09, -0.146068051, -8.79526785e-10, 1, -4.66974459e-09, 0.146068051, -4.49118875e-09, -0.989274561)
end)
Section:NewButton("กล่องเพลง", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-144.941269, 4.25244904, 123.848839, -0.984624803, -2.31372219e-08, 0.174682528, -9.42275946e-09, 1, 7.93401611e-08, -0.174682528, 7.64743007e-08, -0.984624803)
end)
    Section:NewButton("ห้องหุ่นเก่า", "ButtonInfo", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8.22814941, 4.25244904, 181.417908, 0.24059692, 9.14135878e-09, 0.970625103, 4.33540592e-10, 1, -9.5254773e-09, -0.970625103, 2.71260592e-09, 0.24059692)
end)    
   
