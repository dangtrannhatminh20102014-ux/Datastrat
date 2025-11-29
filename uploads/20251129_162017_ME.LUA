-- ts file was generated at discord.gg/25ms

loadstring(game:HttpGet("https://raw.githubusercontent.com/sudaisontopxd/FeedBack/refs/heads/main/PF"))()
local vu1 = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local v2 = vu1
end, 990)
end, 989)
end, 988)
local v4 = {
}
local vu5 = game:GetService("CoreGui")
local v6 = game:GetService("UserInputService")
local function vu12()
	-- upvalues: (ref) vu5
    local v7 = vu5
    local v8, v9, v10 = ipairs(v7:GetDescendants())
    while true do
        local v11
        v10, v11 = v8(v9, v10)
        if v10 == nil then
            break
        end
        if v11:IsA("ScreenGui") and v11:FindFirstChild("WindUI") then
            return v11.WindUI
        end
    end
end
local vu13 = vu12()
local v14 = Instance.new("ScreenGui")
v14.Name = "WindUIToggleButton"
v14.ResetOnSpawn = false
v14.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
v14.Parent = vu5
local vu15 = Instance.new("ImageButton")
vu15.Name = "LogoButton"
vu15.Size = UDim2.new(0, 60, 0, 60)
vu15.Position = UDim2.new(0, 672, 0, 383.5)
vu15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
vu15.BackgroundTransparency = 0.05
vu15.Image = "rbxassetid://79794145409508"
vu15.ScaleType = Enum.ScaleType.Fit
vu15.Parent = v14
local v16 = Instance.new("UICorner")
v16.CornerRadius = UDim.new(1, 0)
v16.Parent = vu15
vu15.MouseEnter:Connect(function()
	-- upvalues: (ref) vu15
    vu15.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
end)
vu15.MouseLeave:Connect(function()
	-- upvalues: (ref) vu15
    vu15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
end)
vu15.MouseButton1Click:Connect(function()
	-- upvalues: (ref) vu13, (ref) vu12
    vu13 = vu13 or vu12()
    if vu13 then
        vu13.Enabled = not vu13.Enabled
    else
        warn("[WindUI] Could not find WindUI to toggle.")
    end
end)
local vu17 = false
local vu18 = nil
local vu19 = nil
local vu20 = nil
vu15.InputBegan:Connect(function(pu21)
	-- upvalues: (ref) vu17, (ref) vu19, (ref) vu20, (ref) vu15
    if pu21.UserInputType == Enum.UserInputType.MouseButton1 or pu21.UserInputType == Enum.UserInputType.Touch then
        vu17 = true
        vu19 = pu21.Position
        vu20 = vu15.Position
        pu21.Changed:Connect(function()
			-- upvalues: (ref) pu21, (ref) vu17
            if pu21.UserInputState == Enum.UserInputState.End then
                vu17 = false
            end
        end)
    end
end)
vu15.InputChanged:Connect(function(p22)
	-- upvalues: (ref) vu18
    if p22.UserInputType == Enum.UserInputType.MouseMovement or p22.UserInputType == Enum.UserInputType.Touch then
        vu18 = p22
    end
end)
v6.InputChanged:Connect(function(p23)
	-- upvalues: (ref) vu18, (ref) vu17, (ref) vu19, (ref) vu15, (ref) vu20
    if p23 == vu18 and vu17 then
        local v24 = p23.Position - vu19
        vu15.Position = UDim2.new(vu20.X.Scale, vu20.X.Offset + v24.X, vu20.Y.Scale, vu20.Y.Offset + v24.Y)
    end
end)
function GetCountMaterials(p25)
    local v26 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
    local v27, v28, v29 = pairs(v26)
    while true do
        local v30
        v29, v30 = v27(v28, v29)
        if v29 == nil then
            break
        end
        if v30.Name == p25 then
            return v30.Count
        end
    end
end
game:GetService("RunService")
local vu31 = game:GetService("Workspace")
_G.WalkWater = true
spawn(function()
	-- upvalues: (ref) vu31
    while task.wait(0.2) do
        pcall(function()
			-- upvalues: (ref) vu31
            if _G.WalkWater then
                vu31.Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
            else
                vu31.Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)
if game.PlaceId ~= 2753915549 then
    if game.PlaceId ~= 4442272183 then
        if game.PlaceId ~= 7449423635 then
            if game.PlaceId == 122478697296975 then
                Event = true
            end
        else
            World3 = true
        end
    else
        World2 = true
    end
else
    World1 = true
end
function topos(pu32)
    task.spawn(function()
		-- upvalues: (ref) pu32
        pcall(function()
			-- upvalues: (ref) pu32
            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                game.Players.LocalPlayer.Character.Humanoid.Sit = true
            end
            local v33 = game:GetService("Players").LocalPlayer
            local vu34 = v33.Character
            local vu35 = vu34.HumanoidRootPart
            if v33:DistanceFromCharacter(pu32.Position) > 50 then
                if not vu34:FindFirstChild("Root") then
                    local v36 = Instance.new("Part", vu34)
                    v36.Size = Vector3.new(1, 0.5, 1)
                    v36.Name = "Root"
                    v36.Anchored = true
                    v36.Transparency = 1
                    v36.CanCollide = false
                    v36.CFrame = vu35.CFrame
                end
            else
                vu35.CFrame = pu32
                if vu34:FindFirstChild("Root") then
                    vu34.Root:Destroy()
                    wait()
                    topos(vu35.CFrame)
                    wait()
                end
                if vu34:FindFirstChild("Root") then
                    vu34.Root:Remove()
                end
            end
            local v37 = (vu35.Position - pu32.Position).Magnitude
            local vu38 = game:GetService("TweenService")
            local vu39 = TweenInfo.new(v37 / _G.Settings.Setting["Player Tween Speed"], Enum.EasingStyle.Linear)
            local v41, v42 = pcall(function()
				-- upvalues: (ref) vu38, (ref) vu34, (ref) vu39, (ref) pu32
                local v40 = {
                    ["CFrame"] = pu32
                }
                vu38:Create(vu34.Root, vu39, v40):Play()
            end)
            if _G.StopTween == true then
                tween:Cancel()
                _G.Clip = false
            end
            if not v41 then
                return v42
            end
            vu34.Root.CFrame = vu35.CFrame
            if v41 and vu34:FindFirstChild("Root") then
                pcall(function()
					-- upvalues: (ref) vu35, (ref) pu32, (ref) vu34
                    local v43 = (vu35.Position - pu32.Position).Magnitude
                    if v43 >= 50 then
                        task.spawn(function()
							-- upvalues: (ref) vu34, (ref) vu35
                            pcall(function()
								-- upvalues: (ref) vu34, (ref) vu35
                                if (vu34.Root.Position - vu35.Position).Magnitude <= 200 then
                                    vu35.CFrame = vu34.Root.CFrame
                                else
                                    vu34.Root.CFrame = vu35.CFrame
                                end
                            end)
                        end)
                    elseif 25 <= v43 and v43 < 40 then
                        vu35.CFrame = pu32
                    elseif v43 < 25 then
                        vu35.CFrame = pu32
                    end
                end)
            end
            return {
                ["Stop"] = function(_)
                    tween:Cancel()
                end
            }
        end)
    end)
end
local vu44 = game:GetService("Players").LocalPlayer
local vu45 = {
    ["General"] = true,
    ["Shiftlock"] = true,
    ["FallDamage"] = true,
    ["4444"] = true,
    ["CamBob"] = true,
    ["JumpCD"] = true,
    ["Looking"] = true,
    ["Run"] = true
}
local vu46 = {
    ["RobloxMotor6DBugFix"] = true,
    ["Clans"] = true,
    ["Codes"] = true,
    ["CustomForceField"] = true,
    ["MenuBloodSp"] = true,
    ["PlayerList"] = true
}
local function vu49(p47, p48)
    if p47:IsA("LocalScript") and p48[p47.Name] then
        p47:Destroy()
    end
end
local function vu56(p50)
	-- upvalues: (ref) vu49, (ref) vu45
    local v51, v52, v53 = pairs(p50:GetDescendants())
    while true do
        local v54
        v53, v54 = v51(v52, v53)
        if v53 == nil then
            break
        end
        vu49(v54, vu45)
    end
    p50.DescendantAdded:Connect(function(p55)
		-- upvalues: (ref) vu49, (ref) vu45
        vu49(p55, vu45)
    end)
end
local function vu62()
	-- upvalues: (ref) vu44, (ref) vu49, (ref) vu46
    local v57, v58, v59 = pairs(vu44.PlayerScripts:GetDescendants())
    while true do
        local v60
        v59, v60 = v57(v58, v59)
        if v59 == nil then
            break
        end
        vu49(v60, vu46)
    end
    vu44.PlayerScripts.DescendantAdded:Connect(function(p61)
		-- upvalues: (ref) vu49, (ref) vu46
        vu49(p61, vu46)
    end)
end
spawn(function()
	-- upvalues: (ref) vu44, (ref) vu56, (ref) vu62
    while task.wait(1) do
        pcall(function()
			-- upvalues: (ref) vu44, (ref) vu56, (ref) vu62
            if _G.Settings and _G.Settings.Setting["Bypass Anti Cheat"] then
                local v63 = vu44.Character
                if v63 then
                    vu56(v63)
                end
                vu62()
            end
        end)
    end
end)
print("succesfully bypassed anticheat xd lol")
_G.FastAttack = true
if _G.FastAttack then
    local vu64 = getgenv and getgenv() or (getrenv and getrenv() or getfenv())
    local function vu69(pu65, pu66)
        local v67, v68 = pcall(function()
			-- upvalues: (ref) pu65, (ref) pu66
            return pu65:WaitForChild(pu66)
        end)
        if not (v67 and v68) then
            warn("\239\191\189\239\191\189 Missing object (send this to Sudais): " .. tostring(pu66))
        end
        return v68
    end
    game:GetService("VirtualInputManager")
    game:GetService("CollectionService")
    local v70 = game:GetService("ReplicatedStorage")
    game:GetService("TeleportService")
    local v71 = game:GetService("RunService")
    local vu72 = game:GetService("Players").LocalPlayer
    if not vu72 then
        return warn("\239\191\189\239\191\189 No LocalPlayer")
    end
    local v73 = vu69(v70, "Remotes")
    if not v73 then
        return
    end
    vu69(v73, "Validator")
    vu69(v73, "CommF_")
    vu69(v73, "CommE")
    vu69(workspace, "ChestModels")
    local v74 = vu69(workspace, "_WorldOrigin")
    local vu75 = vu69(workspace, "Characters")
    local vu76 = vu69(workspace, "Enemies")
    vu69(workspace, "Map")
    vu69(v74, "EnemySpawns")
    vu69(v74, "Locations")
    local _ = v71.RenderStepped
    local _ = v71.Heartbeat
    local _ = v71.Stepped
    local vu77 = vu69(vu69(v70, "Modules"), "Net")
    local _ = sethiddenproperty
    if not setupvalue and debug then
        local _ = debug.setupvalue
    end
    if not getupvalue and debug then
        local _ = debug.getupvalue
    end
    local vu78 = {
        ["AutoClick"] = true,
        ["ClickDelay"] = 0
    };
    ({}).FastAttack = (function()
		-- upvalues: (ref) vu64, (ref) vu69, (ref) vu77, (ref) vu72, (ref) vu78, (ref) vu76, (ref) vu75
        if vu64.rz_FastAttack then
            return vu64.rz_FastAttack
        end
        local vu79 = {
            ["Distance"] = 100,
            ["attackMobs"] = true,
            ["attackPlayers"] = true,
            ["Equipped"] = nil
        }
        local vu80 = vu69(vu77, "RE/RegisterAttack")
        local vu81 = vu69(vu77, "RE/RegisterHit")
        local function vu84(p82)
            local v83 = p82 and p82:FindFirstChild("Humanoid")
            if v83 then
                v83 = p82.Humanoid.Health > 0
            end
            return v83
        end
        local function vu93(p85, p86)
			-- upvalues: (ref) vu84, (ref) vu72, (ref) vu79
            local v87, v88, v89 = ipairs(p86:GetChildren())
            local v90 = nil
            while true do
                local v91
                v89, v91 = v87(v88, v89)
                if v89 == nil then
                    break
                end
                local v92 = v91:FindFirstChild("Head")
                if v92 and vu84(v91) and (vu72:DistanceFromCharacter(v92.Position) < vu79.Distance and v91 ~= vu72.Character) then
                    table.insert(p85, {
                        v91,
                        v92
                    })
                    v90 = v92
                end
            end
            return v90
        end
        function vu79.Attack(_, p94, p95)
			-- upvalues: (ref) vu80, (ref) vu78, (ref) vu81
            if p94 and # p95 ~= 0 then
                vu80:FireServer(vu78.ClickDelay or 0)
                vu81:FireServer(p94, p95)
            end
        end
        function vu79.AttackNearest(p96)
			-- upvalues: (ref) vu93, (ref) vu76, (ref) vu75, (ref) vu72
            local v97 = {}
            local v98 = vu93(v97, vu76)
            local v99 = vu93(v97, vu75)
            local v100 = vu72.Character
            if v100 then
                local vu101 = v100:FindFirstChildOfClass("Tool")
                if vu101 and vu101:FindFirstChild("LeftClickRemote") then
                    local v102, v103, v104 = ipairs(v97)
                    while true do
                        local v105
                        v104, v105 = v102(v103, v104)
                        if v104 == nil then
                            break
                        end
                        local vu106 = (v105[1].HumanoidRootPart.Position - v100:GetPivot().Position).Unit
                        pcall(function()
							-- upvalues: (ref) vu101, (ref) vu106
                            vu101.LeftClickRemote:FireServer(vu106, 1)
                        end)
                    end
                elseif # v97 <= 0 then
                    task.wait()
                else
                    p96:Attack(v98 or v99, v97)
                end
            end
        end
        function vu79.BladeHits(p107)
			-- upvalues: (ref) vu84, (ref) vu72
            local v108 = vu84(vu72.Character)
            if v108 then
                v108 = vu72.Character:FindFirstChildOfClass("Tool")
            end
            if v108 and v108.ToolTip ~= "Gun" then
                p107:AttackNearest()
            else
                task.wait()
            end
        end
        task.spawn(function()
			-- upvalues: (ref) vu78, (ref) vu79
            while task.wait(vu78.ClickDelay) do
                if vu78.AutoClick then
                    vu79:BladeHits()
                end
            end
        end)
        vu64.rz_FastAttack = vu79
        return vu79
    end)()
end
local v109 = game:GetService("Players")
local vu110 = game:GetService("ReplicatedStorage")
local vu111 = game:GetService("TweenService")
local vu112 = game:GetService("RunService")
local vu113 = v109.LocalPlayer
_G.Settings = _G.Settings or {
    ["Main"] = {}
}
_G.Settings.Main["Selected Weapon"] = _G.Settings.Main["Selected Weapon"] or "Combat"
local vu114 = nil
local vu115 = nil
local vu116 = nil
local vu117 = nil
local vu118 = nil
local vu119 = nil
function topos(p120)
	-- upvalues: (ref) vu113, (ref) vu111
    local v121 = vu113.Character
    if v121 then
        v121 = vu113.Character:FindFirstChild("HumanoidRootPart")
    end
    if v121 then
        local v122 = (v121.Position - p120.Position).Magnitude
        local v123 = vu111:Create(v121, TweenInfo.new(v122 / 350, Enum.EasingStyle.Linear), {
            ["CFrame"] = p120
        })
        v123:Play()
        v123.Completed:Wait()
    end
end
function EquipWeapon(p124)
	-- upvalues: (ref) vu113
    if vu113.Backpack:FindFirstChild(p124) then
        vu113.Character.Humanoid:EquipTool(vu113.Backpack[p124])
    end
end
function UnEquipWeapon(p125)
	-- upvalues: (ref) vu113
    if vu113.Character:FindFirstChild(p125) then
        vu113.Character:FindFirstChild(p125).Parent = vu113.Backpack
    end
end
function AutoHaki()
	-- upvalues: (ref) vu113, (ref) vu110
    if not vu113.Character:FindFirstChild("HasBuso") then
        vu110.Remotes.CommF_:InvokeServer("Buso")
    end
end
function CheckQuest()
	-- upvalues: (ref) vu114, (ref) vu116, (ref) vu115, (ref) vu117, (ref) vu118, (ref) vu119
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            vu114 = "Bandit"
            vu116 = 1
            vu115 = "BanditQuest1"
            vu117 = "Bandit"
            vu118 = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, - 0, - 0.341998369, - 0, 1, - 0, 0.341998369, - 0, 0.939700544)
            vu119 = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel == 10 or MyLevel <= 14 then
            vu114 = "Monkey"
            vu116 = 1
            vu115 = "JungleQuest"
            vu117 = "Monkey"
            vu118 = CFrame.new(- 1598.08911, 35.5501175, 153.377838, - 0, - 0, 1, - 0, 1, - 0, - 1, - 0, - 0)
            vu119 = CFrame.new(- 1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            vu114 = "Gorilla"
            vu116 = 2
            vu115 = "JungleQuest"
            vu117 = "Gorilla"
            vu118 = CFrame.new(- 1598.08911, 35.5501175, 153.377838, - 0, - 0, 1, - 0, 1, - 0, - 1, - 0, - 0)
            vu119 = CFrame.new(- 1129.8836669921875, 40.46354675292969, - 525.4237060546875)
        elseif MyLevel == 30 or MyLevel <= 39 then
            vu114 = "Pirate"
            vu116 = 1
            vu115 = "BuggyQuest1"
            vu117 = "Pirate"
            vu118 = CFrame.new(- 1141.07483, 4.10001802, 3831.5498, 0.965929627, - 0, - 0.258804798, - 0, 1, - 0, 0.258804798, - 0, 0.965929627)
            vu119 = CFrame.new(- 1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            vu114 = "Brute"
            vu116 = 2
            vu115 = "BuggyQuest1"
            vu117 = "Brute"
            vu118 = CFrame.new(- 1141.07483, 4.10001802, 3831.5498, 0.965929627, - 0, - 0.258804798, - 0, 1, - 0, 0.258804798, - 0, 0.965929627)
            vu119 = CFrame.new(- 1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel == 60 or MyLevel <= 74 then
            vu114 = "Desert Bandit"
            vu116 = 1
            vu115 = "DesertQuest"
            vu117 = "Desert Bandit"
            vu118 = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, - 0, - 0.573571265, - 0, 1, - 0, 0.573571265, - 0, 0.819155693)
            vu119 = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel == 75 or MyLevel <= 89 then
            vu114 = "Desert Officer"
            vu116 = 2
            vu115 = "DesertQuest"
            vu117 = "Desert Officer"
            vu118 = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, - 0, - 0.573571265, - 0, 1, - 0, 0.573571265, - 0, 0.819155693)
            vu119 = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel == 90 or MyLevel <= 99 then
            vu114 = "Snow Bandit"
            vu116 = 1
            vu115 = "SnowQuest"
            vu117 = "Snow Bandit"
            vu118 = CFrame.new(1389.74451, 88.1519318, - 1298.90796, - 0.342042685, - 0, 0.939684391, - 0, 1, - 0, - 0.939684391, - 0, - 0.342042685)
            vu119 = CFrame.new(1354.347900390625, 87.27277374267578, - 1393.946533203125)
        elseif MyLevel == 100 or MyLevel <= 119 then
            vu114 = "Snowman"
            vu116 = 2
            vu115 = "SnowQuest"
            vu117 = "Snowman"
            vu118 = CFrame.new(1389.74451, 88.1519318, - 1298.90796, - 0.342042685, - 0, 0.939684391, - 0, 1, - 0, - 0.939684391, - 0, - 0.342042685)
            vu119 = CFrame.new(1201.6412353515625, 144.57958984375, - 1550.0670166015625)
        elseif MyLevel == 120 or MyLevel <= 149 then
            vu114 = "Chief Petty Officer"
            vu116 = 1
            vu115 = "MarineQuest2"
            vu117 = "Chief Petty Officer"
            vu118 = CFrame.new(- 5039.58643, 27.3500385, 4324.68018, - 0, - 0, - 1, - 0, 1, - 0, 1, - 0, - 0)
            vu119 = CFrame.new(- 4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel == 150 or MyLevel <= 174 then
            vu114 = "Sky Bandit"
            vu116 = 1
            vu115 = "SkyQuest"
            vu117 = "Sky Bandit"
            vu118 = CFrame.new(- 4839.53027, 716.368591, - 2619.44165, 0.866007268, - 0, 0.500031412, - 0, 1, - 0, - 0.500031412, - 0, 0.866007268)
            vu119 = CFrame.new(- 4953.20703125, 295.74420166015625, - 2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            vu114 = "Dark Master"
            vu116 = 2
            vu115 = "SkyQuest"
            vu117 = "Dark Master"
            vu118 = CFrame.new(- 4839.53027, 716.368591, - 2619.44165, 0.866007268, - 0, 0.500031412, - 0, 1, - 0, - 0.500031412, - 0, 0.866007268)
            vu119 = CFrame.new(- 5259.8447265625, 391.3976745605469, - 2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            vu114 = "Prisoner"
            vu116 = 1
            vu115 = "PrisonerQuest"
            vu117 = "Prisoner"
            vu118 = CFrame.new(5308.93115, 1.65517521, 475.120514, - 0.0894274712, - 5.00292918e-9, - 0.995993316, 1.60817859e-9, 1, - 5.16744869e-9, 0.995993316, - 2.06384709e-9, - 0.0894274712)
            vu119 = CFrame.new(5098.9736328125, - 0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            vu114 = "Dangerous Prisoner"
            vu116 = 2
            vu115 = "PrisonerQuest"
            vu117 = "Dangerous Prisoner"
            vu118 = CFrame.new(5308.93115, 1.65517521, 475.120514, - 0.0894274712, - 5.00292918e-9, - 0.995993316, 1.60817859e-9, 1, - 5.16744869e-9, 0.995993316, - 2.06384709e-9, - 0.0894274712)
            vu119 = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel == 250 or MyLevel <= 274 then
            vu114 = "Toga Warrior"
            vu116 = 1
            vu115 = "ColosseumQuest"
            vu117 = "Toga Warrior"
            vu118 = CFrame.new(- 1580.04663, 6.35000277, - 2986.47534, - 0.515037298, - 0, - 0.857167721, - 0, 1, - 0, 0.857167721, - 0, - 0.515037298)
            vu119 = CFrame.new(- 1820.21484375, 51.68385696411133, - 2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            vu114 = "Gladiator"
            vu116 = 2
            vu115 = "ColosseumQuest"
            vu117 = "Gladiator"
            vu118 = CFrame.new(- 1580.04663, 6.35000277, - 2986.47534, - 0.515037298, - 0, - 0.857167721, - 0, 1, - 0, 0.857167721, - 0, - 0.515037298)
            vu119 = CFrame.new(- 1292.838134765625, 56.380882263183594, - 3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            vu114 = "Military Soldier"
            vu116 = 1
            vu115 = "MagmaQuest"
            vu117 = "Military Soldier"
            vu118 = CFrame.new(- 5313.37012, 10.9500084, 8515.29395, - 0.499959469, - 0, 0.866048813, - 0, 1, - 0, - 0.866048813, - 0, - 0.499959469)
            vu119 = CFrame.new(- 5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            vu114 = "Military Spy"
            vu116 = 2
            vu115 = "MagmaQuest"
            vu117 = "Military Spy"
            vu118 = CFrame.new(- 5313.37012, 10.9500084, 8515.29395, - 0.499959469, - 0, 0.866048813, - 0, 1, - 0, - 0.866048813, - 0, - 0.499959469)
            vu119 = CFrame.new(- 5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel == 375 or MyLevel <= 399 then
            vu114 = "Fishman Warrior"
            vu116 = 1
            vu115 = "FishmanQuest"
            vu117 = "Fishman Warrior"
            vu118 = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            vu119 = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if _G.Settings.Main["Auto Farm"] and (vu118.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            vu114 = "Fishman Commando"
            vu116 = 2
            vu115 = "FishmanQuest"
            vu117 = "Fishman Commando"
            vu118 = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            vu119 = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if _G.Settings.Main["Auto Farm"] and (vu118.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            vu114 = "God\'s Guard"
            vu116 = 1
            vu115 = "SkyExp1Quest"
            vu117 = "God\'s Guard"
            vu118 = CFrame.new(- 4721.88867, 843.874695, - 1949.96643, 0.996191859, - 0, - 0.0871884301, - 0, 1, - 0, 0.0871884301, - 0, 0.996191859)
            vu119 = CFrame.new(- 4710.04296875, 845.2769775390625, - 1927.3079833984375)
            if _G.Settings.Main["Auto Farm"] and (vu118.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            vu114 = "Shanda"
            vu116 = 2
            vu115 = "SkyExp1Quest"
            vu117 = "Shanda"
            vu118 = CFrame.new(- 7859.09814, 5544.19043, - 381.476196, - 0.422592998, - 0, 0.906319618, - 0, 1, - 0, - 0.906319618, - 0, - 0.422592998)
            vu119 = CFrame.new(- 7678.48974609375, 5566.40380859375, - 497.2156066894531)
            if _G.Settings.Main["Auto Farm"] and (vu118.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047))
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            vu114 = "Royal Squad"
            vu116 = 1
            vu115 = "SkyExp2Quest"
            vu117 = "Royal Squad"
            vu118 = CFrame.new(- 7906.81592, 5634.6626, - 1411.99194, - 0, - 0, - 1, - 0, 1, - 0, 1, - 0, - 0)
            vu119 = CFrame.new(- 7624.25244140625, 5658.13330078125, - 1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            vu114 = "Royal Soldier"
            vu116 = 2
            vu115 = "SkyExp2Quest"
            vu117 = "Royal Soldier"
            vu118 = CFrame.new(- 7906.81592, 5634.6626, - 1411.99194, - 0, - 0, - 1, - 0, 1, - 0, 1, - 0, - 0)
            vu119 = CFrame.new(- 7836.75341796875, 5645.6640625, - 1790.6236572265625)
        elseif MyLevel == 625 or MyLevel <= 649 then
            vu114 = "Galley Pirate"
            vu116 = 1
            vu115 = "FountainQuest"
            vu117 = "Galley Pirate"
            vu118 = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, - 0, 0.996196866, - 0, 1, - 0, - 0.996196866, - 0, 0.087131381)
            vu119 = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            vu114 = "Galley Captain"
            vu116 = 2
            vu115 = "FountainQuest"
            vu117 = "Galley Captain"
            vu118 = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, - 0, 0.996196866, - 0, 1, - 0, - 0.996196866, - 0, 0.087131381)
            vu119 = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            vu114 = "Raider"
            vu116 = 1
            vu115 = "Area1Quest"
            vu117 = "Raider"
            vu118 = CFrame.new(- 429.543518, 71.7699966, 1836.18188, - 0.22495985, - 0, - 0.974368095, - 0, 1, - 0, 0.974368095, - 0, - 0.22495985)
            vu119 = CFrame.new(- 728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            vu114 = "Mercenary"
            vu116 = 2
            vu115 = "Area1Quest"
            vu117 = "Mercenary"
            vu118 = CFrame.new(- 429.543518, 71.7699966, 1836.18188, - 0.22495985, - 0, - 0.974368095, - 0, 1, - 0, 0.974368095, - 0, - 0.22495985)
            vu119 = CFrame.new(- 1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel == 775 or MyLevel <= 799 then
            vu114 = "Swan Pirate"
            vu116 = 1
            vu115 = "Area2Quest"
            vu117 = "Swan Pirate"
            vu118 = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, - 0, 0.99026376, - 0, 1, - 0, - 0.99026376, - 0, 0.139203906)
            vu119 = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            vu114 = "Factory Staff"
            vu115 = "Area2Quest"
            vu116 = 2
            vu117 = "Factory Staff"
            vu118 = CFrame.new(632.698608, 73.1055908, 918.666321, - 0.0319722369, 8.96074881e-10, - 0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, - 1.07732087e-10, - 0.0319722369)
            vu119 = CFrame.new(73.07867431640625, 81.86344146728516, - 27.470672607421875)
        elseif MyLevel == 875 or MyLevel <= 899 then
            vu114 = "Marine Lieutenant"
            vu116 = 1
            vu115 = "MarineQuest3"
            vu117 = "Marine Lieutenant"
            vu118 = CFrame.new(- 2440.79639, 71.7140732, - 3216.06812, 0.866007268, - 0, 0.500031412, - 0, 1, - 0, - 0.500031412, - 0, 0.866007268)
            vu119 = CFrame.new(- 2821.372314453125, 75.89727783203125, - 3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            vu114 = "Marine Captain"
            vu116 = 2
            vu115 = "MarineQuest3"
            vu117 = "Marine Captain"
            vu118 = CFrame.new(- 2440.79639, 71.7140732, - 3216.06812, 0.866007268, - 0, 0.500031412, - 0, 1, - 0, - 0.500031412, - 0, 0.866007268)
            vu119 = CFrame.new(- 1861.2310791015625, 80.17658233642578, - 3254.697509765625)
        elseif MyLevel == 950 or MyLevel <= 974 then
            vu114 = "Zombie"
            vu116 = 1
            vu115 = "ZombieQuest"
            vu117 = "Zombie"
            vu118 = CFrame.new(- 5497.06152, 47.5923004, - 795.237061, - 0.29242146, - 0, - 0.95628953, - 0, 1, - 0, 0.95628953, - 0, - 0.29242146)
            vu119 = CFrame.new(- 5657.77685546875, 78.96973419189453, - 928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            vu114 = "Vampire"
            vu116 = 2
            vu115 = "ZombieQuest"
            vu117 = "Vampire"
            vu118 = CFrame.new(- 5497.06152, 47.5923004, - 795.237061, - 0.29242146, - 0, - 0.95628953, - 0, 1, - 0, 0.95628953, - 0, - 0.29242146)
            vu119 = CFrame.new(- 6037.66796875, 32.18463897705078, - 1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            vu114 = "Snow Trooper"
            vu116 = 1
            vu115 = "SnowMountainQuest"
            vu117 = "Snow Trooper"
            vu118 = CFrame.new(609.858826, 400.119904, - 5372.25928, - 0.374604106, - 0, 0.92718488, - 0, 1, - 0, - 0.92718488, - 0, - 0.374604106)
            vu119 = CFrame.new(549.1473388671875, 427.3870544433594, - 5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            vu114 = "Winter Warrior"
            vu116 = 2
            vu115 = "SnowMountainQuest"
            vu117 = "Winter Warrior"
            vu118 = CFrame.new(609.858826, 400.119904, - 5372.25928, - 0.374604106, - 0, 0.92718488, - 0, 1, - 0, - 0.92718488, - 0, - 0.374604106)
            vu119 = CFrame.new(1142.7451171875, 475.6398010253906, - 5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            vu114 = "Lab Subordinate"
            vu116 = 1
            vu115 = "IceSideQuest"
            vu117 = "Lab Subordinate"
            vu118 = CFrame.new(- 6064.06885, 15.2422857, - 4902.97852, 0.453972578, - 0, - 0.891015649, - 0, 1, - 0, 0.891015649, - 0, 0.453972578)
            vu119 = CFrame.new(- 5707.4716796875, 15.951709747314453, - 4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            vu114 = "Horned Warrior"
            vu116 = 2
            vu115 = "IceSideQuest"
            vu117 = "Horned Warrior"
            vu118 = CFrame.new(- 6064.06885, 15.2422857, - 4902.97852, 0.453972578, - 0, - 0.891015649, - 0, 1, - 0, 0.891015649, - 0, 0.453972578)
            vu119 = CFrame.new(- 6341.36669921875, 15.951770782470703, - 5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            vu114 = "Magma Ninja"
            vu116 = 1
            vu115 = "FireSideQuest"
            vu117 = "Magma Ninja"
            vu118 = CFrame.new(- 5428.03174, 15.0622921, - 5299.43457, - 0.882952213, - 0, 0.469463557, - 0, 1, - 0, - 0.469463557, - 0, - 0.882952213)
            vu119 = CFrame.new(- 5449.6728515625, 76.65874481201172, - 5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            vu114 = "Lava Pirate"
            vu116 = 2
            vu115 = "FireSideQuest"
            vu117 = "Lava Pirate"
            vu118 = CFrame.new(- 5428.03174, 15.0622921, - 5299.43457, - 0.882952213, - 0, 0.469463557, - 0, 1, - 0, - 0.469463557, - 0, - 0.882952213)
            vu119 = CFrame.new(- 5213.33154296875, 49.73788070678711, - 4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            vu114 = "Ship Deckhand"
            vu116 = 1
            vu115 = "ShipQuest1"
            vu117 = "Ship Deckhand"
            vu118 = CFrame.new(1037.80127, 125.092171, 32911.6016)
            vu119 = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)
            if _G.Settings.Main["Auto Farm"] and (vu118.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            vu114 = "Ship Engineer"
            vu116 = 2
            vu115 = "ShipQuest1"
            vu117 = "Ship Engineer"
            vu118 = CFrame.new(1037.80127, 125.092171, 32911.6016)
            vu119 = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)
            if _G.Settings.Main["Auto Farm"] and (vu118.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            vu114 = "Ship Steward"
            vu116 = 1
            vu115 = "ShipQuest2"
            vu117 = "Ship Steward"
            vu118 = CFrame.new(968.80957, 125.092171, 33244.125)
            vu119 = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)
            if _G.Settings.Main["Auto Farm"] and (vu118.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            vu114 = "Ship Officer"
            vu116 = 2
            vu115 = "ShipQuest2"
            vu117 = "Ship Officer"
            vu118 = CFrame.new(968.80957, 125.092171, 33244.125)
            vu119 = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if _G.Settings.Main["Auto Farm"] and (vu118.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            vu114 = "Arctic Warrior"
            vu116 = 1
            vu115 = "FrostQuest"
            vu117 = "Arctic Warrior"
            vu118 = CFrame.new(5667.6582, 26.7997818, - 6486.08984, - 0.933587909, - 0, - 0.358349502, - 0, 1, - 0, 0.358349502, - 0, - 0.933587909)
            vu119 = CFrame.new(5966.24609375, 62.97002029418945, - 6179.3828125)
            if _G.Settings.Main["Auto Farm"] and (vu118.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 6508.5581054688, 5000.034996032715, - 132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            vu114 = "Snow Lurker"
            vu116 = 2
            vu115 = "FrostQuest"
            vu117 = "Snow Lurker"
            vu118 = CFrame.new(5667.6582, 26.7997818, - 6486.08984, - 0.933587909, - 0, - 0.358349502, - 0, 1, - 0, 0.358349502, - 0, - 0.933587909)
            vu119 = CFrame.new(5407.07373046875, 69.19437408447266, - 6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            vu114 = "Sea Soldier"
            vu116 = 1
            vu115 = "ForgottenQuest"
            vu117 = "Sea Soldier"
            vu118 = CFrame.new(- 3054.44458, 235.544281, - 10142.8193, 0.990270376, - 0, - 0.13915664, - 0, 1, - 0, 0.13915664, - 0, 0.990270376)
            vu119 = CFrame.new(- 3028.2236328125, 64.67451477050781, - 9775.4267578125)
        elseif MyLevel >= 1450 then
            vu114 = "Water Fighter"
            vu116 = 2
            vu115 = "ForgottenQuest"
            vu117 = "Water Fighter"
            vu118 = CFrame.new(- 3054.44458, 235.544281, - 10142.8193, 0.990270376, - 0, - 0.13915664, - 0, 1, - 0, 0.13915664, - 0, 0.990270376)
            vu119 = CFrame.new(- 3352.9013671875, 285.01556396484375, - 10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            vu114 = "Pirate Millionaire"
            vu116 = 1
            vu115 = "PiratePortQuest"
            vu117 = "Pirate Millionaire"
            vu118 = CFrame.new(- 290.074677, 42.9034653, 5581.58984, 0.965929627, - 0, - 0.258804798, - 0, 1, - 0, 0.258804798, - 0, 0.965929627)
            vu119 = CFrame.new(- 245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            vu114 = "Pistol Billionaire"
            vu116 = 2
            vu115 = "PiratePortQuest"
            vu117 = "Pistol Billionaire"
            vu118 = CFrame.new(- 290.074677, 42.9034653, 5581.58984, 0.965929627, - 0, - 0.258804798, - 0, 1, - 0, 0.258804798, - 0, 0.965929627)
            vu119 = CFrame.new(- 187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            vu114 = "Dragon Crew Warrior"
            vu116 = 1
            vu115 = "AmazonQuest"
            vu117 = "Dragon Crew Warrior"
            vu118 = CFrame.new(5832.83594, 51.6806107, - 1101.51563, 0.898790359, - 0, - 0.438378751, - 0, 1, - 0, 0.438378751, - 0, 0.898790359)
            vu119 = CFrame.new(6141.140625, 51.35136413574219, - 1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then
            vu114 = "Dragon Crew Archer [Lv. 1600]"
            vu115 = "AmazonQuest"
            vu116 = 2
            vu117 = "Dragon Crew Archer"
            vu118 = CFrame.new(5833.1147460938, 51.60498046875, - 1103.0693359375)
            vu119 = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            vu114 = "Female Islander"
            vu115 = "AmazonQuest2"
            vu116 = 1
            vu117 = "Female Islander"
            vu118 = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            vu119 = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then
            vu114 = "Giant Islander [Lv. 1650]"
            vu115 = "AmazonQuest2"
            vu116 = 2
            vu117 = "Giant Islander"
            vu118 = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            vu119 = CFrame.new(4729.09423828125, 590.436767578125, - 36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            vu114 = "Marine Commodore"
            vu116 = 1
            vu115 = "MarineTreeIsland"
            vu117 = "Marine Commodore"
            vu118 = CFrame.new(2180.54126, 27.8156815, - 6741.5498, - 0.965929747, - 0, 0.258804798, - 0, 1, - 0, - 0.258804798, - 0, - 0.965929747)
            vu119 = CFrame.new(2286.0078125, 73.13391876220703, - 7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            vu114 = "Marine Rear Admiral [Lv. 1725]"
            vu117 = "Marine Rear Admiral"
            vu115 = "MarineTreeIsland"
            vu116 = 2
            vu118 = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813)
            vu119 = CFrame.new(3656.773681640625, 160.52406311035156, - 7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            vu114 = "Fishman Raider"
            vu116 = 1
            vu115 = "DeepForestIsland3"
            vu117 = "Fishman Raider"
            vu118 = CFrame.new(- 10581.6563, 330.872955, - 8761.18652, - 0.882952213, - 0, 0.469463557, - 0, 1, - 0, - 0.469463557, - 0, - 0.882952213)
            vu119 = CFrame.new(- 10407.5263671875, 331.76263427734375, - 8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            vu114 = "Fishman Captain"
            vu116 = 2
            vu115 = "DeepForestIsland3"
            vu117 = "Fishman Captain"
            vu118 = CFrame.new(- 10581.6563, 330.872955, - 8761.18652, - 0.882952213, - 0, 0.469463557, - 0, 1, - 0, - 0.469463557, - 0, - 0.882952213)
            vu119 = CFrame.new(- 10994.701171875, 352.38140869140625, - 9002.1103515625)
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            vu114 = "Forest Pirate"
            vu116 = 1
            vu115 = "DeepForestIsland"
            vu117 = "Forest Pirate"
            vu118 = CFrame.new(- 13234.04, 331.488495, - 7625.40137, 0.707134247, - 0, - 0.707079291, - 0, 1, - 0, 0.707079291, - 0, 0.707134247)
            vu119 = CFrame.new(- 13274.478515625, 332.3781433105469, - 7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            vu114 = "Mythological Pirate"
            vu116 = 2
            vu115 = "DeepForestIsland"
            vu117 = "Mythological Pirate"
            vu118 = CFrame.new(- 13234.04, 331.488495, - 7625.40137, 0.707134247, - 0, - 0.707079291, - 0, 1, - 0, 0.707079291, - 0, 0.707134247)
            vu119 = CFrame.new(- 13680.607421875, 501.08154296875, - 6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            vu114 = "Jungle Pirate"
            vu116 = 1
            vu115 = "DeepForestIsland2"
            vu117 = "Jungle Pirate"
            vu118 = CFrame.new(- 12680.3818, 389.971039, - 9902.01953, - 0.0871315002, - 0, 0.996196866, - 0, 1, - 0, - 0.996196866, - 0, - 0.0871315002)
            vu119 = CFrame.new(- 12256.16015625, 331.73828125, - 10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            vu114 = "Musketeer Pirate"
            vu116 = 2
            vu115 = "DeepForestIsland2"
            vu117 = "Musketeer Pirate"
            vu118 = CFrame.new(- 12680.3818, 389.971039, - 9902.01953, - 0.0871315002, - 0, 0.996196866, - 0, 1, - 0, - 0.996196866, - 0, - 0.0871315002)
            vu119 = CFrame.new(- 13457.904296875, 391.545654296875, - 9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            vu114 = "Reborn Skeleton"
            vu116 = 1
            vu115 = "HauntedQuest1"
            vu117 = "Reborn Skeleton"
            vu118 = CFrame.new(- 9479.2168, 141.215088, 5566.09277, - 0, - 0, 1, - 0, 1, - 0, - 1, - 0, - 0)
            vu119 = CFrame.new(- 8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            vu114 = "Living Zombie"
            vu116 = 2
            vu115 = "HauntedQuest1"
            vu117 = "Living Zombie"
            vu118 = CFrame.new(- 9479.2168, 141.215088, 5566.09277, - 0, - 0, 1, - 0, 1, - 0, - 1, - 0, - 0)
            vu119 = CFrame.new(- 10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            vu114 = "Demonic Soul"
            vu116 = 1
            vu115 = "HauntedQuest2"
            vu117 = "Demonic Soul"
            vu118 = CFrame.new(- 9516.99316, 172.017181, 6078.46533, - 0, - 0, - 1, - 0, 1, - 0, 1, - 0, - 0)
            vu119 = CFrame.new(- 9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            vu114 = "Posessed Mummy"
            vu116 = 2
            vu115 = "HauntedQuest2"
            vu117 = "Posessed Mummy"
            vu118 = CFrame.new(- 9516.99316, 172.017181, 6078.46533, - 0, - 0, - 1, - 0, 1, - 0, 1, - 0, - 0)
            vu119 = CFrame.new(- 9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            vu114 = "Peanut Scout"
            vu116 = 1
            vu115 = "NutsIslandQuest"
            vu117 = "Peanut Scout"
            vu118 = CFrame.new(- 2104.3908691406, 38.104167938232, - 10194.21875, - 0, - 0, - 1, - 0, 1, - 0, 1, - 0, - 0)
            vu119 = CFrame.new(- 2143.241943359375, 47.72198486328125, - 10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            vu114 = "Peanut President"
            vu116 = 2
            vu115 = "NutsIslandQuest"
            vu117 = "Peanut President"
            vu118 = CFrame.new(- 2104.3908691406, 38.104167938232, - 10194.21875, - 0, - 0, - 1, - 0, 1, - 0, 1, - 0, - 0)
            vu119 = CFrame.new(- 1859.35400390625, 38.10316848754883, - 10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            vu114 = "Ice Cream Chef"
            vu116 = 1
            vu115 = "IceCreamIslandQuest"
            vu117 = "Ice Cream Chef"
            vu118 = CFrame.new(- 820.64825439453, 65.819526672363, - 10965.795898438, - 0, - 0, - 1, - 0, 1, - 0, 1, - 0, - 0)
            vu119 = CFrame.new(- 872.24658203125, 65.81957244873047, - 10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            vu114 = "Ice Cream Commander"
            vu116 = 2
            vu115 = "IceCreamIslandQuest"
            vu117 = "Ice Cream Commander"
            vu118 = CFrame.new(- 820.64825439453, 65.819526672363, - 10965.795898438, - 0, - 0, - 1, - 0, 1, - 0, 1, - 0, - 0)
            vu119 = CFrame.new(- 558.06103515625, 112.04895782470703, - 11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            vu114 = "Cookie Crafter"
            vu116 = 1
            vu115 = "CakeQuest1"
            vu117 = "Cookie Crafter"
            vu118 = CFrame.new(- 2021.32007, 37.7982254, - 12028.7295, 0.957576931, - 8.80302053e-8, 0.288177818, 6.9301187e-8, 1, 7.51931211e-8, - 0.288177818, - 5.2032135e-8, 0.957576931)
            vu119 = CFrame.new(- 2374.13671875, 37.79826354980469, - 12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            vu114 = "Cake Guard"
            vu116 = 2
            vu115 = "CakeQuest1"
            vu117 = "Cake Guard"
            vu118 = CFrame.new(- 2021.32007, 37.7982254, - 12028.7295, 0.957576931, - 8.80302053e-8, 0.288177818, 6.9301187e-8, 1, 7.51931211e-8, - 0.288177818, - 5.2032135e-8, 0.957576931)
            vu119 = CFrame.new(- 1598.3070068359375, 43.773197174072266, - 12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            vu114 = "Baking Staff"
            vu116 = 1
            vu115 = "CakeQuest2"
            vu117 = "Baking Staff"
            vu118 = CFrame.new(- 1927.91602, 37.7981339, - 12842.5391, - 0.96804446, 4.22142143e-8, 0.250778586, 4.74911062e-8, 1, 1.49904711e-8, - 0.250778586, 2.64211941e-8, - 0.96804446)
            vu119 = CFrame.new(- 1887.8099365234375, 77.6185073852539, - 12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            vu114 = "Head Baker"
            vu116 = 2
            vu115 = "CakeQuest2"
            vu117 = "Head Baker"
            vu118 = CFrame.new(- 1927.91602, 37.7981339, - 12842.5391, - 0.96804446, 4.22142143e-8, 0.250778586, 4.74911062e-8, 1, 1.49904711e-8, - 0.250778586, 2.64211941e-8, - 0.96804446)
            vu119 = CFrame.new(- 2216.188232421875, 82.884521484375, - 12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            vu114 = "Cocoa Warrior"
            vu116 = 1
            vu115 = "ChocQuest1"
            vu117 = "Cocoa Warrior"
            vu118 = CFrame.new(233.22836303710938, 29.876001358032227, - 12201.2333984375)
            vu119 = CFrame.new(- 21.55328369140625, 80.57499694824219, - 12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            vu114 = "Chocolate Bar Battler"
            vu116 = 2
            vu115 = "ChocQuest1"
            vu117 = "Chocolate Bar Battler"
            vu118 = CFrame.new(233.22836303710938, 29.876001358032227, - 12201.2333984375)
            vu119 = CFrame.new(582.590576171875, 77.18809509277344, - 12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            vu114 = "Sweet Thief"
            vu116 = 1
            vu115 = "ChocQuest2"
            vu117 = "Sweet Thief"
            vu118 = CFrame.new(150.5066375732422, 30.693693161010742, - 12774.5029296875)
            vu119 = CFrame.new(165.1884765625, 76.05885314941406, - 12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            vu114 = "Candy Rebel"
            vu116 = 2
            vu115 = "ChocQuest2"
            vu117 = "Candy Rebel"
            vu118 = CFrame.new(150.5066375732422, 30.693693161010742, - 12774.5029296875)
            vu119 = CFrame.new(134.86563110351562, 77.2476806640625, - 12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            vu114 = "Candy Pirate"
            vu116 = 1
            vu115 = "CandyQuest1"
            vu117 = "Candy Pirate"
            vu118 = CFrame.new(- 1150.0400390625, 20.378934860229492, - 14446.3349609375)
            vu119 = CFrame.new(- 1310.5003662109375, 26.016523361206055, - 14562.404296875)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            vu114 = "Snow Demon"
            vu116 = 2
            vu115 = "CandyQuest1"
            vu117 = "Snow Demon"
            vu118 = CFrame.new(- 1150.0400390625, 20.378934860229492, - 14446.3349609375)
            vu119 = CFrame.new(- 880.2006225585938, 71.24776458740234, - 14538.609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            vu114 = "Isle Outlaw"
            vu116 = 1
            vu115 = "TikiQuest1"
            vu117 = "Isle Outlaw"
            vu118 = CFrame.new(- 16547.748046875, 61.13533401489258, - 173.41360473632812)
            vu119 = CFrame.new(- 16442.814453125, 116.13899993896484, - 264.4637756347656)
        elseif MyLevel == 2475 or MyLevel <= 2524 then
            vu114 = "Island Boy"
            vu116 = 2
            vu115 = "TikiQuest1"
            vu117 = "Island Boy"
            vu118 = CFrame.new(- 16547.748046875, 61.13533401489258, - 173.41360473632812)
            vu119 = CFrame.new(- 16901.26171875, 84.06756591796875, - 192.88906860351562)
        elseif MyLevel == 2525 or MyLevel <= 2549 then
            vu114 = "Isle Champion"
            vu116 = 2
            vu115 = "TikiQuest2"
            vu117 = "Isle Champion"
            vu118 = CFrame.new(- 16539.078125, 55.68632888793945, 1051.5738525390625)
            vu119 = CFrame.new(- 16641.6796875, 235.7825469970703, 1031.282958984375)
        elseif MyLevel == 2550 or MyLevel <= 2574 then
            vu114 = "Serpent Hunter"
            vu116 = 1
            vu115 = "TikiQuest3"
            vu117 = "Serpent Hunter"
            vu118 = CFrame.new(- 16661.890625, 105.2862319946289, 1576.69775390625)
            vu119 = CFrame.new(- 16587.896484375, 154.21299743652344, 1533.40966796875)
        elseif MyLevel < 2575 or MyLevel >= 2600 then
            if MyLevel < 2600 or MyLevel >= 2625 then
                if MyLevel < 2625 or MyLevel >= 2650 then
                    if MyLevel < 2650 or MyLevel >= 2675 then
                        if MyLevel < 2675 or MyLevel >= 2700 then
                            if MyLevel < 2700 or MyLevel >= 2725 then
                                if MyLevel >= 2725 and MyLevel < 99999 then
                                    vu114 = "Grand Devotee"
                                    vu116 = 2
                                    vu115 = "SubmergedQuest3"
                                    vu117 = "Grand Devotee"
                                    vu118 = CFrame.new(9637.67578, - 1992.50183, 9610.94238, - 0.992946804, - 3.94256672e-9, 0.118560724, - 4.21695967e-9, 1, - 2.06349782e-9, - 0.118560724, - 2.54890931e-9, - 0.992946804)
                                    vu119 = CFrame.new(9614.51367, - 1930.08435, 9923.33691, 0.375523955, 0.232787117, - 0.897101939, 0.0000369007503, 0.967939377, 0.251184016, 0.926812708, - 0.0943587124, 0.363475829)
                                end
                            else
                                vu114 = "High Disciple"
                                vu116 = 1
                                vu115 = "SubmergedQuest3"
                                vu117 = "High Disciple"
                                vu118 = CFrame.new(9637.67578, - 1992.50183, 9610.94238, - 0.992946804, - 3.94256672e-9, 0.118560724, - 4.21695967e-9, 1, - 2.06349782e-9, - 0.118560724, - 2.54890931e-9, - 0.992946804)
                                vu119 = CFrame.new(9807.25195, - 1925.54163, 9672.67773, - 0.986323297, 1.86164151e-8, 0.164822191, 2.07191384e-8, 1, 1.1038285e-8, - 0.164822191, 1.43022918e-8, - 0.986323297)
                            end
                        else
                            vu114 = "Ocean Prophet"
                            vu116 = 2
                            vu115 = "SubmergedQuest2"
                            vu117 = "Ocean Prophet"
                            vu118 = CFrame.new(10880.126, - 2086.25781, 10031.668, - 0.609805584, 8.83985507e-9, - 0.792551041, - 6.20244833e-8, 1, 5.88766262e-8, 0.792551041, 8.50608615e-8, - 0.609805584)
                            vu119 = CFrame.new(11107.0244, - 1949.2229, 10131.3984, - 0.229952738, 1.18545593e-7, 0.973201811, 3.33937642e-8, 1, - 1.13919448e-7, - 0.973201811, 6.30278318e-9, - 0.229952738)
                        end
                    else
                        vu114 = "Sea Chanter"
                        vu116 = 1
                        vu115 = "SubmergedQuest2"
                        vu117 = "Sea Chanter"
                        vu118 = CFrame.new(10880.126, - 2086.25781, 10031.668, - 0.609805584, 8.83985507e-9, - 0.792551041, - 6.20244833e-8, 1, 5.88766262e-8, 0.792551041, 8.50608615e-8, - 0.609805584)
                        vu119 = CFrame.new(10627.377, - 2020.83643, 10054.4541, - 0.916403234, 3.09629522e-9, 0.400256276, 7.01911196e-10, 1, - 6.12872686e-9, - 0.400256276, - 5.33544098e-9, - 0.916403234)
                    end
                else
                    vu114 = "Coral Pirate"
                    vu116 = 2
                    vu115 = "SubmergedQuest1"
                    vu117 = "Coral Pirate"
                    vu118 = CFrame.new(10780.6396, - 2088.4104, 9260.45312, - 0.984812617, - 0, 0.173621148, - 0, 1, - 0, - 0.173621148, - 0, - 0.984812617)
                    vu119 = CFrame.new(10713.4434, - 2092.98657, 9307.14941, 0.325602472, 0.0000702769976, 0.945506752, - 0.0000702769976, 1, - 0.0000501261711, - 0.945506752, - 0.0000501261711, 0.325602472)
                end
            else
                vu114 = "Reef Bandit"
                vu116 = 1
                vu115 = "SubmergedQuest1"
                vu117 = "Reef Bandit"
                vu118 = CFrame.new(10780.6396, - 2088.4104, 9260.45312, - 0.984812617, - 0, 0.173621148, - 0, 1, - 0, - 0.173621148, - 0, - 0.984812617)
                vu119 = CFrame.new(10943.0811, - 2083.03516, 9177.33691, - 0.998713255, - 0.0461204648, 0.021090759, - 0.0451571345, 0.998007238, 0.0440727882, - 0.0230813865, 0.0430636741, - 0.998805642)
            end
        else
            vu114 = "Skull Slayer"
            vu116 = 2
            vu115 = "TikiQuest3"
            vu117 = "Skull Slayer"
            vu118 = CFrame.new(- 16661.890625, 105.2862319946289, 1576.69775390625)
            vu119 = CFrame.new(- 16885.203125, 114.12911224365234, 1627.949951171875)
        end
    end
end
local function vu141()
	-- upvalues: (ref) vu113, (ref) vu117, (ref) vu110, (ref) vu118, (ref) vu115, (ref) vu116, (ref) vu114, (ref) vu112, (ref) vu119
    while _G.AutoFarmLevel do
        task.wait(0.1)
        pcall(function()
			-- upvalues: (ref) vu113, (ref) vu117, (ref) vu110, (ref) vu118, (ref) vu115, (ref) vu116, (ref) vu114, (ref) vu112, (ref) vu119
            CheckQuest()
            local v126 = vu113.Character
            if v126 then
                v126 = vu113.Character:FindFirstChild("HumanoidRootPart")
            end
            if v126 then
                local v127 = vu113.PlayerGui.Main.Quest
                local v128 = v127.Container.QuestTitle.Title.Text
                if not string.find(v128, vu117) then
                    vu110.Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if v127.Visible then
                    local v129, v130, v131 = pairs(workspace.Enemies:GetChildren())
                    local v132 = {}
                    while true do
                        local v133
                        v131, v133 = v129(v130, v131)
                        if v131 == nil then
                            break
                        end
                        if v133.Name == vu114 and (v133:FindFirstChild("HumanoidRootPart") and (v133:FindFirstChild("Humanoid") and v133.Humanoid.Health > 0)) then
                            table.insert(v132, v133)
                        end
                    end
                    if # v132 <= 0 then
                        topos(vu119)
                        UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
                    else
                        local v134 = v126.Position
                        local v135, v136, v137 = pairs(v132)
                        while true do
                            local v138
                            v137, v138 = v135(v136, v137)
                            if v137 == nil then
                                break
                            end
                            if v138:FindFirstChild("HumanoidRootPart") and (v138:FindFirstChild("Humanoid") and (v138.HumanoidRootPart.Position - v134).Magnitude <= 130) then
                                v138.HumanoidRootPart.CanCollide = false
                                v138.Humanoid.WalkSpeed = 0
                                v138.Humanoid.JumpPower = 0
                                v138.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                v138.HumanoidRootPart.CFrame = v126.CFrame * CFrame.new(0, 0, - 5)
                                if v138:FindFirstChild("Head") then
                                    v138.Head.CanCollide = false
                                end
                            end
                        end
                        local v139 = v132[1]
                        repeat
                            vu112.Heartbeat:Wait()
                            EquipWeapon(_G.Settings.Main["Selected Weapon"])
                            AutoHaki()
                            local v140 = v139.HumanoidRootPart.Position
                            topos(CFrame.new(v140.X, v140.Y + 50, v140.Z))
                        until not _G.AutoFarmLevel or (not v139.Parent or (v139.Humanoid.Health <= 0 or not v127.Visible))
                    end
                else
                    topos(vu118)
                    if (v126.Position - vu118.Position).Magnitude <= 5 then
                        vu110.Remotes.CommF_:InvokeServer("StartQuest", vu115, vu116)
                    end
                end
            end
        end)
    end
end
if Event then
    _G.AutoFarmNPC = false
    local v142 = game:GetService("Players")
    game:GetService("ReplicatedStorage")
    local vu143 = game:GetService("RunService")
    local vu144 = v142.LocalPlayer
    local vu145 = 0
    local vu146 = 5
    local vu147 = CFrame.new(249.599838, 4911.65332, 108.031746, 0.991259277, - 1.77066948e-8, - 0.131928116, 1.84896241e-8, 1, 4.70950168e-9, 0.131928116, - 7.10763892e-9, 0.991259277)
    local function vu149(p148)
        if p148 then
            p148 = p148:FindFirstChild("HumanoidRootPart")
        end
        return p148
    end
    local function vu152(p150)
        local v151 = p150:FindFirstChild("Humanoid")
        if v151 then
            v151 = v151.Health > 0
        end
        return v151
    end
    local function vu161()
		-- upvalues: (ref) vu149, (ref) vu144, (ref) vu152
        local v153 = vu149(vu144.Character)
        if v153 then
            local v154 = math.huge
            local v155, v156, v157 = ipairs(workspace.Enemies:GetChildren())
            local v158 = nil
            while true do
                local v159
                v157, v159 = v155(v156, v157)
                if v157 == nil then
                    break
                end
                if vu149(v159) and vu152(v159) then
                    local v160 = (v159.HumanoidRootPart.Position - v153.Position).Magnitude
                    if v160 < v154 then
                        v158 = v159
                        v154 = v160
                    end
                end
            end
            return v158
        end
    end
    local function vu163()
		-- upvalues: (ref) vu145, (ref) vu146, (ref) vu1
        local v162 = tick()
        if vu146 <= v162 - vu145 then
            vu145 = v162
            if vu1 and vu1.Notify then
            else
                warn("Auto Farm: No enemies found \226\128\148 waiting for spawn...")
            end
        end
    end
    local function vu169()
		-- upvalues: (ref) vu149, (ref) vu144, (ref) vu161, (ref) vu143, (ref) vu152, (ref) vu163, (ref) vu147
        while _G.AutoFarmNPC do
            task.wait(0.1)
            pcall(function()
				-- upvalues: (ref) vu149, (ref) vu144, (ref) vu161, (ref) vu143, (ref) vu152, (ref) vu163, (ref) vu147
                local vu164 = vu149(vu144.Character)
                if vu164 then
                    local vu165 = vu161()
                    if vu165 then
                        local vu166 = vu165:FindFirstChild("Humanoid")
                        if vu166 then
                            pcall(function()
								-- upvalues: (ref) vu166
                                local v167 = vu166
                                vu166.JumpPower = 0
                                v167.WalkSpeed = 0
                            end)
                        end
                        if vu165:FindFirstChild("HumanoidRootPart") then
                            pcall(function()
								-- upvalues: (ref) vu165
                                vu165.HumanoidRootPart.CanCollide = false
                            end)
                            pcall(function()
								-- upvalues: (ref) vu165
                                vu165.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                            end)
                        end
                        if vu165:FindFirstChild("Head") then
                            pcall(function()
								-- upvalues: (ref) vu165
                                vu165.Head.CanCollide = false
                            end)
                        end
                        if vu165:FindFirstChild("HumanoidRootPart") and vu164 then
                            pcall(function()
								-- upvalues: (ref) vu165, (ref) vu164
                                vu165.HumanoidRootPart.CFrame = vu164.CFrame * CFrame.new(0, 0, - 5)
                            end)
                        end
                        while true do
                            vu143.Heartbeat:Wait()
                            if not (vu165.Parent and vu152(vu165)) then
                                break
                            end
                            local v168 = vu165.HumanoidRootPart.Position
                            topos(CFrame.new(v168.X, v168.Y + 50, v168.Z))
                            pcall(function()
                                EquipWeapon(_G.Settings.Main["Selected Weapon"])
                            end)
                            pcall(function()
                                AutoHaki()
                            end)
                            if not (_G.AutoFarmNPC and (vu165.Parent and vu152(vu165))) then
                                break
                            end
                        end
                    else
                        vu163()
                        pcall(function()
							-- upvalues: (ref) vu147
                            topos(vu147)
                        end)
                        task.wait(1)
                    end
                end
            end)
        end
    end
end
_G.AutoFarmNPC = false
local v172 = game:GetService("Players")
local vu173 = game:GetService("RunService")
local vu174 = v172.LocalPlayer
local function vu176(p175)
    if p175 then
        p175 = p175:FindFirstChild("HumanoidRootPart")
    end
    return p175
end
local function vu179(p177)
    local v178 = p177:FindFirstChild("Humanoid")
    if v178 then
        v178 = v178.Health > 0
    end
    return v178
end
local function vu188()
	-- upvalues: (ref) vu176, (ref) vu174, (ref) vu179
    local v180 = vu176(vu174.Character)
    if v180 then
        local v181 = math.huge
        local v182, v183, v184 = ipairs(workspace.Enemies:GetChildren())
        local v185 = nil
        while true do
            local v186
            v184, v186 = v182(v183, v184)
            if v184 == nil then
                break
            end
            if vu176(v186) and vu179(v186) then
                local v187 = (v186.HumanoidRootPart.Position - v180.Position).Magnitude
                if v187 < v181 then
                    v185 = v186
                    v181 = v187
                end
            end
        end
        return v185
    end
end
local function vu197()
	-- upvalues: (ref) vu176, (ref) vu174
    local v189 = vu176(vu174.Character)
    if v189 then
        local v190 = math.huge
        local v191, v192, v193 = ipairs(workspace.Map:GetDescendants())
        local v194 = nil
        while true do
            local v195
            v193, v195 = v191(v192, v193)
            if v193 == nil then
                break
            end
            if v195:IsA("BasePart") then
                local v196 = (v195.Position - v189.Position).Magnitude
                if v196 < v190 then
                    v194 = v195
                    v190 = v196
                end
            end
        end
        return v194
    end
end
local function vu204()
	-- upvalues: (ref) vu176, (ref) vu174, (ref) vu188, (ref) vu173, (ref) vu179, (ref) vu197
    while _G.AutoFarmNPC do
        task.wait(0.1)
        pcall(function()
			-- upvalues: (ref) vu176, (ref) vu174, (ref) vu188, (ref) vu173, (ref) vu179, (ref) vu197
            local vu198 = vu176(vu174.Character)
            if vu198 then
                local vu199 = vu188()
                if vu199 then
                    local vu200 = vu199:FindFirstChild("Humanoid")
                    if vu200 then
                        pcall(function()
							-- upvalues: (ref) vu200
                            local v201 = vu200
                            vu200.JumpPower = 0
                            v201.WalkSpeed = 0
                        end)
                    end
                    if vu199:FindFirstChild("HumanoidRootPart") then
                        pcall(function()
							-- upvalues: (ref) vu199
                            vu199.HumanoidRootPart.CanCollide = false
                        end)
                        pcall(function()
							-- upvalues: (ref) vu199
                            vu199.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                        end)
                    end
                    if vu199:FindFirstChild("Head") then
                        pcall(function()
							-- upvalues: (ref) vu199
                            vu199.Head.CanCollide = false
                        end)
                    end
                    if vu199:FindFirstChild("HumanoidRootPart") and vu198 then
                        pcall(function()
							-- upvalues: (ref) vu199, (ref) vu198
                            vu199.HumanoidRootPart.CFrame = vu198.CFrame * CFrame.new(0, 0, - 5)
                        end)
                    end
                    while true do
                        vu173.Heartbeat:Wait()
                        if not (vu199.Parent and vu179(vu199)) then
                            break
                        end
                        local v202 = vu199.HumanoidRootPart.Position
                        topos(CFrame.new(v202.X, v202.Y + 50, v202.Z))
                        pcall(function()
                            EquipWeapon(_G.Settings.Main["Selected Weapon"])
                        end)
                        pcall(function()
                            AutoHaki()
                        end)
                        if not (_G.AutoFarmNPC and (vu199.Parent and vu179(vu199))) then
                            break
                        end
                    end
                else
                    local v203 = vu197()
                    if v203 then
                        topos(v203.CFrame + Vector3.new(0, 10, 0))
                    end
                    task.wait(1)
                end
            end
        end)
    end
end
if World3 then
    local vu242 = game:GetService("RunService")
    local vu243 = game:GetService("ReplicatedStorage")
    game:GetService("TweenService")
    local vu244 = game:GetService("Players").LocalPlayer
    local vu245 = workspace.Enemies
    local vu246 = 50
    local vu247 = CFrame.new(- 5515.08301, 343.112762, - 3013.25171, 0.0679906458, 0, - 0.997685969, 0, 1, 0, 0.997685969, 0, 0.0679906458)
    function topos(p248)
		-- upvalues: (ref) vu244
        local v249 = vu244.Character
        if v249 then
            v249 = vu244.Character:FindFirstChild("HumanoidRootPart")
        end
        if v249 then
            v249.CFrame = p248
        end
    end
    function AutoHaki()
		-- upvalues: (ref) vu244, (ref) vu243
        if not vu244.Character:FindFirstChild("HasBuso") then
            vu243.Remotes.CommF_:InvokeServer("Buso")
        end
    end
    function EquipMelee()
		-- upvalues: (ref) vu244
        if vu244.Backpack:FindFirstChild("Melee") then
            vu244.Character.Humanoid:EquipTool(vu244.Backpack.Melee)
        end
    end
    function UnEquipMelee()
		-- upvalues: (ref) vu244
        if vu244.Character:FindFirstChild("Melee") then
            vu244.Character:FindFirstChild("Melee").Parent = vu244.Backpack
        end
    end
    local function vu255()
		-- upvalues: (ref) vu245, (ref) vu247
        local v250 = vu245
        local v251, v252, v253 = pairs(v250:GetChildren())
        while true do
            local v254
            v253, v254 = v251(v252, v253)
            if v253 == nil then
                break
            end
            if v254:FindFirstChild("Humanoid") and (v254:FindFirstChild("HumanoidRootPart") and (v254.Humanoid.Health > 0 and (vu247.Position - v254.HumanoidRootPart.Position).Magnitude <= 2000)) then
                return v254
            end
        end
        return nil
    end
    spawn(function()
		-- upvalues: (ref) vu255, (ref) vu242, (ref) vu246, (ref) vu247
        while task.wait() do
            if _G.AutoPirateRaid then
                pcall(function()
					-- upvalues: (ref) vu255, (ref) vu242, (ref) vu246, (ref) vu247
                    local v257 = vu255()
                    if v257 then
                        repeat
                            vu242.Heartbeat:Wait()
                            AutoHaki()
                            EquipMelee()
                            Attack()
                            v257.HumanoidRootPart.CanCollide = false
                            v257.Humanoid.WalkSpeed = 0
                            v257.Humanoid.JumpPower = 0
                            v257.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                            local v258 = v257.HumanoidRootPart.Position
                            topos(CFrame.new(v258.X, v258.Y + vu246, v258.Z))
                        until not _G.AutoPirateRaid or (not v257.Parent or v257.Humanoid.Health <= 0)
                    else
                        topos(vu247)
                        UnEquipMelee()
                    end
                end)
            end
        end
    end)
end
if World1 then
    BossList = {
        "The Gorilla King",
        "Bobby",
        "Yeti",
        "Mob Leader",
        "Vice Admiral",
        "Warden",
        "Chief Warden",
        "Swan",
        "Magma Admiral",
        "Fishman Lord",
        "Wysper",
        "Thunder God",
        "Cyborg",
        "Saber Expert"
    }
elseif World2 then
    BossList = {
        "Diamond",
        "Jeremy",
        "Fajita",
        "Don Swan",
        "Smoke Admiral",
        "Cursed Captain",
        "Darkbeard",
        "Order",
        "Awakened Ice Admiral",
        "Tide Keeper"
    }
elseif World3 then
    BossList = {
        "Stone",
        "Island Empress",
        "Kilo Admiral",
        "Captain Elephant",
        "Beautiful Pirate",
        "rip_indra True Form",
        "Longma",
        "Soul Reaper",
        "Cake Queen"
    }
end
local vu259 = BossList[1]
_G.AutoFarmBoss = false
_G.AutoFarmAllBosses = false
local vu261 = 0
local function vu267(p262, p263, p264)
	-- upvalues: (ref) vu261
    vu261 = vu261 + math.rad(8)
    local v265 = p262.X + math.cos(vu261) * p263
    local v266 = p262.Z + math.sin(vu261) * p263
    return CFrame.new(v265, p262.Y + p264, v266)
end
local function vu276(pu268)
	-- upvalues: (ref) vu174, (ref) vu173, (ref) vu267, (ref) vu1
    while _G.AutoFarmBoss do
        task.wait(0.2)
        pcall(function()
			-- upvalues: (ref) vu174, (ref) pu268, (ref) vu173, (ref) vu267, (ref) vu1
            local v269 = vu174.Character
            if v269 then
                v269 = vu174.Character:FindFirstChild("HumanoidRootPart")
            end
            if not v269 then
                return
            end
            local v270, v271, v272 = pairs(workspace.Enemies:GetChildren())
            local v273 = nil
            while true do
                local v274
                v272, v274 = v270(v271, v272)
                if v272 == nil then
                    v274 = v273
                    break
                end
                if string.find(v274.Name, pu268) and (v274:FindFirstChild("HumanoidRootPart") and v274.Humanoid.Health > 0) then
                    break
                end
            end
            if v274 then
                v274.HumanoidRootPart.CanCollide = false
                v274.Humanoid.WalkSpeed = 0
                v274.Humanoid.JumpPower = 0
                v274.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                v274.HumanoidRootPart.CFrame = v269.CFrame * CFrame.new(0, 0, - 5)
                vu173.Heartbeat:Wait()
                EquipWeapon(_G.Settings.Main["Selected Weapon"])
                AutoHaki()
                local v275 = vu267(v274.HumanoidRootPart.Position, 20, 30)
                topos(v275)
                if not _G.AutoFarmBoss or (not v274.Parent or v274.Humanoid.Health <= 0) then
					-- goto l22
                end
            end
            task.wait(5)
			-- ::l22::
        end)
    end
end
local function vu288()
	-- upvalues: (ref) vu174, (ref) vu173, (ref) vu267, (ref) vu1
    while _G.AutoFarmAllBosses do
        task.wait(0.2)
        local vu277 = false
        pcall(function()
			-- upvalues: (ref) vu174, (ref) vu277, (ref) vu173, (ref) vu267
			-- block 35
            local v278 = vu174.Character
            if v278 then
                v278 = vu174.Character:FindFirstChild("HumanoidRootPart")
            end
            if not v278 then
                return
            end
            local v279, v280, v281 = pairs(workspace.Enemies:GetChildren())
			-- ::l7::
            local v282
            v281, v282 = v279(v280, v281)
            if v281 == nil or not _G.AutoFarmAllBosses then
                return
            end
            local v283, v284, v285 = ipairs(BossList)
			-- ::l13::
            local v286
            v285, v286 = v283(v284, v285)
            if v285 == nil then
				-- goto l7
            end
            if string.find(v282.Name, v286) and (v282:FindFirstChild("HumanoidRootPart") and v282.Humanoid.Health > 0) then
				-- goto l20
            else
				-- goto l13
            end
			-- ::l20::
            vu277 = true
            v282.HumanoidRootPart.CanCollide = false
            v282.Humanoid.WalkSpeed = 0
            v282.Humanoid.JumpPower = 0
            v282.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
            v282.HumanoidRootPart.CFrame = v278.CFrame * CFrame.new(0, 0, - 5)
			-- ::l31::
            vu173.Heartbeat:Wait()
            EquipWeapon(_G.Settings.Main["Selected Weapon"])
            AutoHaki()
            local v287 = vu267(v282.HumanoidRootPart.Position, 10, 50)
            topos(v287)
            if _G.FastAttack and rz_FastAttack then
                rz_FastAttack:BladeHits()
            end
            if _G.AutoFarmAllBosses and (v282.Parent and v282.Humanoid.Health > 0) then
				-- goto l31
            else
				-- goto l8
            end
			-- ::l8::
			-- goto l13
        end)
        if not vu277 then
            task.wait(5)
        end
    end
end
if World3 then
    task.spawn(function()
		-- upvalues: (ref) vu291
        while task.wait(0.5) do
            pcall(function()
				-- upvalues: (ref) vu291
                if game.ReplicatedStorage:FindFirstChild("Diablo") or (game.ReplicatedStorage:FindFirstChild("Deandre") or (game.ReplicatedStorage:FindFirstChild("Urban") or (workspace.Enemies:FindFirstChild("Diablo") or (workspace.Enemies:FindFirstChild("Deandre") or workspace.Enemies:FindFirstChild("Urban"))))) then
                    vu291:Set({
                        ["Desc"] = "\239\191\189\239\191\189 Elite Spawned!"
                    })
                else
                    vu291:Set({
                        ["Desc"] = "\239\191\189\239\191\189 Elite Not Spawned"
                    })
                end
            end)
        end
    end)
    task.spawn(function()
        while task.wait(0.5) do
            pcall(function()
                if _G.AutoEliteHop and _G.AutoEliteHunter and not (workspace.Enemies:FindFirstChild("Diablo") or (workspace.Enemies:FindFirstChild("Deandre") or workspace.Enemies:FindFirstChild("Urban"))) then
                    Hop()
                end
            end)
        end
    end)
    local vu295 = CFrame.new(- 5418.892578125, 313.74130249023, - 2826.2260742188)
    task.spawn(function()
		-- upvalues: (ref) vu295, (ref) vu173
        while task.wait(0.2) do
            if _G.AutoEliteHunter and World3 then
                pcall(function()
					-- upvalues: (ref) vu295, (ref) vu173
                    local v296 = game.Players.LocalPlayer
                    local v297 = v296.PlayerGui.Main.Quest
                    local v298 = v297.Container.QuestTitle.Title.Text
                    if not (workspace.Enemies:FindFirstChild("Diablo") or (workspace.Enemies:FindFirstChild("Deandre") or workspace.Enemies:FindFirstChild("Urban"))) then
						-- ::l7::
                        return
                    end
                    if not v297.Visible then
                        topos(vu295)
                        if (vu295.Position - v296.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter")
                        end
						-- goto l7
                    end
                    if not (v297.Visible and (string.find(v298, "Diablo") or (string.find(v298, "Deandre") or string.find(v298, "Urban")))) then
						-- goto l7
                    end
                    local v299, v300, v301 = pairs(workspace.Enemies:GetChildren())
					-- ::l21::
                    local v302
                    v301, v302 = v299(v300, v301)
                    if v301 == nil then
						-- goto l7
                    end
                    if v302.Name ~= "Diablo" and (v302.Name ~= "Deandre" and v302.Name ~= "Urban") or (not v302:FindFirstChild("Humanoid") or (not v302:FindFirstChild("HumanoidRootPart") or v302.Humanoid.Health <= 0)) then
						-- goto l21
                    end
                    while true do
                        if true then
                            vu173.Heartbeat:Wait()
                            AutoHaki()
                            EquipWeapon("Melee")
                            v302.HumanoidRootPart.CanCollide = false
                            v302.Humanoid.WalkSpeed = 0
                            v302.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                            topos(v302.HumanoidRootPart.CFrame * Pos)
                            if _G.FastAttack and rz_FastAttack then
                                rz_FastAttack:BladeHits()
                            else
                                Attack()
                            end
                        end
                        if not _G.AutoEliteHunter or (v302.Humanoid.Health <= 0 or not v302.Parent) then
							-- goto l21
                        end
                    end
                end)
            end
        end
    end)
end
if World3 then
    local vu303 = game:GetService("RunService")
    local vu304 = game:GetService("ReplicatedStorage")
    game:GetService("TweenService")
    local vu305 = game:GetService("Players").LocalPlayer
    local vu306 = vu305.Character or vu305.CharacterAdded:Wait()
    local v307 = vu306
    local vu308 = vu306.WaitForChild(v307, "HumanoidRootPart")
    local vu309 = workspace:FindFirstChild("Enemies")
    CFrame.new(0, 50, 0)
    local vu310 = 300
    local vu311 = CFrame.new(- 9506.234, 172.1306, 6117.077)
    local vu312 = CFrame.new(- 9516.993, 172.0171, 6078.4653)
    local vu313 = nil
    spawn(function()
		-- upvalues: (ref) vu313, (ref) vu309, (ref) vu310
        while task.wait() do
            if vu313 and vu313:FindFirstChild("HumanoidRootPart") then
                local v314 = vu313.HumanoidRootPart.CFrame
                local v315 = vu309
                local v316, v317, v318 = pairs(v315:GetChildren())
                while true do
                    local v319
                    v318, v319 = v316(v317, v318)
                    if v318 == nil then
                        break
                    end
                    if v319:FindFirstChild("HumanoidRootPart") and (v319:FindFirstChild("Humanoid") and (v319.Humanoid.Health > 0 and (v319.HumanoidRootPart.Position - v314.Position).Magnitude <= vu310)) then
                        v319.HumanoidRootPart.CFrame = v314
                        v319.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                        v319.Humanoid.WalkSpeed = 0
                        v319.Humanoid.JumpPower = 0
                        v319.HumanoidRootPart.CanCollide = false
                        if v319:FindFirstChild("Head") then
                            v319.Head.CanCollide = false
                        end
                    end
                end
            end
        end
    end)
    local function vu320()
		-- upvalues: (ref) vu305, (ref) vu306
        if vu305.Backpack:FindFirstChild("Melee") then
            vu306.Humanoid:EquipTool(vu305.Backpack.Melee)
        end
    end
    local function vu321()
		-- upvalues: (ref) vu306, (ref) vu305
        if vu306:FindFirstChild("Melee") then
            vu306.Melee.Parent = vu305.Backpack
        end
    end
    local vu322 = "No Quest"
    task.spawn(function()
		-- upvalues: (ref) vu324
        while task.wait() do
            pcall(function()
				-- upvalues: (ref) vu324
                local v325 = GetCountMaterials("Bones")
                vu324:SetDesc("Bones Owned: " .. tostring(v325))
            end)
        end
    end)
    local function vu330(p328)
		-- upvalues: (ref) vu313, (ref) vu303, (ref) vu320
        if p328 and p328:FindFirstChild("HumanoidRootPart") then
            vu313 = p328
            local v329 = p328.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0)
            topos(v329)
            repeat
                vu303.Heartbeat:Wait()
                vu320()
                Attack()
            until not _G.AutoBoneFarm or (not p328.Parent or p328.Humanoid.Health <= 0)
        end
    end
    spawn(function()
		-- upvalues: (ref) vu309, (ref) vu322, (ref) vu305, (ref) vu312, (ref) vu308, (ref) vu304, (ref) vu330, (ref) vu311, (ref) vu321
        while task.wait(0.2) do
            if _G.AutoBoneFarm then
                pcall(function()
					-- upvalues: (ref) vu309, (ref) vu322, (ref) vu305, (ref) vu312, (ref) vu308, (ref) vu304, (ref) vu330, (ref) vu311, (ref) vu321
                    local v331 = nil
                    local v332 = workspace:FindFirstChild("Map")
                    if v332 then
                        v332 = workspace.Map:FindFirstChild("Haunted Castle")
                    end
                    local v333
                    if v332 then
                        if vu322 == "Quest" then
                            local v334 = vu305.PlayerGui.Main.Quest
                            if not (v334.Visible and string.find(v334.Container.QuestTitle.Title.Text, "Demonic Soul")) then
                                topos(vu312)
                                if (vu312.Position - vu308.Position).Magnitude <= 3 then
                                    vu304.Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1)
                                end
                            end
                        end
                        local v335 = vu309
                        local v336, v337, v338 = pairs(v335:GetChildren())
                        while true do
                            v338, v333 = v336(v337, v338)
                            if v338 == nil then
                                v333 = v331
                                break
                            end
                            if table.find({
                                "Reborn Skeleton",
                                "Living Zombie",
                                "Demonic Soul",
                                "Posessed Mummy"
                            }, v333.Name) and (v333:FindFirstChild("Humanoid") and v333.Humanoid.Health > 0) then
                                break
                            end
                        end
                    else
                        topos(CFrame.new(- 9514.83594, 147.241074, 5786.89453))
                        task.wait()
                        local v339 = vu309
                        local v340, v341, v342 = pairs(v339:GetChildren())
                        while true do
                            v342, v333 = v340(v341, v342)
                            if v342 == nil then
                                v333 = v331
                                break
                            end
                            if table.find({
                                "Reborn Skeleton",
                                "Living Zombie",
                                "Demonic Soul",
                                "Posessed Mummy"
                            }, v333.Name) and (v333:FindFirstChild("Humanoid") and v333.Humanoid.Health > 0) then
                                break
                            end
                        end
                    end
                    if v333 then
                        vu330(v333)
                    else
                        topos(vu311)
                        vu321()
                    end
                end)
            end
        end
    end)
    spawn(function()
		-- upvalues: (ref) vu304
        while task.wait(2) do
            if _G.AutoRandomSurprise then
                vu304.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
            end
        end
    end)
end
spawn(function()
	-- upvalues: (ref) vu110
    while task.wait() do
        if _G.AutoRandomSurprise then
            vu110.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
        end
    end
end)
if World3 then
    local _ = game:GetService("Players").LocalPlayer
    local vu343 = game:GetService("ReplicatedStorage")
    game:GetService("RunService")
    game:GetService("TweenService")
    game:GetService("Workspace"):FindFirstChild("Enemies")
    CFrame.new(0, 50, 0)
    CFrame.new(- 2091.9119, 70.0088, - 12142.8359)
    local vu344 = nil
    task.spawn(function()
		-- upvalues: (ref) vu343, (ref) vu345
        while task.wait() do
            pcall(function()
				-- upvalues: (ref) vu343, (ref) vu345
                local v346 = vu343.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                local v347 = string.len(v346)
                local v348 = nil
                if v347 == 88 then
                    v348 = string.sub(v346, 39, 41)
                elseif v347 == 87 then
                    v348 = string.sub(v346, 39, 40)
                elseif v347 == 86 then
                    v348 = string.sub(v346, 39, 39)
                end
                if v348 then
                    vu345:SetDesc("\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189 Remaining: " .. v348)
                else
                    vu345:SetDesc("\239\191\189\239\191\189 Spawned!")
                end
            end)
        end
    end)
    local v349 = game:GetService("Players")
    local vu350 = game:GetService("ReplicatedStorage")
    local vu351 = game:GetService("RunService")
    local vu352 = game:GetService("Workspace")
    local vu353 = v349.LocalPlayer
    local v354 = vu352
    local vu355 = vu352.WaitForChild(v354, "Enemies")
    local vu356 = CFrame.new(0, 50, 0)
    local vu357 = 300
    local vu358 = CFrame.new(- 2091.91, 70, - 12142.83)
    CFrame.new(0, 0, 0)
    local function vu359()
		-- upvalues: (ref) vu353, (ref) vu350
        if vu353.Character and not vu353.Character:FindFirstChild("HasBuso") then
            pcall(function()
				-- upvalues: (ref) vu350
                vu350.Remotes.CommF_:InvokeServer("Buso")
            end)
        end
    end
    local function vu361()
		-- upvalues: (ref) vu353
        local v360 = vu353.Backpack:FindFirstChild("Melee")
        if v360 and vu353.Character then
            vu353.Character.Humanoid:EquipTool(v360)
        end
    end
    local function vu363()
		-- upvalues: (ref) vu353
        local v362 = vu353.Character
        if v362 then
            v362 = vu353.Character:FindFirstChild("Melee")
        end
        if v362 then
            v362.Parent = vu353.Backpack
        end
    end
    task.spawn(function()
		-- upvalues: (ref) vu344, (ref) vu355, (ref) vu357
        while task.wait() do
            if vu344 and vu344:FindFirstChild("HumanoidRootPart") then
                local v364 = vu344.HumanoidRootPart.CFrame
                local v365 = vu355
                local v366, v367, v368 = pairs(v365:GetChildren())
                while true do
                    local v369
                    v368, v369 = v366(v367, v368)
                    if v368 == nil then
                        break
                    end
                    if v369:FindFirstChild("HumanoidRootPart") and (v369:FindFirstChild("Humanoid") and (v369.Humanoid.Health > 0 and (v369.HumanoidRootPart.Position - v364.Position).Magnitude <= vu357)) then
                        v369.HumanoidRootPart.CFrame = v364
                        v369.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                        v369.Humanoid.WalkSpeed = 0
                        v369.Humanoid.JumpPower = 0
                        v369.HumanoidRootPart.CanCollide = false
                        if v369:FindFirstChild("Head") then
                            v369.Head.CanCollide = false
                        end
                    end
                end
            end
        end
    end)
    local function vu380()
		-- upvalues: (ref) vu355, (ref) vu353
        local v370 = math.huge
        local v371 = vu355
        local v372, v373, v374 = pairs(v371:GetChildren())
        local v375 = nil
        while true do
            local v376
            v374, v376 = v372(v373, v374)
            if v374 == nil then
                break
            end
            local v377 = v376:FindFirstChild("HumanoidRootPart")
            local v378 = v376:FindFirstChild("Humanoid")
            if v377 and (v378 and (v378.Health > 0 and table.find({
                "Cookie Crafter",
                "Cake Guard",
                "Baking Staff",
                "Head Baker",
                "Cake Prince"
            }, v376.Name))) then
                local v379 = (vu353.Character.HumanoidRootPart.Position - v377.Position).Magnitude
                if v379 < v370 then
                    v375 = v376
                    v370 = v379
                end
            end
        end
        return v375
    end
    local function vu382(p381)
		-- upvalues: (ref) vu344, (ref) vu351, (ref) vu359, (ref) vu361, (ref) vu356, (ref) vu350, (ref) vu363
        if p381 and p381:FindFirstChild("HumanoidRootPart") then
            vu344 = p381
            while _G.AutoKatakuri and (p381.Parent and (p381:FindFirstChild("Humanoid") and p381.Humanoid.Health > 0)) do
                vu351.Heartbeat:Wait()
                vu359()
                vu361()
                topos(p381.HumanoidRootPart.CFrame * vu356)
                pcall(function()
					-- upvalues: (ref) vu350
                    vu350.Remotes.CommF_:InvokeServer("Attack")
                end)
            end
            vu363()
        end
    end
    task.spawn(function()
		-- upvalues: (ref) vu353, (ref) vu352, (ref) vu358, (ref) vu380, (ref) vu382, (ref) vu363
        while task.wait() do
            if _G.AutoKatakuri then
                pcall(function()
					-- upvalues: (ref) vu353, (ref) vu352, (ref) vu358, (ref) vu380, (ref) vu382, (ref) vu363
                    local v386 = vu353.Character
                    if v386 then
                        v386 = vu353.Character:FindFirstChild("HumanoidRootPart")
                    end
                    if v386 then
                        local v387 = vu352:FindFirstChild("Map")
                        if v387 then
                            v387 = v387:FindFirstChild("CakeLoaf")
                        end
                        if not v387 then
                            topos(vu358)
                            task.wait(0.5)
                        end
                        local v388 = vu380()
                        if v388 then
                            vu382(v388)
                        else
                            topos(vu358)
                            vu363()
                        end
                    end
                end)
            end
        end
    end)
    task.spawn(function()
		-- upvalues: (ref) vu350
        while task.wait() do
            if _G.AutoSpawnCakePrince then
                pcall(function()
					-- upvalues: (ref) vu350
                    vu350.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
                end)
            end
        end
    end)
    task.spawn(function()
		-- upvalues: (ref) vu355, (ref) vu344, (ref) vu382, (ref) vu358, (ref) vu363
        while task.wait() do
            if _G.AutoKillCakePrince then
                pcall(function()
					-- upvalues: (ref) vu355, (ref) vu344, (ref) vu382, (ref) vu358, (ref) vu363
                    local v389 = vu355
                    if v389 then
                        v389 = vu355:FindFirstChild("Cake Prince")
                    end
                    if v389 then
                        vu344 = v389
                        vu382(v389)
                        if v389:FindFirstChild("Humanoid") and v389.Humanoid:FindFirstChild("Animator") then
                            v389.Humanoid.Animator:Destroy()
                        end
                    else
                        topos(vu358)
                        vu363()
                    end
                end)
            end
        end
    end)
    if World2 then
        local vu390 = game:GetService("RunService")
        local vu391 = game:GetService("Players").LocalPlayer
        local vu392 = game:GetService("ReplicatedStorage")
        local function vu411(p393, p394)
			-- upvalues: (ref) vu391, (ref) vu390
            local v395 = p394 or 350
            local v396 = vu391.Character
            if v396 then
                v396 = vu391.Character:FindFirstChild("HumanoidRootPart")
            end
            if v396 then
                local v397, v398, v399 = pairs(vu391.Character:GetChildren())
                local v400 = {}
                while true do
                    local v401
                    v399, v401 = v397(v398, v399)
                    if v399 == nil then
                        break
                    end
                    if v401:IsA("BasePart") then
                        v400[v401] = v401.CanCollide
                        v401.CanCollide = false
                    end
                end
                local v402 = p393.Position - v396.Position
                local v403 = v402.Magnitude
                local v404 = v402.Unit
                while 1 < v403 and v396.Parent do
                    local v405 = vu390.Heartbeat:Wait()
                    local v406 = math.min(v395 * v405, v403)
                    v396.CFrame = v396.CFrame + v404 * v406
                    v404 = (p393.Position - v396.Position).Unit
                    v403 = (p393.Position - v396.Position).Magnitude
                end
                v396.CFrame = p393
                local v407, v408, v409 = pairs(v400)
                while true do
                    local v410
                    v409, v410 = v407(v408, v409)
                    if v409 == nil then
                        break
                    end
                    if v409 and v409.Parent then
                        v409.CanCollide = v410
                    end
                end
            end
        end
        task.spawn(function()
			-- upvalues: (ref) vu390, (ref) vu391, (ref) vu392, (ref) vu411, (ref) vu359
            while vu390.Heartbeat:Wait() do
                if _G.AutoRaceV2 then
                    pcall(function()
						-- upvalues: (ref) vu391, (ref) vu392, (ref) vu411, (ref) vu390, (ref) vu359
                        local v417 = vu391
                        if not v417.Data.Race:FindFirstChild("Evolved") then
                            local v418 = vu392.Remotes.CommF_:InvokeServer("Alchemist", "1")
                            if v418 == 0 then
                                local v419 = CFrame.new(- 2779.835, 72.966, - 3574.02)
                                vu411(v419)
                                if (v419.Position - v417.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                    task.wait(1.3)
                                    vu392.Remotes.CommF_:InvokeServer("Alchemist", "2")
                                end
                            elseif v418 == 1 then
                                if v417.Backpack:FindFirstChild("Flower 1") or v417.Character:FindFirstChild("Flower 1") then
                                    if v417.Backpack:FindFirstChild("Flower 2") or v417.Character:FindFirstChild("Flower 2") then
                                        if not (v417.Backpack:FindFirstChild("Flower 3") or v417.Character:FindFirstChild("Flower 3")) then
                                            if workspace.Enemies:FindFirstChild("Zombie") then
                                                local v420, v421, v422 = pairs(workspace.Enemies:GetChildren())
                                                while true do
                                                    local v423
                                                    v422, v423 = v420(v421, v422)
                                                    if v422 == nil then
                                                        break
                                                    end
                                                    if v423.Name == "Zombie" then
                                                        repeat
                                                            vu390.Heartbeat:Wait()
                                                            vu359()
                                                            EquipWeapon("Melee")
                                                            v423.HumanoidRootPart.CanCollide = false
                                                            v423.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                            vu411(v423.HumanoidRootPart.CFrame)
                                                            Attack()
                                                        until v417.Backpack:FindFirstChild("Flower 3") or (not v423.Parent or (v423.Humanoid.Health <= 0 or not _G.AutoRaceV2))
                                                    end
                                                end
                                            else
                                                vu411(CFrame.new(- 5685.923, 48.48, - 853.237))
                                            end
                                        end
                                    else
                                        vu411(workspace.Flower2.CFrame)
                                    end
                                else
                                    vu411(workspace.Flower1.CFrame)
                                end
                            elseif v418 == 2 then
                                vu392.Remotes.CommF_:InvokeServer("Alchemist", "3")
                            end
                        end
                    end)
                end
            end
        end)
        task.spawn(function()
			-- upvalues: (ref) vu390, (ref) vu391, (ref) vu392, (ref) vu411
            while vu390.Heartbeat:Wait() do
                if _G.AutoRaceV3 then
                    pcall(function()
						-- upvalues: (ref) vu391, (ref) vu392, (ref) vu411
                        local v424 = vu391
                        if not v424.Data.Race:FindFirstChild("Evolved") then
                            tostring(v424.Data.Race.Value)
                            if v424.Data.Beli.Value >= 2000000 then
                                _G.AutoKatakuri = false
                                local v425 = vu392.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
                                local v426 = CFrame.new(- 1990.71, 125.519, - 70.576)
                                if v425 == 0 then
                                    vu411(v426)
                                    if (v424.Character.HumanoidRootPart.Position - v426.Position).Magnitude <= 5 then
                                        vu392.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                                    end
                                elseif v425 ~= 1 and v425 == 2 then
                                    vu392.Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
                                end
                            end
                        end
                    end)
                end
            end
        end)
        task.spawn(function()
			-- upvalues: (ref) vu390, (ref) vu411
            while vu390.Heartbeat:Wait() do
                if _G.AutoSeabeasts then
                    pcall(function()
						-- upvalues: (ref) vu390, (ref) vu411
                        if workspace:FindFirstChild("SeaBeasts") then
                            local v427, v428, v429 = pairs(workspace.SeaBeasts:GetChildren())
                            while true do
                                local v430
                                v429, v430 = v427(v428, v429)
                                if v429 == nil then
                                    break
                                end
                                if CheckSeaBeast() then
                                    repeat
                                        vu390.Heartbeat:Wait()
                                        vu411(v430.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0))
                                        Skillaimbot = true
                                        AimBotSkillPosition = v430.HumanoidRootPart.Position
                                    until not _G.AutoSeabeasts or (not v430.Parent or (not v430:FindFirstChild("Humanoid") or v430.Humanoid.Health <= 0))
                                    Skillaimbot = false
                                end
                            end
                        end
                    end)
                end
            end
        end)
        task.spawn(function()
			-- upvalues: (ref) vu390
            while vu390.Heartbeat:Wait() do
                if _G.AutoMeleeSkill then
                    pcall(function()
                        local v431 = game:GetService("VirtualInputManager")
                        local v432, v433, v434 = ipairs({
                            "Z",
                            "X",
                            "C",
                            "V"
                        })
                        while true do
                            local v435
                            v434, v435 = v432(v433, v434)
                            if v434 == nil then
                                break
                            end
                            v431:SendKeyEvent(true, v435, false, game)
                            task.wait()
                            v431:SendKeyEvent(false, v435, false, game)
                        end
                    end)
                end
            end
        end)
    end
end
local vu436 = game:GetService("Players")
local vu437 = game:GetService("ReplicatedStorage")
local vu438 = game:GetService("Workspace")
local v439 = require(vu437:WaitForChild("Raids"))
local v440, v441, v442 = pairs(v439.raids)
local vu443 = vu1
local v444 = {}
while true do
    local v445
    v442, v445 = v440(v441, v442)
    if v442 == nil then
        break
    end
    table.insert(v444, v445)
end
local v446, v447, v448 = pairs(v439.advancedRaids)
while true do
    local v449
    v448, v449 = v446(v447, v448)
    if v448 == nil then
        break
    end
    table.insert(v444, v449)
end
local vu450 = v444[1] or ""
local vu454 = game:GetService("Players")
local vu455 = game:GetService("Workspace")
_G.AutoNextIsland = false
_G.Settings = _G.Settings or {}
_G.Settings.Setting = _G.Settings.Setting or {}
_G.Settings.Setting["Player Tween Speed"] = 350
function topos(pu456)
    task.spawn(function()
		-- upvalues: (ref) pu456
        pcall(function()
			-- upvalues: (ref) pu456
            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                game.Players.LocalPlayer.Character.Humanoid.Sit = true
            end
            local v457 = game:GetService("Players").LocalPlayer
            local vu458 = v457.Character
            local vu459 = vu458.HumanoidRootPart
            if v457:DistanceFromCharacter(pu456.Position) > 50 then
                if not vu458:FindFirstChild("Root") then
                    local v460 = Instance.new("Part", vu458)
                    v460.Size = Vector3.new(1, 0.5, 1)
                    v460.Name = "Root"
                    v460.Anchored = true
                    v460.Transparency = 1
                    v460.CanCollide = false
                    v460.CFrame = vu459.CFrame
                end
            else
                vu459.CFrame = pu456
                if vu458:FindFirstChild("Root") then
                    vu458.Root:Destroy()
                    wait()
                    topos(vu459.CFrame)
                    wait()
                end
                if vu458:FindFirstChild("Root") then
                    vu458.Root:Remove()
                end
            end
            local v461 = (vu459.Position - pu456.Position).Magnitude
            local vu462 = game:GetService("TweenService")
            local vu463 = TweenInfo.new(v461 / _G.Settings.Setting["Player Tween Speed"], Enum.EasingStyle.Linear)
            local v465, v466 = pcall(function()
				-- upvalues: (ref) vu462, (ref) vu458, (ref) vu463, (ref) pu456
                local v464 = {
                    ["CFrame"] = pu456
                }
                vu462:Create(vu458.Root, vu463, v464):Play()
            end)
            if _G.StopTween == true then
                tween:Cancel()
                _G.Clip = false
            end
            if not v465 then
                return v466
            end
            vu458.Root.CFrame = vu459.CFrame
            if v465 and vu458:FindFirstChild("Root") then
                pcall(function()
					-- upvalues: (ref) vu459, (ref) pu456, (ref) vu458
                    local v467 = (vu459.Position - pu456.Position).Magnitude
                    if v467 >= 50 then
                        task.spawn(function()
							-- upvalues: (ref) vu458, (ref) vu459
                            pcall(function()
								-- upvalues: (ref) vu458, (ref) vu459
                                if (vu458.Root.Position - vu459.Position).Magnitude <= 200 then
                                    vu459.CFrame = vu458.Root.CFrame
                                else
                                    vu458.Root.CFrame = vu459.CFrame
                                end
                            end)
                        end)
                    elseif 25 <= v467 and v467 < 40 then
                        vu459.CFrame = pu456
                    elseif v467 < 25 then
                        vu459.CFrame = pu456
                    end
                end)
            end
            return {
                ["Stop"] = function(_)
                    tween:Cancel()
                end
            }
        end)
    end)
end
task.spawn(function()
    while task.wait() do
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Root.CFrame
            if (game.Players.LocalPlayer.Character.Root.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1 then
                game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end)
    end
end)
local function vu472()
	-- upvalues: (ref) vu455
    local v468 = vu455:FindFirstChild("_WorldOrigin")
    if v468 then
        v468 = vu455._WorldOrigin:FindFirstChild("Locations")
    end
    if not v468 then
        return nil
    end
    local v469 = CFrame.new(0, 35, 0)
    for v470 = 5, 1, - 1 do
        local v471 = v468:FindFirstChild("Island " .. v470)
        if v471 then
            return v471.CFrame * v469
        end
    end
    return nil
end
spawn(function()
	-- upvalues: (ref) vu454, (ref) vu472
    while task.wait(0.2) do
        if _G.AutoNextIsland then
            local v473 = vu454.LocalPlayer.PlayerGui.Main.TopHUDList:FindFirstChild("RaidTimer")
            local vu474 = v473 and (v473.Visible and vu472())
            if vu474 then
                pcall(function()
					-- upvalues: (ref) vu474
                    topos(vu474)
                end)
            end
        end
    end
end)
_G.KillAura = false
spawn(function()
    local vu477 = game:GetService("Workspace")
    local function v484()
		-- upvalues: (ref) vu477
        local v478 = vu477:FindFirstChild("Enemies")
        if v478 then
            local v479, v480, v481 = pairs(v478:GetChildren())
            while true do
                local v482
                v481, v482 = v479(v480, v481)
                if v481 == nil then
                    break
                end
                local v483 = v482:FindFirstChildOfClass("Humanoid")
                if v483 and v483.Health > 0 then
                    v483.Health = 0
                end
            end
        end
    end
    while true do
        repeat
            wait(0.2)
        until _G.KillAura
        pcall(v484)
    end
end)
local vu485 = game:GetService("Players")
local vu486 = game:GetService("ReplicatedStorage")
local vu487 = game:GetService("Workspace")
spawn(function()
	-- upvalues: (ref) vu486
    while task.wait(0.2) do
        if _G.Settings.Raid["Auto Awaken"] then
            pcall(function()
				-- upvalues: (ref) vu486
                vu486.Remotes.CommF_:InvokeServer("Awakener", "Awaken")
            end)
        end
    end
end)
local function vu500()
	-- upvalues: (ref) vu485
    local v491 = vu485.LocalPlayer
    local v492, v493, v494 = pairs(v491.Backpack:GetChildren())
    while true do
        local v495
        v494, v495 = v492(v493, v494)
        if v494 == nil then
            break
        end
        if string.find(v495.Name, "Fruit") then
            return true
        end
    end
    local v496, v497, v498 = pairs(v491.Character:GetChildren())
    while true do
        local v499
        v498, v499 = v496(v497, v498)
        if v498 == nil then
            break
        end
        if string.find(v499.Name, "Fruit") then
            return true
        end
    end
    return false
end
spawn(function()
	-- upvalues: (ref) vu486, (ref) vu500
    while task.wait(0.2) do
        if _G.Settings.Raid["Unstore Devil Fruit"] then
            pcall(function()
				-- upvalues: (ref) vu486, (ref) vu500
                local v501 = vu486.Remotes.CommF_:InvokeServer("getInventoryFruits")
                local v502, v503, v504 = pairs(v501)
                while true do
                    local v505
                    v504, v505 = v502(v503, v504)
                    if v504 == nil then
                        break
                    end
                    if v505.Price < (_G.Settings.Raid["Price Devil Fruit"] or 0) and not vu500() then
                        vu486.Remotes.CommF_:InvokeServer("LoadFruit", v505.Name)
                    end
                end
            end)
        end
    end
end)
spawn(function()
	-- upvalues: (ref) vu485, (ref) vu487, (ref) vu486
    while task.wait(0.2) do
        if _G.Settings.Raid["Auto Dungeon"] then
            local v506 = vu485.LocalPlayer
            local v507 = v506.PlayerGui.Main.TopHUDList:FindFirstChild("RaidTimer")
            local v508 = v506.Backpack:FindFirstChild("Special Microchip") or v506.Character:FindFirstChild("Special Microchip")
            if v507 and not v507.Visible and (not vu487.Map.RaidMap:FindFirstChild("RaidIsland1") and v508) then
                if World2 then
                    fireclickdetector(vu487.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif World3 then
                    pcall(function()
						-- upvalues: (ref) vu486, (ref) vu487
                        vu486.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 5083.26, 314.6, - 3175.67))
                        fireclickdetector(vu487.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                    end)
                end
            end
        end
    end
end)
if World3 then
    local vu518 = game:GetService("ReplicatedStorage")
    local vu519 = game:GetService("RunService")
    local vu520 = game:GetService("Players").LocalPlayer
    _G.AutoFarmBlazeEmber = false
    _G.AutoCollectBlazeEmber = false
    _G.OnBlzeQuest = false
    _G.BlazeEmberQuest = nil
    local function vu522()
		-- upvalues: (ref) vu518
        local v521 = vu518.Modules.Net["RF/DragonHunter"]:InvokeServer({
            ["Context"] = "Check"
        })
        if v521 then
            v521 = v521.Text
        end
        return v521
    end
    local function vu523()
		-- upvalues: (ref) vu518
        return vu518.Modules.Net["RF/DragonHunter"]:InvokeServer({
            ["Context"] = "RequestQuest"
        })
    end
    local function vu525()
		-- upvalues: (ref) vu518
        local v524 = vu518.Modules.Net["RF/DragonHunter"]:InvokeServer({
            ["Context"] = "Check"
        })
        if v524 and v524.Text then
            return string.find(v524.Text, "Venomous Assailant") or (string.find(v524.Text, "Hydra Enforcer") or string.find(v524.Text, "Destroy 10 trees"))
        else
            return false
        end
    end
    local function vu527()
		-- upvalues: (ref) vu522
        local v526 = vu522()
        if v526 then
            if string.find(v526, "Venomous Assailant") then
                _G.BlazeEmberQuest = "Venomous Assailant"
            elseif string.find(v526, "Hydra Enforcer") then
                _G.BlazeEmberQuest = "Hydra Enforcer"
            elseif string.find(v526, "Destroy 10 trees") then
                _G.BlazeEmberQuest = "Destroy 10 trees"
            end
        end
    end
    local function vu536()
		-- upvalues: (ref) vu520
        local v528, v529, v530 = pairs(vu520.PlayerGui.Notifications:GetChildren())
        while true do
            local v531
            v530, v531 = v528(v529, v530)
            if v530 == nil then
                break
            end
            local v532, v533, v534 = pairs(v531:GetChildren())
            while true do
                local v535
                v534, v535 = v532(v533, v534)
                if v534 == nil then
                    break
                end
                if v535:IsA("TextLabel") and (string.find(v535.Text, "Task completed!") or string.find(v535.Text, "Head back to the Dojo")) then
                    return true
                end
            end
        end
        return false
    end
    local function vu538()
		-- upvalues: (ref) vu520
        local v537 = workspace:FindFirstChild("EmberTemplate")
        if v537 and (v537:FindFirstChild("Part") and vu520.Character) and vu520.Character:FindFirstChild("HumanoidRootPart") then
            vu520.Character.HumanoidRootPart.CFrame = v537.Part.CFrame
        end
    end
    task.spawn(function()
		-- upvalues: (ref) vu525, (ref) vu523, (ref) vu527
        while task.wait(0.2) do
            if _G.AutoFarmBlazeEmber then
                pcall(function()
					-- upvalues: (ref) vu525, (ref) vu523, (ref) vu527
                    if not (_G.OnBlzeQuest or vu525()) then
                        topos(CFrame.new(5864.86377, 1209.55066, 812.775024))
                        vu523()
                    end
                    vu527()
                    _G.OnBlzeQuest = true
                end)
            end
        end
    end)
    task.spawn(function()
		-- upvalues: (ref) vu536
        while task.wait(0.2) do
            if vu536() then
                _G.OnBlzeQuest = false
            end
        end
    end)
    local function vu542(p539, p540)
		-- upvalues: (ref) vu519
        local v541 = workspace.Enemies:FindFirstChild(p539)
        if v541 then
            repeat
                vu519.Heartbeat:Wait()
                AutoHaki()
                EquipWeapon("Melee")
                v541.HumanoidRootPart.CanCollide = false
                v541.Humanoid.WalkSpeed = 0
                v541.Head.CanCollide = false
                v541.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                topos(v541.HumanoidRootPart.CFrame)
                Attack()
            until not v541.Parent or (v541.Humanoid.Health <= 0 or not (_G.AutoFarmBlazeEmber and _G.OnBlzeQuest))
        else
            topos(p540)
        end
    end
    local function vu549()
		-- upvalues: (ref) vu520
        local v543 = {
            CFrame.new(5260.28223, 1004.24329, 347.062622),
            CFrame.new(5237.94775, 1004.24329, 429.596344),
            CFrame.new(5320.87793, 1004.24329, 439.152954),
            CFrame.new(5346.70752, 1004.24329, 359.389008)
        }
        local v544 = vu520.Character
        if v544 then
            v544 = vu520.Character:FindFirstChild("HumanoidRootPart")
        end
        if v544 then
            local v545, v546, v547 = ipairs(v543)
            while true do
                local v548
                v547, v548 = v545(v546, v547)
                if v547 == nil then
                    break
                end
                if (v544.Position - v548.Position).Magnitude > 3 then
                    topos(v548)
                else
                    useAllSkill()
                end
            end
        end
    end
    task.spawn(function()
		-- upvalues: (ref) vu542, (ref) vu549
        while task.wait(0.2) do
            if _G.AutoFarmBlazeEmber and _G.OnBlzeQuest then
                if _G.BlazeEmberQuest ~= "Venomous Assailant" then
                    if _G.BlazeEmberQuest ~= "Hydra Enforcer" then
                        if _G.BlazeEmberQuest == "Destroy 10 trees" then
                            vu549()
                        end
                    else
                        vu542("Hydra Enforcer", CFrame.new(4789.29639, 1078.59082, 962.764099))
                    end
                else
                    vu542("Venomous Assailant", CFrame.new(4789.29639, 1078.59082, 962.764099))
                end
            end
        end
    end)
    task.spawn(function()
		-- upvalues: (ref) vu538
        while task.wait(0.5) do
            if _G.AutoCollectBlazeEmber then
                pcall(vu538)
            end
        end
    end)
end
local vu552 = game:GetService("ReplicatedStorage")
game:GetService("Workspace")
local _ = game:GetService("Players").LocalPlayer
local _ = ({
    ["Player Tween Speed"] = 350
})["Player Tween Speed"]
local vu553 = game:GetService("TweenService")
local vu554 = game:GetService("Players").LocalPlayer
function topos(p555)
	-- upvalues: (ref) vu554, (ref) vu553
    local v556 = vu554.Character
    if v556 and v556:FindFirstChild("HumanoidRootPart") then
        local v557 = v556.HumanoidRootPart
        local v558 = v556:FindFirstChild("Root")
        if not v558 then
            v558 = Instance.new("Part")
            v558.Size = Vector3.new(1, 0.5, 1)
            v558.Anchored = true
            v558.CanCollide = false
            v558.Transparency = 1
            v558.Name = "Root"
            v558.Parent = v556
            v558.CFrame = v557.CFrame
        end
        local v559 = (v558.Position - p555.Position).Magnitude
        local v560 = _G.Settings.Setting["Player Tween Speed"] or 50
        local v561 = vu553:Create(v558, TweenInfo.new(v559 / v560, Enum.EasingStyle.Linear), {
            ["CFrame"] = p555
        })
        v561:Play()
        v561.Completed:Wait()
        v557.CFrame = v558.CFrame
    end
end
local v562 = World1 and {
    "WindMill",
    "Marine",
    "Middle Town",
    "Jungle",
    "Pirate Village",
    "Desert",
    "Snow Island",
    "MarineFord",
    "Colosseum",
    "Sky Island 1",
    "Sky Island 2",
    "Sky Island 3",
    "Prison",
    "Magma Village",
    "Under Water Island",
    "Fountain City",
    "Shank Room",
    "Mob Island"
} or (World2 and {
    "The Cafe",
    "Frist Spot",
    "Dark Area",
    "Flamingo Mansion",
    "Flamingo Room",
    "Green Zone",
    "Factory",
    "Colossuim",
    "Zombie Island",
    "Two Snow Mountain",
    "Punk Hazard",
    "Cursed Ship",
    "Ice Castle",
    "Forgotten Island",
    "Ussop Island",
    "Mini Sky Island"
} or (World3 and {
    "Mansion",
    "Port Town",
    "Great Tree",
    "Castle On The Sea",
    "MiniSky",
    "Hydra Island",
    "Floating Turtle",
    "Haunted Castle",
    "Ice Cream Island",
    "Peanut Island",
    "Cake Island",
    "Cocoa Island",
    "Candy Island",
    "Tiki Outpost",
    "Dragon Dojo"
} or {}))
local v566 = World1 and {
    "Random Devil Fruit",
    "Blox Fruits Dealer",
    "Remove Devil Fruit",
    "Ability Teacher",
    "Dark Step",
    "Electro",
    "Fishman Karate"
} or (World2 and {
    "Dargon Berath",
    "Mtsterious Man",
    "Mysterious Scientist",
    "Awakening Expert",
    "Nerd",
    "Bar Manager",
    "Blox Fruits Dealer",
    "Trevor",
    "Enhancement Editor",
    "Pirate Recruiter",
    "Marines Recruiter",
    "Chemist",
    "Cyborg",
    "Ghoul Mark",
    "Guashiem",
    "El Admin",
    "El Rodolfo",
    "Arowe"
} or (World3 and {
    "Blox Fruits Dealer",
    "Remove Devil Fruit",
    "Horned Man",
    "Hungey Man",
    "Previous Hero",
    "Butler",
    "Lunoven",
    "Trevor",
    "Elite Hunter",
    "Player Hunter",
    "Uzoth"
} or {}))
local vu599 = game:GetService("Players").LocalPlayer
local vu600 = HumanModCons or {}
local function vu602(p601)
    p601.UseJumpPower = false
    p601.JumpHeight = nil
end
local vu606 = game:GetService("RunService")
local vu607 = game:GetService("Players").LocalPlayer
local vu608 = nil
local vu636 = game:GetService("Players")
game:GetService("RunService")
local vu637 = vu636.LocalPlayer
local vu638 = {}
local vu639 = false
local vu640 = 0.5
local vu641 = 0
local function vu643(p642)
    if p642.Team and p642.Team.Name == "Pirates" then
        return Color3.fromRGB(255, 0, 0)
    elseif p642.Team and p642.Team.Name == "Marines" then
        return Color3.fromRGB(0, 255, 255)
    elseif p642.Team and p642.Team.Name == "Lobby" then
        return Color3.fromRGB(255, 255, 255)
    else
        return Color3.fromRGB(255, 70, 70)
    end
end
local function vu645(p644)
    return math.floor(tonumber(p644) + 0.5)
end
local function vu647(p646)
    return tostring(p646):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
end
local function vu659(p648, p649)
	-- upvalues: (ref) vu637, (ref) vu645, (ref) vu647
    if p648.Character then
        local v650 = p648.Character:FindFirstChild("Head")
        if v650 then
            local v651 = v650:FindFirstChild("Nametag")
            if not v651 then
                v651 = Instance.new("BillboardGui")
                v651.Name = "Nametag"
                v651.Adornee = v650
                v651.Size = UDim2.new(0, 220, 0, 70)
                v651.AlwaysOnTop = true
                v651.StudsOffset = Vector3.new(0, 2.5, 0)
                v651.Parent = v650
                local v652 = Instance.new("TextLabel")
                v652.Name = "Info"
                v652.Size = UDim2.new(1, 0, 1, 0)
                v652.BackgroundTransparency = 1
                v652.Font = Enum.Font.GothamBold
                v652.TextStrokeTransparency = 0.1
                v652.TextScaled = true
                v652.Parent = v651
            end
            v651.Info.TextColor3 = p649
            local v653 = p648.Name
            if p648.Team and p648.Team.Name == "Killer" then
                v653 = p648.Name .. " | Killer"
            elseif vu637.Character and vu637.Character:FindFirstChild("Head") then
                local v654 = (vu637.Character.Head.Position - v650.Position).Magnitude
                v653 = string.format("%s | %dm", p648.Name, vu645(v654))
            end
            local v655 = p648:FindFirstChild("Data")
            if v655 then
                local v656 = v655:FindFirstChild("Beli")
                local v657 = v655:FindFirstChild("Level")
                if v656 then
                    v653 = v653 .. string.format(" | Beli: %s", vu647(v656.Value))
                end
                if v657 then
                    v653 = v653 .. string.format(" | Lv: %s", tostring(v657.Value))
                end
            end
            local v658 = p648.Character:FindFirstChildOfClass("Tool")
            if v658 then
                v653 = v653 .. string.format(" | [%s]", v658.Name)
            end
            v651.Info.Text = v653
        end
    else
        return
    end
end
local function vu663(p660)
	-- upvalues: (ref) vu637, (ref) vu639, (ref) vu638, (ref) vu643, (ref) vu640, (ref) vu641, (ref) vu659
    if p660 ~= vu637 then
        if vu639 then
            if vu638[p660] then
                vu638[p660]:Destroy()
                vu638[p660] = nil
            end
            if p660.Character then
                local v661 = vu643(p660)
                local v662 = Instance.new("Highlight")
                v662.Adornee = p660.Character
                v662.FillColor = v661
                v662.FillTransparency = vu640
                v662.OutlineTransparency = vu641
                v662.OutlineColor = v661
                v662.Parent = workspace
                vu638[p660] = v662
                vu659(p660, v661)
            end
        end
    else
        return
    end
end
local function vu666(p664)
	-- upvalues: (ref) vu638
    if vu638[p664] then
        vu638[p664]:Destroy()
        vu638[p664] = nil
    end
    local v665 = p664.Character and (p664.Character:FindFirstChild("Head") and p664.Character.Head:FindFirstChild("Nametag"))
    if v665 then
        v665:Destroy()
    end
end
local function vu672()
	-- upvalues: (ref) vu636, (ref) vu637, (ref) vu666
    local v667 = vu636
    local v668, v669, v670 = ipairs(v667:GetPlayers())
    while true do
        local v671
        v670, v671 = v668(v669, v670)
        if v670 == nil then
            break
        end
        if v671 ~= vu637 then
            vu666(v671)
        end
    end
end
local function v675(pu673)
	-- upvalues: (ref) vu637, (ref) vu663, (ref) vu666
    if pu673 ~= vu637 then
        if pu673.Character then
            vu663(pu673)
        end
        pu673.CharacterAdded:Connect(function()
			-- upvalues: (ref) vu663, (ref) pu673
            task.wait(0.1)
            vu663(pu673)
        end)
        pu673.AncestryChanged:Connect(function(_, p674)
			-- upvalues: (ref) vu666, (ref) pu673
            if not p674 then
                vu666(pu673)
            end
        end)
    end
end
local v676 = vu636
local v677, v678, v679 = ipairs(vu636.GetPlayers(v676))
local vu680 = vu638
local vu681 = vu659
local vu682 = vu643
local vu683 = vu637
local vu684 = vu639
local v685 = vu666
local vu686 = vu636
local vu687 = vu663
while true do
    local v688
    v679, v688 = v677(v678, v679)
    if v679 == nil then
        break
    end
    v675(v688)
end
vu686.PlayerAdded:Connect(v675)
vu686.PlayerRemoving:Connect(v685)
task.spawn(function()
	-- upvalues: (ref) vu684, (ref) vu686, (ref) vu683, (ref) vu682, (ref) vu681, (ref) vu680
    while true do
        repeat
            task.wait()
        until vu684
        local v689 = vu686
        local v690, v691, v692 = ipairs(v689:GetPlayers())
        while true do
            local v693
            v692, v693 = v690(v691, v692)
            if v692 == nil then
                break
            end
            if v693 ~= vu683 and v693.Character then
                local v694 = vu682(v693)
                vu681(v693, v694)
                if vu680[v693] then
                    vu680[v693].FillColor = v694
                    vu680[v693].OutlineColor = v694
                end
            end
        end
    end
end)
local vu701 = true
local vu748 = game:GetService("Players")
local vu749 = vu748.LocalPlayer
local vu750 = game:GetService("TweenService")
local vu751 = game:GetService("RunService")
local vu752 = 350
local function vu758(p753)
	-- upvalues: (ref) vu749, (ref) vu752, (ref) vu750
    local v754 = vu749.Character
    if v754 then
        v754 = vu749.Character:FindFirstChild("HumanoidRootPart")
    end
    if v754 and p753 then
        local v755 = (v754.Position - p753.Position).Magnitude
        local v756 = math.max(v755 / vu752, 0.05)
        local v757 = vu750:Create(v754, TweenInfo.new(v756, Enum.EasingStyle.Linear), {
            ["CFrame"] = p753.CFrame + Vector3.new(0, 3, 0)
        })
        v757:Play()
        v757.Completed:Wait()
    end
end
local function vu765()
	-- upvalues: (ref) vu748, (ref) vu749
    local v759 = vu748
    local v760, v761, v762 = ipairs(v759:GetPlayers())
    local v763 = {}
    while true do
        local v764
        v762, v764 = v760(v761, v762)
        if v762 == nil then
            break
        end
        if v764 ~= vu749 then
            table.insert(v763, v764.Name)
        end
    end
    return v763
end
local vu766 = nil
local vu773 = false
local vu776 = false
local vu779 = false
spawn(function()
	-- upvalues: (ref) vu779, (ref) vu766, (ref) vu748, (ref) vu751, (ref) vu758, (ref) vu749
    while task.wait(0.2) do
        if vu779 and vu766 and vu748:FindFirstChild(vu766) then
            local vu781 = vu748[vu766].Character
            if vu781 and (vu781:FindFirstChild("Humanoid") and vu781.Humanoid.Health > 0) then
                repeat
                    vu751.Heartbeat:Wait()
                    EquipWeapon(_G.Settings.Main["Selected Weapon"])
                    Attack()
                    AutoHaki()
                    vu781.HumanoidRootPart.CanCollide = false
                    vu758(vu781.HumanoidRootPart)
                    spawn(function()
						-- upvalues: (ref) vu781, (ref) vu749
                        pcall(function()
							-- upvalues: (ref) vu781, (ref) vu749
                            if _G.Settings.Main["Selected Weapon"] ~= SelectWeaponGun then
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                            else
                                local v782 = {
                                    vu781.HumanoidRootPart.Position,
                                    vu781.HumanoidRootPart
                                }
                                vu749.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(v782))
                            end
                        end)
                    end)
                until not vu779 or (not vu748:FindFirstChild(vu766) or vu781.Humanoid.Health <= 0)
            end
        end
    end
end)
local vu783 = game:GetService("Players")
local vu784 = vu783.LocalPlayer
local v785 = game:GetService("RunService")
_G.Settings = _G.Settings or {}
_G.Settings.Combat = _G.Settings.Combat or {}
local function vu786()
    if type(getgenv) == "function" and type(getgenv().SaveSetting) == "function" then
        pcall(getgenv().SaveSetting)
    end
end
local vu787 = nil
local vu788 = nil
spawn(function()
	-- upvalues: (ref) vu784, (ref) vu787, (ref) vu783
    while task.wait(0.2) do
        pcall(function()
			-- upvalues: (ref) vu784, (ref) vu787, (ref) vu783
            if vu784 and vu784.Character and vu784.Character:FindFirstChild("HumanoidRootPart") then
                local v789 = vu784.Character.HumanoidRootPart
                local v790 = math.huge
                local v791 = vu783
                local v792, v793, v794 = ipairs(v791:GetPlayers())
                local v795 = nil
                while true do
                    local v796
                    v794, v796 = v792(v793, v794)
                    if v794 == nil then
                        break
                    end
                    if v796 ~= vu784 and v796.Character and v796.Character:FindFirstChild("HumanoidRootPart") then
                        local v797 = (v796.Character.HumanoidRootPart.Position - v789.Position).Magnitude
                        if v797 < v790 then
                            v795 = v796.Name
                            v790 = v797
                        end
                    end
                end
                vu787 = v795
            else
                vu787 = nil
            end
        end)
    end
end)
spawn(function()
	-- upvalues: (ref) vu784, (ref) vu788, (ref) vu783
    while task.wait(0.2) do
        pcall(function()
			-- upvalues: (ref) vu784, (ref) vu788, (ref) vu783
            if vu784 and vu784.Character and vu784.Character:FindFirstChild("HumanoidRootPart") then
                local v798 = vu784.Character.HumanoidRootPart
                local v799 = math.huge
                local v800 = vu783
                local v801, v802, v803 = ipairs(v800:GetPlayers())
                local v804 = nil
                while true do
                    local v805
                    v803, v805 = v801(v802, v803)
                    if v803 == nil then
                        break
                    end
                    if v805 ~= vu784 and v805.Character and v805.Character:FindFirstChild("HumanoidRootPart") then
                        local v806 = (v805.Character.HumanoidRootPart.Position - v798.Position).Magnitude
                        if v806 < v799 then
                            v804 = v805.Name
                            v799 = v806
                        end
                    end
                end
                vu788 = v804
            else
                vu788 = nil
            end
        end)
    end
end)
spawn(function()
	-- upvalues: (ref) vu787, (ref) vu783, (ref) vu784
    while task.wait(0.12) do
        pcall(function()
			-- upvalues: (ref) vu787, (ref) vu783, (ref) vu784
            if _G.Settings and (_G.Settings.Combat and _G.Settings.Combat["Aimbot Gun"]) then
                local v807 = vu787
                if v807 then
                    local v808 = vu783:FindFirstChild(v807)
                    if v808 and v808.Character then
                        local vu809 = v808.Character:FindFirstChild("HumanoidRootPart")
                        if vu809 then
                            if vu784 and vu784.Character then
                                local vu810 = vu784.Character:FindFirstChild(SelectWeaponGun)
                                if vu810 and (vu810:FindFirstChild("Cooldown") and vu810:FindFirstChild("RemoteFunctionShoot")) then
                                    pcall(function()
										-- upvalues: (ref) vu810, (ref) vu809
                                        vu810.Cooldown.Value = 0
                                        vu810.RemoteFunctionShoot:InvokeServer(vu809.Position, vu809)
                                        local v811 = game:GetService("VirtualUser")
                                        v811:CaptureController()
                                        v811:Button1Down(Vector2.new(1280, 672))
                                    end)
                                end
                            end
                        end
                    else
                        return
                    end
                else
                    return
                end
            else
                return
            end
        end)
    end
end)
v785.RenderStepped:Connect(function()
	-- upvalues: (ref) vu788, (ref) vu783, (ref) vu784
    pcall(function()
		-- upvalues: (ref) vu788, (ref) vu783, (ref) vu784
        if _G.Settings and (_G.Settings.Combat and _G.Settings.Combat["Aimbot Skill Nearest"]) then
            local v812 = vu788
            if v812 then
                local v813 = vu783:FindFirstChild(v812)
                if v813 and v813.Character then
                    local vu814 = v813.Character:FindFirstChild("HumanoidRootPart")
                    if vu814 then
                        if vu784 and vu784.Character then
                            local vu815 = vu784.Character:FindFirstChildOfClass("Tool")
                            if vu815 and (vu815:FindFirstChild("MousePos") and vu815:FindFirstChild("RemoteEvent")) then
                                pcall(function()
									-- upvalues: (ref) vu815, (ref) vu814
                                    vu815.RemoteEvent:FireServer(vu814.Position)
                                end)
                            end
                        end
                    end
                else
                    return
                end
            else
                return
            end
        else
            return
        end
    end)
end)
spawn(function()
	-- upvalues: (ref) vu787, (ref) vu783, (ref) vu784
    while task.wait(0.2) do
        pcall(function()
			-- upvalues: (ref) vu787, (ref) vu783, (ref) vu784
            if _G.Settings and (_G.Settings.Combat and _G.Settings.Combat["Aimbot Skill"]) then
                if vu787 then
                    local v816 = vu783:FindFirstChild(vu787)
                    if v816 and v816.Character then
                        local vu817 = v816.Character:FindFirstChild("HumanoidRootPart")
                        if vu817 then
                            if vu784 and vu784.Character then
                                local vu818 = vu784.Character:FindFirstChildOfClass("Tool")
                                if vu818 and (vu818:FindFirstChild("MousePos") and vu818:FindFirstChild("RemoteEvent")) then
                                    pcall(function()
										-- upvalues: (ref) vu818, (ref) vu817
                                        vu818.RemoteEvent:FireServer(vu817.Position)
                                    end)
                                end
                            end
                        end
                    else
                        return
                    end
                else
                    return
                end
            else
                return
            end
        end)
    end
end)
spawn(function()
	-- upvalues: (ref) vu784
    while task.wait(0.5) do
        pcall(function()
			-- upvalues: (ref) vu784
            if _G.Settings and (_G.Settings.Combat and _G.Settings.Combat["Enable PvP"]) then
                local v819 = vu784 and vu784:FindFirstChild("PlayerGui")
                if v819 then
                    v819 = vu784.PlayerGui:FindFirstChild("Main")
                end
                if v819 and (v819.TopHUDList and (v819.PvpDisabled and v819.PvpDisabled.Visible)) then
                    pcall(function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end)
                end
            end
        end)
    end
end)
local vu824 = false
spawn(function()
	-- upvalues: (ref) vu824, (ref) vu784
    while task.wait() do
        if vu824 and vu784.Character and vu784.Character:FindFirstChild("Humanoid") then
            local v826 = vu784.Character.HumanoidRootPart.CFrame
            if vu784.Character.Humanoid.Health <= 2000 then
                task.wait()
                topos(v826 * CFrame.new(0, 10000, 0))
                if vu784.Character.Humanoid.Health < 5000 and vu824 then
                    break
                end
            end
        end
    end
end)
local v827 = game:GetService("Players")
local vu828 = game:GetService("ReplicatedStorage")
local vu829 = v827.LocalPlayer
task.spawn(function()
	-- upvalues: (ref) vu830, (ref) vu829
    while task.wait() do
        pcall(function()
			-- upvalues: (ref) vu830, (ref) vu829
            vu830:SetDesc("Stat Points: " .. tostring(vu829.Data.Points.Value))
        end)
    end
end)
local vu831 = false
local vu832 = false
local vu833 = false
local vu834 = false
local vu835 = false
local vu841 = 1
task.spawn(function()
	-- upvalues: (ref) vu829, (ref) vu841, (ref) vu831, (ref) vu828, (ref) vu832, (ref) vu833, (ref) vu834, (ref) vu835
    while task.wait() do
        if vu841 <= vu829.Data.Points.Value then
            if vu831 then
                pcall(function()
					-- upvalues: (ref) vu828, (ref) vu841
                    vu828.Remotes.CommF_:InvokeServer("AddPoint", "Melee", vu841)
                end)
            end
            if vu832 then
                pcall(function()
					-- upvalues: (ref) vu828, (ref) vu841
                    vu828.Remotes.CommF_:InvokeServer("AddPoint", "Defense", vu841)
                end)
            end
            if vu833 then
                pcall(function()
					-- upvalues: (ref) vu828, (ref) vu841
                    vu828.Remotes.CommF_:InvokeServer("AddPoint", "Sword", vu841)
                end)
            end
            if vu834 then
                pcall(function()
					-- upvalues: (ref) vu828, (ref) vu841
                    vu828.Remotes.CommF_:InvokeServer("AddPoint", "Gun", vu841)
                end)
            end
            if vu835 then
                pcall(function()
					-- upvalues: (ref) vu828, (ref) vu841
                    vu828.Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", vu841)
                end)
            end
        end
    end
end)
task.spawn(function()
	-- upvalues: (ref) vu843, (ref) vu829, (ref) vu844, (ref) vu845, (ref) vu846, (ref) vu847
    while task.wait() do
        pcall(function()
			-- upvalues: (ref) vu843, (ref) vu829, (ref) vu844, (ref) vu845, (ref) vu846, (ref) vu847
            vu843:SetDesc("Melee: " .. vu829.Data.Stats.Melee.Level.Value)
            vu844:SetDesc("Defense: " .. vu829.Data.Stats.Defense.Level.Value)
            vu845:SetDesc("Sword: " .. vu829.Data.Stats.Sword.Level.Value)
            vu846:SetDesc("Gun: " .. vu829.Data.Stats.Gun.Level.Value)
            vu847:SetDesc("Fruit: " .. vu829.Data.Stats["Demon Fruit"].Level.Value)
        end)
    end
end)
local vu848 = game:GetService("HttpService")
local vu849 = "WindUI"
makefolder(vu849)
local function vu854(p850, p851)
	-- upvalues: (ref) vu849, (ref) vu848
    local v852 = vu849 .. "/" .. p850 .. ".json"
    local v853 = vu848
    writefile(v852, v853:JSONEncode(p851))
end
local function vu857(p855)
	-- upvalues: (ref) vu849, (ref) vu848
    local v856 = vu849 .. "/" .. p855 .. ".json"
    if isfile(v856) then
        local _ = vu848.JSONDecode
        local _ = readfile
    end
end
local function vu864()
	-- upvalues: (ref) vu849
    local v858, v859, v860 = ipairs(listfiles(vu849))
    local v861 = {}
    while true do
        local v862
        v860, v862 = v858(v859, v860)
        if v860 == nil then
            break
        end
        local v863 = v862:match("([^/]+)%.json$")
        if v863 then
            table.insert(v861, v863)
        end
    end
    return v861
end
local v865, v866, v867 = pairs(vu443:GetThemes())
local vu868 = vu848
local v869 = {}
while true do
    local v870
    v867, v870 = v865(v866, v867)
    if v867 == nil then
        break
    end
    table.insert(v869, v867)
end
local vu874 = ""
local vu888 = vu443:GetCurrentTheme()
local v889 = vu443:GetThemes()
local vu890 = v889[vu888].Accent
local vu891 = v889[vu888].Outline
local vu892 = v889[vu888].Text
local vu893 = v889[vu888].Placeholder
local function vu894()
	-- upvalues: (ref) vu443, (ref) vu888, (ref) vu890, (ref) vu891, (ref) vu892, (ref) vu893