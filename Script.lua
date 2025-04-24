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
]]--

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
