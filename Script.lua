--[[
 _      ____  ____  ____  ____ ___  _   ____  ____  ____  _  ____  _____  _____ ____ 
/ \  /|/  _ \/  _ \/  _ \/_   \\  \//  / ___\/   _\/  __\/ \/  __\/__ __\/  __//  __\
| |\ ||| / \|| / \|| | // /   / \  /   |    \|  /  |  \/|| ||  \/|  / \  |  \  |  \/|
| | \||| \_/|| \_/|| |_\\/   /_ / /    \___ ||  \_ |    /| ||  __/  | |  |  /_ |    /
\_/  \|\____/\____/\____/\____//_/     \____/\____/\_/\_\\_/\_/     \_/  \____\\_/\_\
                                                                                     
]]

print([[
  _      ____  ____  ____  ____ ___  _   ____  ____  ____  _  ____  _____  _____ ____ 
/ \  /|/  _ \/  _ \/  _ \/_   \\  \//  / ___\/   _\/  __\/ \/  __\/__ __\/  __//  __\
| |\ ||| / \|| / \|| | // /   / \  /   |    \|  /  |  \/|| ||  \/|  / \  |  \  |  \/|
| | \||| \_/|| \_/|| |_\\/   /_ / /    \___ ||  \_ |    /| ||  __/  | |  |  /_ |    /
\_/  \|\____/\____/\____/\____//_/     \____/\____/\_/\_\\_/\_/     \_/  \____\\_/\_\
]])

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local TeleportService = game:GetService("TeleportService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer

local function CreateSupportGui()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "SupportGui"
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.Enabled = true 
    
    local firstClick = true 

    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 280, 0, 180)
    MainFrame.Position = UDim2.new(0.5, -140, 0.5, -90)
    MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = ScreenGui
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 12)
    UICorner.Parent = MainFrame
    
    local UIGradient = Instance.new("UIGradient")
    UIGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 40)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20))
    }
    UIGradient.Rotation = 45
    UIGradient.Parent = MainFrame

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, -20, 0, 50)
    Title.Position = UDim2.new(0, 10, 0, 10)
    Title.BackgroundTransparency = 1
    Title.Text = "Support the developer with a little advertising?"
    Title.TextColor3 = Color3.fromRGB(255, 85, 85)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 20
    Title.TextWrapped = true
    Title.Parent = MainFrame

    local LinkBox = Instance.new("TextBox")
    LinkBox.Size = UDim2.new(0.85, 0, 0, 40)
    LinkBox.Position = UDim2.new(0.075, 0, 0.35, 0)
    LinkBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    LinkBox.TextColor3 = Color3.fromRGB(255, 100, 100)
    LinkBox.Text = "https://loot-link.com/s?yV58fCdw"
    LinkBox.Font = Enum.Font.Gotham
    LinkBox.TextSize = 16
    LinkBox.TextEditable = false
    LinkBox.ClearTextOnFocus = false
    LinkBox.Parent = MainFrame
    
    local LinkCorner = Instance.new("UICorner")
    LinkCorner.CornerRadius = UDim.new(0, 8)
    LinkCorner.Parent = LinkBox

    local LaterButton = Instance.new("TextButton")
    LaterButton.Size = UDim2.new(0.4, 0, 0, 35)
    LaterButton.Position = UDim2.new(0.3, 0, 0.7, 0)
    LaterButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    LaterButton.Text = "Later"
    LaterButton.TextColor3 = Color3.fromRGB(255, 85, 85)
    LaterButton.Font = Enum.Font.GothamSemibold
    LaterButton.TextSize = 18
    LaterButton.Parent = MainFrame
    
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 8)
    ButtonCorner.Parent = LaterButton

    LaterButton.MouseEnter:Connect(function()
        LaterButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    end)
    LaterButton.MouseLeave:Connect(function()
        LaterButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    end)

    LaterButton.MouseButton1Click:Connect(function()
        if firstClick then
				task.spawn(function()
    while true do
        print("OFFICIAL OWNER IS ONLY NOOBZY SCRIPTER, NOBODY ELSE!")
        task.wait(2)
    end
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AdminHub"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false

local UIScale = Instance.new("UIScale")
UIScale.Scale = 1
UIScale.Parent = ScreenGui

-- Sound Setup
local ClickSound = Instance.new("Sound")
ClickSound.SoundId = "rbxassetid://200632136"
ClickSound.Volume = 0.5
ClickSound.Parent = ScreenGui

local ToggleSound = Instance.new("Sound")
ToggleSound.SoundId = "rbxassetid://3527571829"
ToggleSound.Volume = 0.7
ToggleSound.Parent = ScreenGui

-- Notification Function
local function notify(message)
    local notif = Instance.new("TextLabel")
    notif.Text = message
    notif.Size = UDim2.new(0, 250, 0, 50)
    notif.Position = UDim2.new(0.5, -125, 0.1, 0)
    notif.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    notif.TextColor3 = Color3.fromRGB(255, 0, 0)
    notif.Font = Enum.Font.Code
    notif.TextSize = 18
    notif.TextWrapped = true
    notif.BackgroundTransparency = 0.2
    notif.Parent = ScreenGui
    local corner = Instance.new("UICorner", notif)
    corner.CornerRadius = UDim.new(0, 8)
    task.delay(3, function() notif:Destroy() end)
end

-- Enhanced Loading Screen
local LoadingFrame = Instance.new("Frame")
LoadingFrame.Size = UDim2.new(0.3, 0, 0.15, 0)
LoadingFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
LoadingFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
LoadingFrame.BorderSizePixel = 2
LoadingFrame.Parent = ScreenGui
local LoadingCorner = Instance.new("UICorner")
LoadingCorner.CornerRadius = UDim.new(0, 15)
LoadingCorner.Parent = LoadingFrame

local LoadingText = Instance.new("TextLabel")
LoadingText.Size = UDim2.new(0.8, 0, 0.4, 0)
LoadingText.Position = UDim2.new(0.1, 0, 0.1, 0)
LoadingText.BackgroundTransparency = 1
LoadingText.TextColor3 = Color3.fromRGB(255, 0, 0)
LoadingText.Font = Enum.Font.Code
LoadingText.TextSize = 20
LoadingText.Text = "Initializing AdminHub"
LoadingText.Parent = LoadingFrame

local LoadingBarFrame = Instance.new("Frame")
LoadingBarFrame.Size = UDim2.new(0.8, 0, 0.1, 0)
LoadingBarFrame.Position = UDim2.new(0.1, 0, 0.6, 0)
LoadingBarFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
LoadingBarFrame.Parent = LoadingFrame
local BarCorner = Instance.new("UICorner")
BarCorner.CornerRadius = UDim.new(0, 5)
BarCorner.Parent = LoadingBarFrame

local LoadingBar = Instance.new("Frame")
LoadingBar.Size = UDim2.new(0, 0, 1, 0)
LoadingBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LoadingBar.Parent = LoadingBarFrame
local BarInnerCorner = Instance.new("UICorner")
BarInnerCorner.CornerRadius = UDim.new(0, 5)
BarInnerCorner.Parent = LoadingBar

-- Terminal Typing Effect Function
local function typeText(label, text, speed)
    label.Text = ""
    for i = 1, #text do
        label.Text = label.Text .. text:sub(i, i)
        task.wait(speed or 0.05)
    end
end

-- UI Components
local ToggleButton = Instance.new("TextButton")
local BackgroundFrame = Instance.new("Frame")
local MainFrame = Instance.new("ScrollingFrame")
local StarImage = Instance.new("ImageLabel")
local UIListLayout = Instance.new("UIListLayout")
local Title = Instance.new("TextLabel")
local SpeedBox = Instance.new("TextBox")
local JumpBox = Instance.new("TextBox")

local function addUICorner(instance, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    corner.Parent = instance
end

-- Toggle Button (Red Orb) - Draggable and Proportional
ToggleButton.Parent = ScreenGui
ToggleButton.Size = UDim2.new(0, 70, 0, 70)
ToggleButton.Position = UDim2.new(0.02, 0, 0.02, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Font = Enum.Font.Code
ToggleButton.TextSize = 28
ToggleButton.Text = ""
ToggleButton.BorderColor3 = Color3.fromRGB(255, 50, 50)
ToggleButton.BorderSizePixel = 2
ToggleButton.Visible = false
addUICorner(ToggleButton, 35)
task.spawn(function()
    typeText(ToggleButton, ">>", 0.1)
end)

-- Background Frame (Main Visual)
BackgroundFrame.Parent = ScreenGui
BackgroundFrame.Size = UDim2.new(0.35, 0, 0.7, 0)
BackgroundFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
BackgroundFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
BackgroundFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
BackgroundFrame.BorderSizePixel = 1
BackgroundFrame.BackgroundTransparency = 0.1
BackgroundFrame.ZIndex = 0
BackgroundFrame.Visible = false
addUICorner(BackgroundFrame, 20)

-- Star Animation Inside BackgroundFrame
StarImage.Parent = BackgroundFrame
StarImage.Size = UDim2.new(0.15, 0, 0.15, 0)
StarImage.Position = UDim2.new(0.5, -30, 0.5, -30)
StarImage.BackgroundTransparency = 1
StarImage.Image = "rbxassetid://2698713530"
StarImage.ImageColor3 = Color3.fromRGB(255, 0, 0)
StarImage.ZIndex = 1

task.spawn(function()
    while true do
        TweenService:Create(StarImage, TweenInfo.new(2, Enum.EasingStyle.Sine), {Rotation = 360, Size = UDim2.new(0.18, 0, 0.18, 0)}):Play()
        wait(2)
        TweenService:Create(StarImage, TweenInfo.new(2, Enum.EasingStyle.Sine), {Rotation = 0, Size = UDim2.new(0.15, 0, 0.15, 0)}):Play()
        wait(2)
    end
end)

-- Main Frame (Scrolling UI)
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0.32, 0, 0.65, 0)
MainFrame.Position = UDim2.new(0.065, 0, 0.075, 0)
MainFrame.BackgroundTransparency = 1
MainFrame.ScrollBarThickness = 5
MainFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 0, 0)
MainFrame.Visible = false
MainFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
MainFrame.ZIndex = 2

UIListLayout.Parent = MainFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

-- Title (Terminal Header)
Title.Parent = MainFrame
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.TextStrokeTransparency = 0.7
Title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.Code
Title.TextSize = 24
Title.Text = ""
addUICorner(Title, 10)
task.spawn(function()
    typeText(Title, "> AdminHub V3 - NoobzyScripter", 0.05)
end)

-- Speed Box
SpeedBox.Parent = MainFrame
SpeedBox.Size = UDim2.new(1, -10, 0, 45)
SpeedBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
SpeedBox.TextColor3 = Color3.fromRGB(255, 0, 0)
SpeedBox.Font = Enum.Font.Code
SpeedBox.TextSize = 18
SpeedBox.BackgroundTransparency = 0.3
SpeedBox.PlaceholderText = ""
SpeedBox.PlaceholderColor3 = Color3.fromRGB(150, 0, 0)
addUICorner(SpeedBox, 10)
task.spawn(function()
    typeText(SpeedBox, "> Enter WalkSpeed", 0.05)
end)

-- Jump Box
JumpBox.Parent = MainFrame
JumpBox.Size = UDim2.new(1, -10, 0, 45)
JumpBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
JumpBox.TextColor3 = Color3.fromRGB(255, 0, 0)
JumpBox.Font = Enum.Font.Code
JumpBox.TextSize = 18
JumpBox.BackgroundTransparency = 0.3
JumpBox.PlaceholderText = ""
JumpBox.PlaceholderColor3 = Color3.fromRGB(150, 0, 0)
addUICorner(JumpBox, 10)
task.spawn(function()
    typeText(JumpBox, "> Enter JumpPower", 0.05)
end)

-- Functionality for Speed and Jump
SpeedBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local speed = tonumber(SpeedBox.Text)
        if speed and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = speed
        else
            notify("Invalid value or character unavailable!")
        end
        task.spawn(function()
            SpeedBox.Text = ""
            typeText(SpeedBox, "> Enter WalkSpeed", 0.05)
        end)
    end
end)

JumpBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local jump = tonumber(JumpBox.Text)
        if jump and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.JumpPower = jump
        else
            notify("Invalid value or character unavailable!")
        end
        task.spawn(function()
            JumpBox.Text = ""
            typeText(JumpBox, "> Enter JumpPower", 0.05)
        end)
    end
end)

-- Create Button Function (Proportional and Polished)
local function createButton(parent, text, color, callback)
    local Button = Instance.new("TextButton")
    Button.Parent = parent
    Button.Size = UDim2.new(1, -10, 0, 45)
    Button.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextStrokeTransparency = 0.8
    Button.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    Button.Font = Enum.Font.Code
    Button.TextSize = 18
    Button.Text = ""
    Button.BackgroundTransparency = 0.2
    addUICorner(Button, 10)
    task.spawn(function()
        typeText(Button, "> " .. text, 0.05)
    end)

    Button.MouseButton1Click:Connect(function()
        ClickSound:Play()
        callback()
    end)
    Button.MouseEnter:Connect(function()
        TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(255, 50, 50)}):Play()
    end)
    Button.MouseLeave:Connect(function()
        TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(200, 0, 0)}):Play()
    end)

    return Button
end

-- Gravity Toggle
local gravityEnabled = true
local gravityValue = workspace.Gravity
createButton(MainFrame, "Toggle Gravity", Color3.fromRGB(200, 0, 0), function()
    gravityEnabled = not gravityEnabled
    workspace.Gravity = gravityEnabled and gravityValue or 0
end)

-- Gravity Box
local GravityBox = Instance.new("TextBox")
GravityBox.Parent = MainFrame
GravityBox.Size = UDim2.new(1, -10, 0, 45)
GravityBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
GravityBox.TextColor3 = Color3.fromRGB(255, 0, 0)
GravityBox.Font = Enum.Font.Code
GravityBox.TextSize = 18
GravityBox.BackgroundTransparency = 0.3
GravityBox.PlaceholderText = ""
GravityBox.PlaceholderColor3 = Color3.fromRGB(150, 0, 0)
addUICorner(GravityBox, 10)
task.spawn(function()
    typeText(GravityBox, "> Set Gravity Value", 0.05)
end)

GravityBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local gravity = tonumber(GravityBox.Text)
        if gravity then
            gravityValue = gravity
            if gravityEnabled then workspace.Gravity = gravityValue end
        else
            notify("Invalid gravity value!")
        end
        task.spawn(function()
            GravityBox.Text = ""
            typeText(GravityBox, "> Set Gravity Value", 0.05)
        end)
    end
end)

-- Close Button
createButton(MainFrame, "Close Window", Color3.fromRGB(200, 0, 0), function()
    TweenService:Create(MainFrame, TweenInfo.new(0.3), {Position = UDim2.new(0.065, 0, -1, 0)}):Play()
    TweenService:Create(BackgroundFrame, TweenInfo.new(0.3), {Position = UDim2.new(0.05, 0, -1, 0)}):Play()
    wait(0.3)
    MainFrame.Visible = false
    BackgroundFrame.Visible = false
end)

-- ESP Toggle
local espEnabled = false
local highlights = {} -- Table to track highlights for each player

-- Function to add highlight to a player
local function addHighlight(player)
    if player ~= LocalPlayer and player.Character then
        local highlight = Instance.new("Highlight")
        highlight.Adornee = player.Character
        highlight.FillColor = Color3.fromRGB(200, 0, 0)
        highlight.Parent = player.Character
        highlights[player] = highlight -- Store the highlight
    end
    -- Listen for character respawn (e.g., after death)
    player.CharacterAdded:Connect(function(character)
        if espEnabled and player ~= LocalPlayer then
            local highlight = Instance.new("Highlight")
            highlight.Adornee = character
            highlight.FillColor = Color3.fromRGB(200, 0, 0)
            highlight.Parent = character
            highlights[player] = highlight
        end
    end)
end

-- Function to remove highlight from a player
local function removeHighlight(player)
    if highlights[player] then
        highlights[player]:Destroy()
        highlights[player] = nil
    end
end

-- ESP Toggle Button
createButton(MainFrame, "ESP", Color3.fromRGB(200, 0, 0), function()
    espEnabled = not espEnabled
    if espEnabled then
        -- Add highlights to all current players
        for _, player in pairs(Players:GetPlayers()) do
            addHighlight(player)
        end
    else
        -- Remove all highlights
        for player, _ in pairs(highlights) do
            removeHighlight(player)
        end
    end
end)

-- Handle new players joining
Players.PlayerAdded:Connect(function(player)
    if espEnabled then
        addHighlight(player)
    end
end)

-- Handle players leaving
Players.PlayerRemoving:Connect(function(player)
    removeHighlight(player)
end)

local infiniteJump = false
local jumpConnection
createButton(MainFrame, "> InfJump", Color3.fromRGB(200, 0, 0), function()
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
createButton(MainFrame, "> Noclip/Clip", Color3.fromRGB(200, 0, 0), function()
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
createButton(MainFrame, "> God Mode", Color3.fromRGB(200, 0, 0), function()
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
createButton(MainFrame, "> Hitbox x6 lol ☠️ fe/op", Color3.fromRGB(200, 0, 0), function()
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

createButton(MainFrame, "> Tool Size x4 Fe ", Color3.fromRGB(200, 0, 0), function()
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

createButton(MainFrame, "> Spawn Objects *OP*", Color3.fromRGB(200, 0, 0), function()
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

createButton(MainFrame, "> Random Colors *OP*", Color3.fromRGB(200, 0, 0), function()
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

createButton(MainFrame, "> Players Visibility", Color3.fromRGB(128, 128, 128), function()
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

createButton(MainFrame, "> AimBot", Color3.fromRGB(200, 0, 0), function()
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

createButton(MainFrame, "> Spin Fe", Color3.fromRGB(200, 0, 0), function()
    toggleFling()
end)

createButton(MainFrame, "> Black hole fe(Working on Natural Disaster Survival", Color3.fromRGB(200, 0, 0), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RbxNoobScripter/Shhh-/refs/heads/main/Basic.lua"))()
end)

createButton(MainFrame, "> Telekinesis(Works in Brookhaven, Dahood, etc...)", Color3.fromRGB(200, 0, 0), function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RbxNoobScripter/REAL-SIGMA-SCRIPT-/refs/heads/main/Main.lua"))()
end)

createButton(MainFrame, "> Fly", Color3.fromRGB(200, 0, 0), function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RbxNoobScripter/FlyingSigma/refs/heads/main/Goida.lua"))()
end)

createButton(MainFrame, "> SCP BY G10 FE", Color3.fromRGB(200, 0, 0), function()
	loadstring(game:HttpGet("https://pastefy.app/YsJgITXR/raw"))()
end)

createButton(MainFrame, "> Sus FE", Color3.fromRGB(200, 0, 0), function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RbxNoobScripter/nahhhbrrr/refs/heads/main/base.lua"))()
end)

createButton(MainFrame, "> InfiniteYield", Color3.fromRGB(200, 0, 0), function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

createButton(MainFrame, "Screen Flash", Color3.fromRGB(200, 0, 0), function()
    -- Create a full-screen flash effect
    local flash = Instance.new("Frame")
    flash.Size = UDim2.new(1, 0, 1, 0)
    flash.Position = UDim2.new(0, 0, 0, 0)
    flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    flash.BackgroundTransparency = 0
    flash.Parent = ScreenGui
    flash.ZIndex = 10 -- Above everything
    
    -- Play a sound (optional, using your ClickSound)
    ClickSound:Play()
    
    -- Fade out the flash
    TweenService:Create(flash, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
    }):Play()
    
    -- Clean up after the effect
    task.delay(0.5, function()
        flash:Destroy()
    end)
    
    -- Announce in chat for fun
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("FLASH!", "All")
end)

-- Freecam Button
createButton(MainFrame, "Freecam", Color3.fromRGB(200, 0, 0), function()
    local freecamEnabled = not _G.freecamEnabled
    _G.freecamEnabled = freecamEnabled
    print("Freecam " .. (freecamEnabled and "Enabled" or "Disabled"))
    
    local camera = workspace.CurrentCamera
    local speed = 50
    local mouse = LocalPlayer:GetMouse()
    local moveDirection = Vector3.new()
    
    if freecamEnabled then
        local originalSubject = camera.CameraSubject
        local originalType = camera.CameraType
        
        camera.CameraType = Enum.CameraType.Scriptable
        camera.CFrame = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart.CFrame or camera.CFrame
        
        local connection
        connection = RunService.RenderStepped:Connect(function(dt)
            if not freecamEnabled then
                connection:Disconnect()
                return
            end
            
            moveDirection = Vector3.new(
                (UserInputService:IsKeyDown(Enum.KeyCode.D) and 1 or 0) - (UserInputService:IsKeyDown(Enum.KeyCode.A) and 1 or 0),
                (UserInputService:IsKeyDown(Enum.KeyCode.E) and 1 or 0) - (UserInputService:IsKeyDown(Enum.KeyCode.Q) and 1 or 0),
                (UserInputService:IsKeyDown(Enum.KeyCode.S) and 1 or 0) - (UserInputService:IsKeyDown(Enum.KeyCode.W) and 1 or 0)
            ).Unit * speed * dt
            
            camera.CFrame = camera.CFrame * CFrame.Angles(0, -mouse.Delta.X * 0.002, 0)
            camera.CFrame = camera.CFrame * CFrame.Angles(-mouse.Delta.Y * 0.002, 0, 0)
            camera.CFrame = camera.CFrame + camera.CFrame:VectorToWorldSpace(moveDirection)
        end)
        
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("Freecam activated!", "All")
    else
        camera.CameraType = Enum.CameraType.Custom
        camera.CameraSubject = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") or nil
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("Freecam off!", "All")
    end
end)

local activeTimerGui = nil -- Отслеживаем активный GUI

-- Создаем кнопку таймера
local timerButton = createButton(MainFrame, "Timer", Color3.fromRGB(200, 0, 0), function()
    if activeTimerGui then
        activeTimerGui:Destroy()
        activeTimerGui = nil
        return
    end
    
    -- Создаем GUI
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
    activeTimerGui = ScreenGui
    
    local TimerFrame = Instance.new("Frame")
    TimerFrame.Size = UDim2.new(0, 350, 0, 500)
    TimerFrame.Position = UDim2.new(0.5, -175, 0.5, -250)
    TimerFrame.BackgroundColor3 = Color3.fromRGB(20, 0, 0)
    TimerFrame.BorderColor3 = Color3.fromRGB(200, 0, 0)
    TimerFrame.BorderSizePixel = 2
    TimerFrame.Parent = ScreenGui
    
    -- Анимация появления
    game:GetService("TweenService"):Create(
        TimerFrame,
        TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {Position = UDim2.new(0.5, -175, 0.5, -250)}
    ):Play()
    
    -- Заголовок
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 50)
    Title.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    Title.Text = "Advanced Timer"
    Title.TextColor3 = Color3.fromRGB(0, 255, 0)
    Title.Font = Enum.Font.Code
    Title.TextSize = 24
    Title.Parent = TimerFrame
    
    -- Основной дисплей времени
    local TimeDisplay = Instance.new("TextLabel")
    TimeDisplay.Size = UDim2.new(1, 0, 0, 100)
    TimeDisplay.Position = UDim2.new(0, 0, 0, 60)
    TimeDisplay.BackgroundTransparency = 1
    TimeDisplay.Text = "00:00:00"
    TimeDisplay.TextColor3 = Color3.fromRGB(200, 0, 0)
    TimeDisplay.Font = Enum.Font.Code
    TimeDisplay.TextSize = 48
    TimeDisplay.Parent = TimerFrame
    
    -- Лучший результат
    local BestTimeLabel = Instance.new("TextLabel")
    BestTimeLabel.Size = UDim2.new(1, 0, 0, 30)
    BestTimeLabel.Position = UDim2.new(0, 0, 0, 170)
    BestTimeLabel.BackgroundTransparency = 1
    BestTimeLabel.Text = "Best: --:--:--"
    BestTimeLabel.TextColor3 = Color3.fromRGB(150, 0, 0)
    BestTimeLabel.Font = Enum.Font.Code
    BestTimeLabel.TextSize = 20
    BestTimeLabel.Parent = TimerFrame
    
    -- Переменные
    local timeElapsed = 0
    local isRunning = false
    local bestTime = math.huge
    local lapTimes = {}
    
    -- Кнопка Старт/Пауза
    local StartPauseButton = createButton(TimerFrame, "Start", Color3.fromRGB(200, 0, 0), function()
        isRunning = not isRunning
        StartPauseButton.Text = isRunning and "Pause" or "Start"
    end)
    StartPauseButton.Position = UDim2.new(0, 10, 0, 210)
    StartPauseButton.Size = UDim2.new(0, 100, 0, 40)
    
    -- Кнопка Сброс
    local ResetButton = createButton(TimerFrame, "Reset", Color3.fromRGB(200, 0, 0), function()
        isRunning = false
        timeElapsed = 0
        TimeDisplay.Text = "00:00:00"
        StartPauseButton.Text = "Start"
    end)
    ResetButton.Position = UDim2.new(0, 120, 0, 210)
    ResetButton.Size = UDim2.new(0, 100, 0, 40)
    
    -- Кнопка Lap (запись круга)
    local LapButton = createButton(TimerFrame, "Lap", Color3.fromRGB(200, 0, 0), function()
        if isRunning and timeElapsed > 0 then
            table.insert(lapTimes, timeElapsed)
            -- Обновляем отображение кругов
            for i, lapLabel in pairs(TimerFrame:GetChildren()) do
                if lapLabel.Name:match("LapLabel") then
                    lapLabel:Destroy()
                end
            end
            for i, lapTime in ipairs(lapTimes) do
                if i <= 5 then -- Показываем максимум 5 последних кругов
                    local lapLabel = Instance.new("TextLabel")
                    lapLabel.Name = "LapLabel" .. i
                    lapLabel.Size = UDim2.new(1, 0, 0, 20)
                    lapLabel.Position = UDim2.new(0, 0, 0, 250 + (i-1)*25)
                    lapLabel.BackgroundTransparency = 1
                    lapLabel.Text = string.format("Lap %d: %s", i, formatTime(lapTime))
                    lapLabel.TextColor3 = Color3.fromRGB(200, 0, 0)
                    lapLabel.Font = Enum.Font.Code
                    lapLabel.TextSize = 16
                    lapLabel.Parent = TimerFrame
                end
            end
        end
    end)
    LapButton.Position = UDim2.new(0, 230, 0, 210)
    LapButton.Size = UDim2.new(0, 100, 0, 40)
    
    -- Кнопка Закрыть
    local CloseButton = createButton(TimerFrame, "X", Color3.fromRGB(200, 0, 0), function()
        ScreenGui:Destroy()
        activeTimerGui = nil
    end)
    CloseButton.Position = UDim2.new(1, -30, 0, 10)
    CloseButton.Size = UDim2.new(0, 20, 0, 20)
    
    -- Функция форматирования времени
    local function formatTime(time)
        local minutes = math.floor(time / 60)
        local seconds = math.floor(time % 60)
        local milliseconds = math.floor((time * 100) % 100)
        return string.format("%02d:%02d:%02d", minutes, seconds, milliseconds)
    end
    
    -- Обновление таймера
    game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
        if isRunning then
            timeElapsed = timeElapsed + deltaTime
            TimeDisplay.Text = formatTime(timeElapsed)
            
            -- Обновление лучшего времени
            if timeElapsed > 0 and (timeElapsed < bestTime or bestTime == math.huge) and not isRunning then
                bestTime = timeElapsed
                BestTimeLabel.Text = "Best: " .. formatTime(bestTime)
            end
        end
    end)
end)

createButton(MainFrame, "> text", Color3.fromRGB(200, 0, 0), function()
    local fonts = {
        Enum.Font.SourceSans,
        Enum.Font.Cartoon,
        Enum.Font.Code,
        Enum.Font.Arcade,
        Enum.Font.Fantasy,
        Enum.Font.Highway,
        Enum.Font.SciFi,
        Enum.Font.Bodoni,
        Enum.Font.Garamond,
        Enum.Font.AmaticSC,
		Enum.Font.FredokaOne,
		Enum.Font.Bangers,
    }
    
    local randomFont = fonts[math.random(1, #fonts)]
	local tweenService = game:GetService("TweenService")
    
    for _, object in pairs(game:GetDescendants()) do
        if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
            -- Создаем анимацию изменения прозрачности
            local tweenInfo = TweenInfo.new(
                0.3, -- длительность анимации в секундах
                Enum.EasingStyle.Quad, -- стиль анимации
                Enum.EasingDirection.Out -- направление анимации
            )
            
            -- Сначала делаем текст прозрачным
            local fadeOut = tweenService:Create(object, tweenInfo, {TextTransparency = 1})
            fadeOut:Play()
            
            -- После завершения первой анимации меняем шрифт и возвращаем видимость
            fadeOut.Completed:Connect(function()
                object.Font = randomFont
                local fadeIn = tweenService:Create(object, tweenInfo, {TextTransparency = 0})
                fadeIn:Play()
            end)
        end
    end
end)

local isInvisible = false -- Переменная для отслеживания текущего состояния

createButton(MainFrame, "> XRay", Color3.fromRGB(200, 0, 0), function()
    isInvisible = not isInvisible -- Переключаем состояние
    
    -- Проходим по всем объектам в игре
    for _, object in pairs(game:GetDescendants()) do
        -- Проверяем, является ли объект видимым элементом и не относится ли к исключениям
        if (object:IsA("BasePart") or object:IsA("Decal") or object:IsA("Texture")) and
           not object:IsDescendantOf(game.Players) and -- Исключаем игроков
           not object:IsA("SpawnLocation") then -- Исключаем точки спавна
            object.Transparency = isInvisible and 0.8 or 0
        end
    end
end)

createButton(MainFrame, "SpamBot + Walk-Bot", Color3.fromRGB(200, 0, 0), function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RbxNoobScripter/Admin-panel-Script-/refs/heads/main/qwerty.lua"))()
end)

createButton(MainFrame, "Lua IDE", Color3.fromRGB(200, 0, 0), function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RbxNoobScripter/Admin-panel-Script-/refs/heads/main/ytrewq1234556666.lua"))()
end)

-- Rejoin
createButton(MainFrame, "Rejoin Game", Color3.fromRGB(200, 0, 0), function()
    TeleportService:Teleport(game.PlaceId, LocalPlayer)
end)

-- Teleport to Player
local teleportVisible = false
local teleportButtons = {}
local function updateTeleportButtons()
    for _, button in pairs(teleportButtons) do button:Destroy() end
    teleportButtons = {}
    if teleportVisible then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                local button = createButton(MainFrame, "TP to " .. player.Name, Color3.fromRGB(200, 0, 0), function()
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                    else
                        notify("Teleportation failed!")
                    end
                end)
                table.insert(teleportButtons, button)
            end
        end
    end
end

createButton(MainFrame, "Teleport to Player", Color3.fromRGB(200, 0, 0), function()
    teleportVisible = not teleportVisible
    updateTeleportButtons()
end)

Players.PlayerAdded:Connect(function(player)
    if teleportVisible then updateTeleportButtons() end
end)
Players.PlayerRemoving:Connect(function(player)
    if teleportVisible then updateTeleportButtons() end
end)

-- Toggle Animation
ToggleButton.MouseButton1Click:Connect(function()
    ToggleSound:Play()
    if MainFrame.Visible then
        TweenService:Create(MainFrame, TweenInfo.new(0.3), {Position = UDim2.new(0.065, 0, -1, 0)}):Play()
        TweenService:Create(BackgroundFrame, TweenInfo.new(0.3), {Position = UDim2.new(0.05, 0, -1, 0)}):Play()
        wait(0.3)
        MainFrame.Visible = false
        BackgroundFrame.Visible = false
    else
        MainFrame.Visible = true
        BackgroundFrame.Visible = true
        MainFrame.Position = UDim2.new(0.065, 0, -1, 0)
        BackgroundFrame.Position = UDim2.new(0.05, 0, -1, 0)
        TweenService:Create(MainFrame, TweenInfo.new(0.3), {Position = UDim2.new(0.065, 0, 0.075, 0)}):Play()
        TweenService:Create(BackgroundFrame, TweenInfo.new(0.3), {Position = UDim2.new(0.05, 0, 0.05, 0)}):Play()
    end
end)

UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    MainFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 20)
end)

-- Loading Sequence
task.spawn(function()
    TweenService:Create(LoadingBar, TweenInfo.new(2, Enum.EasingStyle.Linear), {Size = UDim2.new(1, 0, 1, 0)}):Play()
    task.wait(2)
    TweenService:Create(LoadingFrame, TweenInfo.new(0.5), {BackgroundTransparency = 1, BorderSizePixel = 0}):Play()
    TweenService:Create(LoadingText, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
    TweenService:Create(LoadingBarFrame, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
    TweenService:Create(LoadingBar, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
    wait(0.5)
    LoadingFrame.Visible = false
    ToggleButton.Visible = true
end)
            firstClick = false
        end
        ScreenGui.Enabled = false
    end)

    LinkBox.Focused:Connect(function()
        setclipboard(LinkBox.Text)
        LinkBox.Text = "Link copied!"
        wait(2)
        LinkBox.Text = "https://loot-link.com/s?yV58fCdw"
    end)

    MainFrame.BackgroundTransparency = 1
    for i = 1, 0, -0.05 do
        MainFrame.BackgroundTransparency = i
        wait(0.02)
    end

    return ScreenGui
end

local supportGui = CreateSupportGui()

spawn(function()
    while true do
        wait(2400) 
        supportGui.Enabled = true
    end
end)
