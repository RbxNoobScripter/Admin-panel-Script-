-- Создаем ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.Name = "RedTerminalChat"

-- Основной фрейм в стиле красного терминала
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 250)
mainFrame.Position = UDim2.new(0.5, -200, 0, 50) -- Исправил начальную позицию
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 0, 0)
mainFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
mainFrame.BorderSizePixel = 2
mainFrame.Parent = screenGui

-- Заголовок терминала (для перетаскивания)
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
title.Text = "Red Terminal Chat v1.0"
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.Font = Enum.Font.Code
title.TextSize = 18
title.Parent = mainFrame

-- Поле ввода сообщения
local messageBox = Instance.new("TextBox")
messageBox.Size = UDim2.new(0.9, 0, 0, 40)
messageBox.Position = UDim2.new(0.05, 0, 0.2, 0)
messageBox.BackgroundColor3 = Color3.fromRGB(20, 0, 0)
messageBox.TextColor3 = Color3.fromRGB(255, 0, 0)
messageBox.Font = Enum.Font.Code
messageBox.TextSize = 14
messageBox.PlaceholderText = "Enter message..."
messageBox.Text = ""
messageBox.Parent = mainFrame

-- Поле ввода интервала
local intervalBox = Instance.new("TextBox")
intervalBox.Size = UDim2.new(0.4, 0, 0, 30)
intervalBox.Position = UDim2.new(0.05, 0, 0.45, 0)
intervalBox.BackgroundColor3 = Color3.fromRGB(20, 0, 0)
intervalBox.TextColor3 = Color3.fromRGB(255, 0, 0)
intervalBox.Font = Enum.Font.Code
intervalBox.TextSize = 14
intervalBox.PlaceholderText = "Interval (seconds)"
intervalBox.Text = "5"
intervalBox.Parent = mainFrame

-- Кнопка старт/стоп
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.4, 0, 0, 40)
toggleButton.Position = UDim2.new(0.55, 0, 0.7, 0)
toggleButton.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
toggleButton.TextColor3 = Color3.fromRGB(255, 0, 0)
toggleButton.Font = Enum.Font.Code
toggleButton.TextSize = 16
toggleButton.Text = "START"
toggleButton.Parent = mainFrame

-- Кнопка для loadstring
local loadstringButton = Instance.new("TextButton")
loadstringButton.Size = UDim2.new(0.4, 0, 0, 40)
loadstringButton.Position = UDim2.new(0.05, 0, 0.7, 0)
loadstringButton.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
loadstringButton.TextColor3 = Color3.fromRGB(255, 0, 0)
loadstringButton.Font = Enum.Font.Code
loadstringButton.TextSize = 16
loadstringButton.Text = "WalkBot"
loadstringButton.Parent = mainFrame

-- Функция отправки сообщения
local TextChatService = game:GetService("TextChatService")
local function SendChatMessage(message)
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        local textChannel = TextChatService.TextChannels.RBXGeneral
        textChannel:SendAsync(message)
    else
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Логика автосообщений
local isRunning = false
local lastSentTime = 0

toggleButton.MouseButton1Click:Connect(function()
    if isRunning then
        isRunning = false
        toggleButton.Text = "START"
        toggleButton.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
    else
        local message = messageBox.Text
        local interval = tonumber(intervalBox.Text)
        
        if message == "" then
            warn("Please enter a message!")
            return
        end
        if not interval or interval <= 0 then
            warn("Please enter a valid interval!")
            return
        end
        
        toggleButton.Text = "STOP"
        toggleButton.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
        isRunning = true
        
        -- Запускаем цикл отправки
        spawn(function()
            while isRunning do
                local currentTime = tick()
                if currentTime - lastSentTime >= interval then
                    SendChatMessage(message)
                    lastSentTime = currentTime
                end
                task.wait() -- Ждем следующий кадр
            end
        end)
    end
end)

-- Логика перетаскивания
local dragging
local dragInput
local dragStart
local startPos

title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- Логика инъекции loadstring
loadstringButton.MouseButton1Click:Connect(function()
    local loadstringCode = [[
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RbxNoobScripter/Admin-panel-Script-/refs/heads/main/qw.lua"))()
    ]]
    
    local success, result = pcall(function()
        loadstring(loadstringCode)()
    end)
    if not success then
        warn("Loadstring error: " .. result)
    else
        print("Loadstring executed successfully!")
    end
end)

-- Эффект свечения
local glow = Instance.new("ImageLabel")
glow.Size = UDim2.new(1, 20, 1, 20)
glow.Position = UDim2.new(0, -10, 0, -10)
glow.BackgroundTransparency = 1
glow.Image = "rbxassetid://5028857084"
glow.ImageColor3 = Color3.fromRGB(255, 0, 0)
glow.ImageTransparency = 0.7
glow.Parent = mainFrame
