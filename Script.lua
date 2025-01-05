-- By NoobzyScripter 
-- enjoy =)

--[[
 
$$\   $$\                     $$\                                                     $$\            $$\               
$$$\  $$ |                    $$ |                                                    \__|           $$ |              
$$$$\ $$ | $$$$$$\   $$$$$$\  $$$$$$$\  $$$$$$$$\        $$$$$$$\  $$$$$$$\  $$$$$$\  $$\  $$$$$$\ $$$$$$\    $$$$$$$\ 
$$ $$\$$ |$$  __$$\ $$  __$$\ $$  __$$\ \____$$  |      $$  _____|$$  _____|$$  __$$\ $$ |$$  __$$\\_$$  _|  $$  _____|
$$ \$$$$ |$$ /  $$ |$$ /  $$ |$$ |  $$ |  $$$$ _/       \$$$$$$\  $$ /      $$ |  \__|$$ |$$ /  $$ | $$ |    \$$$$$$\  
$$ |\$$$ |$$ |  $$ |$$ |  $$ |$$ |  $$ | $$  _/          \____$$\ $$ |      $$ |      $$ |$$ |  $$ | $$ |$$\  \____$$\ 
$$ | \$$ |\$$$$$$  |\$$$$$$  |$$$$$$$  |$$$$$$$$\       $$$$$$$  |\$$$$$$$\ $$ |      $$ |$$$$$$$  | \$$$$  |$$$$$$$  |
\__|  \__| \______/  \______/ \_______/ \________|      \_______/  \_______|\__|      \__|$$  ____/   \____/ \_______/ 
                                                                                          $$ |                         
                                                                                          $$ |                         
                                                                                          \__|                         
Hello! JUST USE loadstring!
Hello from tiktok 😁 
]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local TeleportService = game:GetService("TeleportService")

local LocalPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AdminHub"
ScreenGui.Parent = CoreGui

local ToggleButton = Instance.new("TextButton")
local MainFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Title = Instance.new("TextLabel")
local SpeedBox = Instance.new("TextBox")
local JumpBox = Instance.new("TextBox")

local function addUICorner(instance, cornerRadius)
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, cornerRadius)
    UICorner.Parent = instance
end

ToggleButton.Parent = ScreenGui
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.Text = "Open"
ToggleButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.TextSize = 14
addUICorner(ToggleButton, 10)

MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 300, 0, 300)
MainFrame.Position = UDim2.new(0, 70, 0, 10)
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BorderSizePixel = 2
MainFrame.ScrollBarThickness = 8
MainFrame.Visible = true
MainFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
addUICorner(MainFrame, 10)

UIListLayout.Parent = MainFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

Title.Parent = MainFrame
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 24
Title.Text = "AdminHub By NoobzyScripter V3"
addUICorner(Title, 10)

SpeedBox.Parent = MainFrame
SpeedBox.Size = UDim2.new(1, -20, 0, 30)
SpeedBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
SpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedBox.Font = Enum.Font.SourceSansBold
SpeedBox.TextSize = 14
SpeedBox.PlaceholderText = "Enter WalkSpeed"
addUICorner(SpeedBox, 10)

JumpBox.Parent = MainFrame
JumpBox.Size = UDim2.new(1, -20, 0, 30)
JumpBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
JumpBox.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpBox.Font = Enum.Font.SourceSansBold
JumpBox.TextSize = 14
JumpBox.PlaceholderText = "Enter JumpPower"
addUICorner(JumpBox, 10)

SpeedBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local speed = tonumber(SpeedBox.Text)
        if speed and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = speed
        end
    end
end)

JumpBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local jump = tonumber(JumpBox.Text)
        if jump and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.JumpPower = jump
        end
    end
end)

local function createButton(parent, text, color, callback)
    local Button = Instance.new("TextButton")
    Button.Parent = parent
    Button.Size = UDim2.new(1, -20, 0, 40)
    Button.BackgroundColor3 = color
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Font = Enum.Font.SourceSansBold
    Button.TextSize = 14
    Button.Text = text
    Button.MouseButton1Click:Connect(callback)
    addUICorner(Button, 10)
    return Button
end

local gravityEnabled = true
local gravityValue = workspace.Gravity

createButton(MainFrame, "Toggle Gravity", Color3.fromRGB(255, 69, 0), function()
    gravityEnabled = not gravityEnabled
    if gravityEnabled then
        workspace.Gravity = gravityValue -- Возвращаем к изначальному значению
    else
        workspace.Gravity = 0 -- Устанавливаем гравитацию в 0
    end
end)

local GravityBox = Instance.new("TextBox")
GravityBox.Parent = MainFrame
GravityBox.Size = UDim2.new(1, -20, 0, 30)
GravityBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
GravityBox.TextColor3 = Color3.fromRGB(255, 255, 255)
GravityBox.Font = Enum.Font.SourceSansBold
GravityBox.TextSize = 14
GravityBox.PlaceholderText = "Set Gravity Value"
addUICorner(GravityBox, 10)

GravityBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local gravity = tonumber(GravityBox.Text)
        if gravity then
            gravityValue = gravity
            if gravityEnabled then
                workspace.Gravity = gravityValue
            end
        end
    end
end)

local espEnabled = false
createButton(MainFrame, "ESP", Color3.fromRGB(255, 99, 71), function()
    espEnabled = not espEnabled
    if espEnabled then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                local highlight = Instance.new("Highlight")
                highlight.Adornee = player.Character
                highlight.Parent = player.Character
            end
        end
    else
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("Highlight") then
                player.Character.Highlight:Destroy()
            end
        end
    end
end)

local infiniteJump = false
local jumpConnection
createButton(MainFrame, "InfJump", Color3.fromRGB(50, 205, 50), function()
    infiniteJump = not infiniteJump
    if infiniteJump and not jumpConnection then
        jumpConnection = UserInputService.JumpRequest:Connect(function()
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
                LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
    elseif jumpConnection then
        jumpConnection:Disconnect()
        jumpConnection = nil
    end
end)

local noclip = false
local noclipConnection
createButton(MainFrame, "Noclip/Clip", Color3.fromRGB(30, 144, 255), function()
    noclip = not noclip
    if noclip then
        noclipConnection = RunService.Stepped:Connect(function()
            if LocalPlayer.Character then
                for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end)
    elseif noclipConnection then
        noclipConnection:Disconnect()
        noclipConnection = nil
    end
end)

local godMode = false
createButton(MainFrame, "God Mode", Color3.fromRGB(218, 112, 214), function()
    godMode = not godMode
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        local humanoid = LocalPlayer.Character.Humanoid
        if godMode then
            humanoid.MaxHealth = math.huge
            humanoid.Health = math.huge
        else
            humanoid.MaxHealth = 100
            humanoid.Health = 100
        end
    end
end)


local hitboxEnabled = false
createButton(MainFrame, "Hitbox x6 lol ☠️ fe/op", Color3.fromRGB(123, 104, 238), function()
    hitboxEnabled = not hitboxEnabled
    if LocalPlayer.Character then
        for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                if hitboxEnabled then
                    part.Size = part.Size * 6
                    part.Massless = true
                else
                    part.Size = part.Size / 6
                    part.Massless = false
                end
            end
        end
    end
end)

local toolSizeMultiplier = false

createButton(MainFrame, "Tool Size x4 Fe ", Color3.fromRGB(138, 43, 226), function()
    toolSizeMultiplier = not toolSizeMultiplier
    for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            for _, part in pairs(tool:GetDescendants()) do
                if part:IsA("BasePart") then
                    if toolSizeMultiplier then
                        part.Size = part.Size * 4
                    else
                        part.Size = part.Size / 4
                    end
                end
            end
        end
    end
end)

local spawnObjectsEnabled = true

createButton(MainFrame, "Spawn Objects *OP*", Color3.fromRGB(0, 191, 255), function()
    spawnObjectsEnabled = not spawnObjectsEnabled
    if spawnObjectsEnabled then
        local objectTypes = {"Ball", "Cube"}
        local spawnObject = function()
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local humanoidRootPart = LocalPlayer.Character.HumanoidRootPart
                local objectType = objectTypes[math.random(1, #objectTypes)] -- Рандомно выбираем тип объекта
                local newObject

                if objectType == "Ball" then
                    newObject = Instance.new("Part")
                    newObject.Shape = Enum.PartType.Ball
                elseif objectType == "Cube" then
                    newObject = Instance.new("Part")
                end

                if newObject then
                    newObject.Size = Vector3.new(5, 5, 5)
                    newObject.Position = humanoidRootPart.Position + humanoidRootPart.CFrame.LookVector * 5
                    newObject.BrickColor = BrickColor.Random()
                    newObject.Material = Enum.Material.SmoothPlastic
                    newObject.Anchored = false
                    newObject.Parent = workspace
                end
            end
        end

        spawnObject()
    end
end)

local randomizeColorsEnabled = false
local randomizeConnection

createButton(MainFrame, "Random Colors *OP*", Color3.fromRGB(255, 20, 147), function()
    randomizeColorsEnabled = not randomizeColorsEnabled

    if randomizeColorsEnabled then
        randomizeConnection = RunService.Heartbeat:Connect(function()
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") then
                    obj.BrickColor = BrickColor.Random()
                end
            end
        end)
    elseif randomizeConnection then
        randomizeConnection:Disconnect()
        randomizeConnection = nil
    end
end)

local playersInvisible = false

createButton(MainFrame, "Players Visibility", Color3.fromRGB(128, 128, 128), function()
    playersInvisible = not playersInvisible
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            for _, part in pairs(player.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = playersInvisible and 1 or 0 -- Прозрачность
                    part.CanCollide = not playersInvisible -- Возможность столкновения
                elseif part:IsA("Decal") then
                    part.Transparency = playersInvisible and 1 or 0 -- Прозрачность текстур
                end
            end
        end
    end
end)

local aimEnabled = false
local aimIndicator = Instance.new("Frame")

aimIndicator.Size = UDim2.new(0, 5, 0, 5)
aimIndicator.Position = UDim2.new(0.5, -2.5, 0.5, -2.5)
aimIndicator.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
aimIndicator.Visible = false
addUICorner(aimIndicator, 5)
aimIndicator.Parent = ScreenGui

local function getClosestPlayer()
    local closestPlayer = nil
    local closestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = player
            end
        end
    end

    return closestPlayer
end

local aimConnection

createButton(MainFrame, "AimBot", Color3.fromRGB(255, 0, 255), function()
    aimEnabled = not aimEnabled
    aimIndicator.Visible = aimEnabled -- Показываем/прячем индикатор

    if aimEnabled then
        aimConnection = RunService.RenderStepped:Connect(function()
            local closestPlayer = getClosestPlayer()
            if closestPlayer and closestPlayer.Character then
                local head = closestPlayer.Character:FindFirstChild("Head")
                if head then
                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, head.Position)
                end
            end
        end)
    else
        if aimConnection then
            aimConnection:Disconnect()
            aimConnection = nil
        end
        workspace.CurrentCamera.CameraSubject = LocalPlayer.Character
    end
end)

local flingEnabled = false
local flingConnection

local function toggleFling()
    flingEnabled = not flingEnabled
    if flingEnabled then
        flingConnection = RunService.Heartbeat:Connect(function()
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(100), 0)
            end
        end)
        print("Spin включён!")
    else
        if flingConnection then
            flingConnection:Disconnect()
            flingConnection = nil
        end
        print("Spin отключён!")
    end
end

createButton(MainFrame, "Spin Fe", Color3.fromRGB(220, 20, 60), function()
    toggleFling()
end)

createButton(MainFrame, "Black hole fe(Working on Natural Disaster Survival", Color3.fromRGB(255, 140, 0), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RbxNoobScripter/Shhh-/refs/heads/main/Basic.lua"))()
end)

createButton(MainFrame, "Rejoin Game", Color3.fromRGB(255, 140, 0), function()
    TeleportService:Teleport(game.PlaceId, LocalPlayer)
end)

local teleportVisible = false
local teleportButtons = {}

local function updateTeleportButtons()
    for _, button in pairs(teleportButtons) do
        button:Destroy()
    end
    teleportButtons = {}
    if teleportVisible then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Parent then
                local button = createButton(MainFrame, player.Name, Color3.fromRGB(255, 215, 0), function()
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                    end
                end)
                table.insert(teleportButtons, button)
            end
        end
    end
end

createButton(MainFrame, "TeleportToPlr", Color3.fromRGB(64, 224, 208), function()
    teleportVisible = not teleportVisible
    updateTeleportButtons()
end)

Players.PlayerAdded:Connect(function(player)
    if teleportVisible then
        updateTeleportButtons()
    end
end)

Players.PlayerRemoving:Connect(function(player)
    if teleportVisible then
        updateTeleportButtons()
    end
end)

local guiVisible = true
ToggleButton.MouseButton1Click:Connect(function()
    guiVisible = not guiVisible
    MainFrame.Visible = guiVisible
end)

UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    MainFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 20)
end)
