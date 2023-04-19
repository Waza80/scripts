-- Open Sourcely Given By Waza80#8017

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local BreakModel = function(Object)
    for i, Part in pairs(Object:GetChildren()) do
        if Part.Name == "Grounded" or Part.Name == "Part" then
            PartCFrame = Part.CFrame
            local args = {
                [1] = os.time(),
                [2] = game:GetService("ReplicatedStorage").Launchers.Launchers["Gold Launcher"].Tool.Stats,
                [3] = Vector3.new(PartCFrame.x, PartCFrame.y, PartCFrame.z),
                [4] = game:GetService("ReplicatedStorage").Launchers.Launchers["Gold Launcher"].Tool.Assets.Rocket.Boom
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("explodeRocket"):FireServer(unpack(args))
            if OrionLib.Flags["instantmode"].Value == false then
                wait(0.1)
            end
        end
    end
end

function TweenObject(obj, properties, duration, ...)
    game:GetService("TweenService"):Create(obj, TweenInfo.new(duration, ...), properties):Play()
end

local SpawnCount = 0
for i, v in pairs(workspace.Areas.Area12.Spawns:GetChildren()) do
    SpawnCount = SpawnCount + 1
end

if SpawnCount == 0 then
    TweenObject(game.Players.LocalPlayer.Character.HumanoidRootPart, {CFrame = workspace.BoardsForceLoad.ComingSoon.CFrame}, 0.5)
    wait(0.55)
    TweenObject(game.Players.LocalPlayer.Character.HumanoidRootPart, {CFrame = workspace.BoardsForceLoad.Area12.CFrame}, 1.5)
    wait(1.55)
    spawnSpotCFrame = workspace.ServerMap.spawnSpot.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(spawnSpotCFrame.x, spawnSpotCFrame.y + 10, spawnSpotCFrame.z)
end

local Window = OrionLib:MakeWindow(
    {
        Name = "Destruction Simulator (V1.6)", 
        HidePremium = true, 
        SaveConfig = false, 
        IntroEnabled = false
    }
)

local AreaTab = Window:MakeTab(
    {
        Name = "Areas",
        PremiumOnly = false
    }
)

AreaTab:AddDropdown(
    {
        Name = "Area",
        Options = {
            "Area1",
            "Area2",
            "Area3",
            "Area4",
            "Area5",
            "Area6",
            "Area7",
            "Area8",
            "Area9",
            "Area10",
            "Area11",
            "Area12",
            "Area13",
            "Area14",
            "Area15",
            "Area16",
        },
        Flag = "destroy-area"
    }
)

AreaTab:AddButton(
    {
        Name = "Destroy Area",
        Callback = function()
            if OrionLib.Flags["destroy-area"].Value == "..." then
                return OrionLib:MakeNotification(
                        {
                            Name = "No Area Chosen",
                            Content = "Please select an Area first!",
                            Time = 3
                        }
                    )
            end
            if workspace.BoardsForceLoad:FindFirstChild(OrionLib.Flags["destroy-area"].Value).SurfaceGui.OpenText.Visible == false then
                return OrionLib:MakeNotification(
                        {
                            Name = "Area Locked",
                            Content = "You didn't unlock this area yet.",
                            Time = 3
                        }
                    )
            end
            for i, v in pairs(workspace.Areas:FindFirstChild(OrionLib.Flags["destroy-area"].Value):GetChildren()) do
                if v.ClassName == "Folder" then
                    if v.Name == "Spawns" then
                        for j, Spawn in pairs(v:GetChildren()) do
                            TweenObject(game.Players.LocalPlayer.Character.HumanoidRootPart, {CFrame = Spawn.CFrame}, 0.8)
                            wait(0.85)
                            break
                        end
                    end
                end
                if v.ClassName == "Model" then
                    BreakModel(v)
                end
            end
        end
    }
)

AreaTab:AddButton(
    {
        Name = "Destroy All Areas ⚠️",
        Callback = function()
            for i, v in pairs(workspace.Areas:GetChildren()) do
                if v.ClassName == "Folder" then
                    if workspace.BoardsForceLoad:FindFirstChild(v.Name).SurfaceGui.OpenText.Visible == true then
                        for j, Area in pairs(v:GetChildren()) do
                            if Area.ClassName == "Folder" then
                                if Area.Name == "Spawns" then
                                    for k, Spawn in pairs(Area:GetChildren()) do
                                        TweenObject(game.Players.LocalPlayer.Character.HumanoidRootPart, {CFrame = Spawn.CFrame}, 0.8)
                                        wait(0.85)
                                        break
                                    end
                                end
                            end
                            if Area.ClassName == "Model" then
                                BreakModel(Area)
                            end
                        end
                    end
                end
            end
        end
    }
)

AreaTab:AddToggle(
    {
        Name = "Instant Mode ⚠️",
        Flag = "instantmode"
    }
)

local TeleportsTab = Window:MakeTab(
    {
        Name = "Teleports",
        PremiumOnly = false
    }
)

TeleportsTab:AddButton(
    {
        Name = "Teleport to Spawn",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.ServerMap.spawnSpot.CFrame.x, workspace.ServerMap.spawnSpot.CFrame.y + 5, workspace.ServerMap.spawnSpot.CFrame.z)
        end
    }
)

TeleportsTab:AddButton(
    {
        Name = "Teleport to Shop",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.ServerMap.shopSpot.CFrame.x, workspace.ServerMap.shopSpot.CFrame.y + 5, workspace.ServerMap.shopSpot.CFrame.z)
        end
    }
)

TeleportsTab:AddButton(
    {
        Name = "Teleport to Sell",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.ServerMap.sellSpot.CFrame.x, workspace.ServerMap.sellSpot.CFrame.y + 5, workspace.ServerMap.sellSpot.CFrame.z)
        end
    }
)

TeleportsTab:AddButton(
    {
        Name = "Teleport to LuckyBlock",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.ServerMap.luckySpot.CFrame.x, workspace.ServerMap.luckySpot.CFrame.y + 5, workspace.ServerMap.luckySpot.CFrame.z)
        end
    }
)

TeleportsTab:AddButton(
    {
        Name = "Teleport to LuckyBlock2",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.ServerMap.luckySpot2.CFrame.x, workspace.ServerMap.luckySpot2.CFrame.y + 5, workspace.ServerMap.luckySpot2.CFrame.z)
        end
    }
)

for i, v in pairs({"Area1", "Area2", "Area3", "Area4", "Area5", "Area6", "Area7", "Area8", "Area9", "Area10", "Area11", "Area12", "Area13", "Area14", "Area15", "Area16"}) do
    TeleportsTab:AddButton(
        {
            Name = "Teleport to " .. v,
            Callback = function()
                for j, Part in pairs(workspace.Areas:FindFirstChild(v):GetChildren()) do
                    if Part.ClassName == "Folder" and Part.Name == "Spawns" then
                        for k, Spawn in pairs(Part:GetChildren()) do
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Spawn.CFrame.x, Spawn.CFrame.y + 5, Spawn.CFrame.z)
                        end
                    end
                end
            end
        }
    )
end

local MiscTab = Window:MakeTab(
    {
        Name = "Misc",
        PremiumOnly = false
    }
)

MiscTab:AddToggle(
    {
        Name = "Auto Sell",
        Default = false,
        Flag = "autosell",
        Callback = function(Value)
            while Value do
                if OrionLib.Flags["autosell"].Value == false then
                    break
                end
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("sellBricks"):FireServer()
                wait(0.1)
            end
        end
    }
)

MiscTab:AddToggle(
    {
        Name = "Unlimited Money",
        Default = false,
        Flag = "unlimitedmoney",
        Callback = function(Value)
            while Value do
                if OrionLib.Flags["unlimitedmoney"].Value == false then
                    break
                end
                game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 4800000, 1000000)
                wait(0)
            end
        end
    }
)

MiscTab:AddButton(
    {
        Name = "Get Max Level + Rank",
        Callback = function()
            if game:GetService("Players").LocalPlayer.leaderstats.Level.Value == 55 then
                if game:GetService("Players").LocalPlayer.leaderstats.Rank.Value == 5 then
                    return OrionLib:MakeNotification(
                        {
                            Name = "Max Level/Rank Reached",
                            Content = "You have already reached the maximum level and rank possible.",
                            Time = 3
                        }
                    )
                end
            end
            while true do
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("generateBoost"):FireServer("Levels", 10, 10)
                if game:GetService("Players").LocalPlayer.leaderstats.Level.Value == 55 then
                    if game:GetService("Players").LocalPlayer.leaderstats.Rank.Value == 5 then
                        break
                    end
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("rankUp"):FireServer()
                end
                wait(0)
            end
        end
    }
)

MiscTab:AddDropdown(
    {
        Name = "Boost Type",
        Flag = "boost-type",
        Options = {
            "BrickBoost", 
            "CoinBoost",
            "ExtraSpeed",
            "SuperJump",
            "XPBoost"
        }
    }
)

MiscTab:AddButton(
    {
        Name = "Add Boost For 1 Hour",
        Callback = function()
            if OrionLib.Flags["boost-type"].Value == '...' then
                return OrionLib:MakeNotification(
                    {
                        Name = "No Boost Chosen",
                        Content = "Please select a boost type!",
                        Time = 3
                    }
                )
            end
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("generateBoost"):FireServer(OrionLib.Flags["boost-type"].Value, 60 * 60, 2)
        end
    }
)

MiscTab:AddButton(
    {
        Name = "Add All Boosts For 1 Hour",
        Callback = function()
            for i, v in pairs({"BrickBoost", "CoinBoost", "ExtraSpeed", "SuperJump", "XPBoost"}) do
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("generateBoost"):FireServer(v, 60 * 60, 2)
            end
        end
    }
)

local CreditsTab = Window:MakeTab(
    {
        Name = "Credits",
        PremiumOnly = false
    }
)

CreditsTab:AddParagraph(
    "Credits",
    "Waza80#8017 - Developer"
)

OrionLib:MakeNotification(
    {
        Name = "Script loaded",
        Content = "The script is ready to use.",
        Time = 3
    }
)

OrionLib:Init()
