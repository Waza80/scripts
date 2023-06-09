local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local AutoEquip = false
local hasFused = false
local InGame = false

if game.PlaceId == 8568266872 then
	local Place = 1
else
    local Place = 2
end

local ToPrice = function(String)
    String = tostring(String)
    String = String:gsub("%$", ''):gsub(" ", ''):gsub(",", "")
    multiplier = string.lower(string.sub(String, -1))
    if tonumber(multiplier) then
        return tonumber(String)
    end
    if multiplier == "k" then
        return tonumber(String:sub(1, -2)) * 1000
    end
    if multiplier == "m" then
        return tonumber(String:sub(1, -2)) * 1000000
    end
    if multiplier == "b" then
        return tonumber(String:sub(1, -2)) * 1000000000
    end
    if multiplier == "t" then
        return tonumber(String:sub(1, -2)) * 1000000000000
    end
    return math.huge
end

local split = function(Text, Pattern)
    chunks = {}
    for substring in Text:gmatch(Pattern) do
        table.insert(chunks, substring)
    end
    return chunks
end

local GetPriceByItem = function(Item)
    price = split(string.sub(Item:match('%(.*%)'), 2, string.len(Item)-1), "%S+")
    price[1] = tonumber(ToPrice(price[1]))
    price[2] = price[2]:sub(1, -2)
    return price
end

local FindItem = function(table, item)
    for itemNumber, Item in pairs(table) do
        if item == Item then
            if Place == 1 then
                return {itemNumber, Item}
            else
                return {itemNumber + 8, Item}
            end
        end
    end
    return nil
end

local Window = OrionLib:MakeWindow(
    {
        Name = "KMtSP V1.6969420", 
        HidePremium = true, 
        SaveConfig = false, 
        IntroEnabled = false
    }
)

local AutoTab = Window:MakeTab(
    {
        Name = "Main",
        PremiumOnly = false
    }
)

local IsFarming = function()
    if OrionLib.Flags["autofarm-main-toggle"].Value == true then
        return true 
    end
    return false
end

AutoTab:AddToggle(
    {
        Name = "Auto Farm",
        Default = false,
        Flag = 'autofarm-main-toggle',
        Callback = function(Value)
            if Value == false then
                if game:GetService("Players").LocalPlayer.stats["Battle Region"].Value == 0 then
                    Wave = nil
                    InGame = false
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Battle"):WaitForChild("ExitPrepare"):FireServer()
                end
                workspace.Gravity = 100
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 31
                game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
                return
            end
            while task.wait() do
                if IsFarming() == false then 
                    return 
                end
                workspace.Gravity = 0
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
                InGame = true
                task.wait()
                if game:GetService("Players").LocalPlayer.stats["Battle Region"].Value == 0 then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Battle"):WaitForChild("JoinPrepare"):FireServer()
                    while game:GetService("Players").LocalPlayer.stats["Battle Region"].Value == 0 do 
                        task.wait()
                        if IsFarming() == false then 
                            return 
                        end
                    end
                end
                while game:GetService("Players").LocalPlayer.stats["Battle Region"].Value == 0 do
                    task.wait()
                    if IsFarming() == false then
                        return
                    end
                end
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
                spawn(function()
                    while game:GetService("Players").LocalPlayer.stats["Battle Region"].Value ~= 0 and IsFarming() do
                        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Weapon"):WaitForChild("TakeDamage"):FireServer()
                        task.wait()
                    end
                end)
                if not pcall(function()
                    while game:GetService("Players").LocalPlayer.stats["Battle Region"].Value ~= 0 do 
                        Wave = game:GetService("Workspace").Waves:FindFirstChild(game:GetService("Players").LocalPlayer.stats["Battle Region"].Value)
                        for i, v in pairs(Wave:GetChildren()) do
                            if v.Name == "Cheat" then
                                v:Destroy()
                            end
                        end
                        task.wait()
                        if IsFarming() == false then
                            return
                        end
                        for _, Enemy in pairs(Wave.Enemy:GetChildren()) do
                            while IsFarming() and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 and workspace.Waves:FindFirstChild(Wave.Name) do
                                task.wait()
                                if Enemy:FindFirstChild("Humanoid") then
                                    if Enemy.Humanoid.Health == 0 then
                                        break
                                    end
                                    if Enemy.Humanoid.FloorMaterial.Name == 'Air' then
                                        if #Wave.Enemy:GetChildren() > 2 then
                                            break
                                        end
                                    end
                                    
                                end
                                if not pcall(function()
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = true
                                    game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero
                                    if OrionLib.Flags['blatant-main-toggle'].Value == false then 
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Enemy.LeftFoot.CFrame.x, Enemy.LeftFoot.CFrame.y - 4, Enemy.LeftFoot.CFrame.z + 6)
                                    else
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Enemy.LeftHand.CFrame.x, Enemy.HumanoidRootPart.CFrame.y + 6, Enemy.LeftHand.CFrame.z + 6)
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position,
                                        Enemy.LeftFoot.CFrame.Position
                                        -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position + Vector3.yAxis
                                    )
                                end) then
                                    break
                                end
                            end
                        end
                        if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                            break
                        end
                    end
                    return
                end) then
                    task.wait()
                end
                while game:GetService("Players").LocalPlayer.stats["Battle Region"].Value ~= 0 do
                    task.wait()
                end
                wait(0.5)
            end
        end
    }
)

AutoTab:AddToggle(
    {
        Name = "Auto Princess",
        Default = false,
        Flag = 'autoprincess-main-toggle',
        Callback = function(Value)
            while Value do
                task.wait() 
                if OrionLib.Flags['autoprincess-main-toggle'].Value == false then
                    return 
                end
                if game:GetService("Players").LocalPlayer.stats["Battle Region"].Value ~= 0 then
                    for _, Item in pairs({"1007", "1003", "1001"}) do
                        task.wait()
                        ProgressionStats = split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Func.Princess.Frame.Main.Scoll.Main.Frame[Item].Progression.Info.Text, "([^/]+)")
                        if tonumber(ProgressionStats[1]) == tonumber(ProgressionStats[2]) then
                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Princess"):WaitForChild("PrincessEquip"):FireServer(tonumber(Item))
                            while game:GetService("Players").LocalPlayer.stats["Battle Region"].Value ~= 0 and OrionLib.Flags['autoprincess-main-toggle'].Value == true do
                                if game.Players.LocalPlayer.Backpack:FindFirstChild('Princess') then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild('Princess'))
                                end
                                if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                                    wait(3.5)
                                    break
                                end
                                task.wait()
                            end
                            wait(1)
                            break
                        end
                    end
                else
                    if Place == 1 then
                        AutoPrincessStart = {"1006", "1005", "1004"}
                    else
                        AutoPrincessStart = {"1013", "1012", "1011"}
                    end
                    for _, Item in pairs(AutoPrincessStart) do
                        task.wait()
                        ProgressionStats = split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Func.Princess.Frame.Main.Scoll.Main.Frame[Item].Progression.Info.Text, "([^/]+)")
                        if tonumber(ProgressionStats[1]) == tonumber(ProgressionStats[2]) then
                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Princess"):WaitForChild("PrincessEquip"):FireServer(tonumber(Item))
                            while game:GetService("Players").LocalPlayer.stats["Battle Region"].Value == 0 and OrionLib.Flags['autoprincess-main-toggle'].Value == true do
                                if game.Players.LocalPlayer.Backpack:FindFirstChild('Princess') then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild('Princess'))
                                end
                                if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                                    wait(3.5)
                                    break
                                end
                                task.wait()
                            end
                            wait(1)
                            break
                        end
                    end
                end
            end
        end
    }
)

AutoTab:AddToggle(
    {
        Name = "Blatant Mode",
        Default = false,
        Flag = 'blatant-main-toggle'
    }
)

EggsTab = Window:MakeTab(
    {
        Name = "Eggs",
        PremiumOnly = false 
    }
)

if Place == 1 then
    EggOptions = {
        "Common Egg (50 Coins)",
        "Uncommon Egg (250 Coins)",
        "Rare Egg (1000 Coins)",
        "Epic Egg (5000 Coins)",
        "Legendary Egg (25000 Coins)",
        "Mythical Egg (100000 Coins)",
        "Rainbow Egg 1 (149 Gems)",
        "Rainbow Egg 2 (349 Gems)"
    }
else
        EggOptions = {
        "Common Egg (150k Coins)",
        "Uncommon Egg (750k Coins)",
        "Rare Egg (3m Coins)",
        "Epic Egg (15m Coins)",
        "Legendary Egg (60m Coins)",
        "Mythical Egg (300m Coins)",
        "Rainbow Egg 1 (249 Gems)",
        "Rainbow Egg 2 (449 Gems)"
    }
end

EggsTab:AddDropdown(
    {
        Name = "Selected Egg",
        Flag = 'egg-eggs-slider',
        Default = EggOptions[1],
        Options = EggOptions
    }
)

EggsTab:AddButton(
    {
        Name = "Open 1",
        Callback = function()
            Egg = FindItem(OrionLib.Flags['egg-eggs-slider'].Options, OrionLib.Flags['egg-eggs-slider'].Value)
            EggPrice = GetPriceByItem(Egg[2])
            if EggPrice[2] == "Coins" then
                if game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\176Coin"].Value > EggPrice[1] then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], 'Open1', {})
                end
            end
            if EggPrice[2] == "Gems" then
                if game:GetService("Players").LocalPlayer.stats.Gem.Value > EggPrice[1] then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], 'Open1', {})
                end
            end
        end
    }
)

EggsTab:AddButton(
    {
        Name = "Open 3",
        Callback = function()
            Egg = FindItem(OrionLib.Flags['egg-eggs-slider'].Options, OrionLib.Flags['egg-eggs-slider'].Value)
            EggPrice = GetPriceByItem(Egg[2])
            if EggPrice[2] == "Coins" then
                if game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\176Coin"].Value / 3 > EggPrice[1] then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], "Open3", {})
                end
            end
            if EggPrice[2] == "Gems" then
                if game:GetService("Players").LocalPlayer.stats.Gem.Value / 3 > EggPrice[1] then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], "Open3", {})
                end
            end
        end
    }
)

EggsTab:AddToggle(
    {
        Name = "Auto Open",
        Flag = 'autohatch-eggs-toggle',
        Default = false,
        Callback = function(Value)
            while Value do
                wait(0.1)
                if OrionLib.Flags['autohatch-eggs-toggle'].Value == false then
                    return
                end
                Egg = FindItem(OrionLib.Flags['egg-eggs-slider'].Options, OrionLib.Flags['egg-eggs-slider'].Value)
                EggPrice = GetPriceByItem(Egg[2])
                if EggPrice[2] == "Coins" then
                    if game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\176Coin"].Value > EggPrice[1] then
                        if game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\176Coin"].Value / 3 > EggPrice[1] then
                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], "Open3", {})
                        else
                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], "Open1", {})
                        end
                        wait(0.1)
                    end
                end
                if EggPrice[2] == "Gems" then
                    if game:GetService("Players").LocalPlayer.stats.Gem.Value > EggPrice[1] then
                        if game:GetService("Players").LocalPlayer.stats.Gem.Value / 3 > EggPrice[1] then
                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], "Open3", {})
                        else
                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], "Open1", {})
                        end
                        wait(0.1)
                    end
                end
            end
        end
    }
)

EggsTab:AddToggle(
    {
        Name = "Auto Fuse",
        Default = false,
        Flag = 'autofuse-eggs-toggle',
        Callback = function(Value)
            while Value do
                wait(0.1)
                if OrionLib.Flags['autofuse-eggs-toggle'].Value == false then
                    return
                end
                local Fused = false
                for _, Weapon1 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Func.Weapon.Frame.Main.Backpack.Backpack:GetChildren()) do
                    if Weapon1.ClassName == "Frame" then
                        for _, Weapon2 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Func.Weapon.Frame.Main.Backpack.Backpack:GetChildren()) do
                            if Weapon2.ClassName == "Frame" then
                                if Weapon1.Level.Value < 11 or Weapon2.Level.Value < 11 then
                                    if Weapon1.Name ~= Weapon2.Name then
                                        if Weapon1.TextLabel.ContentText == Weapon2.TextLabel.ContentText then
                                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Weapon"):WaitForChild("WeaponFuse"):InvokeServer(tonumber(Weapon1.Name), tonumber(Weapon2.Name))
                                            Fused = true
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if Fused == true then
                        break
                    end
                end
            end
        end
    }
)

EggsTab:AddToggle(
    {
        Name = "Auto Equip Best",
        Flag = "autoequipbest-eggs-toggle",
        Default = false,
        Callback = function(Value)
            AutoEquip = Value
        end
    }    
)

game:GetService("Players").LocalPlayer.PlayerGui.Main.Func.Weapon.Frame.Main.Backpack.Backpack.ChildAdded:connect(function(ChildAdded)
    if AutoEquip == true then
        if hasFused == false then
            hasFused = true
            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Weapon"):WaitForChild("EquipBest"):FireServer()
            wait(0.1)
            hasFused = false
        else
            return
        end
    end
    return
end)

MiscTab = Window:MakeTab(
    {
        Name = "Misc",
        PremiumOnly = false 
    }
)

MiscTab:AddButton(
    {
        Name = "TP to Spawn",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.SpawnLocation.CFrame
        end
    }
)

MiscTab:AddButton(
    {
        Name = "Redeem All Codes",
        Callback = function()
            for _, Code in pairs({"like100", "like200", "like300", "like750"}) do
                game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Setting"):WaitForChild("CodeReward"):FireServer(Code)
            end
        end
    }
)

MiscTab:AddButton(
    {
        Name = "Collect Group Weapon",
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Reward"):WaitForChild("GroupReward"):FireServer(true)
        end
    }
)

MiscTab:AddToggle(
    {
        Name = "Collect Free Gems",
        Flag = "freegems-misc-toggle",
        Callback = function(Value)
            while Value do
                task.wait()
                if OrionLib.Flags['freegems-misc-toggle'].Value == false then
                    return 
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Func.Shop.Frame.Main.Scoll.Gem.Main["10"].Buy.TextLabel.ContentText == "FREE" then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Shop"):WaitForChild("TryGetFreeGem"):FireServer()
                end
            end
        end
    }
)

CreditsTab = Window:MakeTab(
    {
        Name = "Credits",
        PremiumOnly = false
    }
)

CreditsTab:AddParagraph(
    "Credits",
    game:HttpGet("https://pastebin.com/raw/LTbvxpuG")
)

OrionLib:Init()
