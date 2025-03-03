-- Локальные переменные
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Создание кей-меню
local keyMenu = Instance.new("ScreenGui")
keyMenu.Name = "KeyMenu"
keyMenu.Parent = playerGui

-- Фон кей-меню
local keyFrame = Instance.new("Frame")
keyFrame.Name = "KeyFrame"
keyFrame.Size = UDim2.new(0, 450, 0, 250)
keyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
keyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
keyFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
keyFrame.BorderSizePixel = 0
keyFrame.Parent = keyMenu

local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0, 20)
keyCorner.Parent = keyFrame

-- Заголовок
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0.2, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Enter Your Key"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 24
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextYAlignment = Enum.TextYAlignment.Center
titleLabel.Parent = keyFrame

-- Текстовый бокс для ввода ключа
local keyBox = Instance.new("TextBox")
keyBox.Name = "KeyBox"
keyBox.Size = UDim2.new(0.8, 0, 0.25, 0)
keyBox.Position = UDim2.new(0.1, 0, 0.3, 0)
keyBox.PlaceholderText = "Enter Key Here"
keyBox.Text = ""
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
keyBox.Font = Enum.Font.Gotham
keyBox.TextSize = 18
keyBox.ClearTextOnFocus = true
keyBox.Parent = keyFrame

local keyBoxCorner = Instance.new("UICorner")
keyBoxCorner.CornerRadius = UDim.new(0, 10)
keyBoxCorner.Parent = keyBox

-- Кнопка отправки ключа
local sendKeyButton = Instance.new("TextButton")
sendKeyButton.Name = "SendKeyButton"
sendKeyButton.Size = UDim2.new(0.35, 0, 0.2, 0)
sendKeyButton.Position = UDim2.new(0.1, 0, 0.65, 0)
sendKeyButton.Text = "Submit Key"
sendKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
sendKeyButton.BackgroundColor3 = Color3.fromRGB(0, 128, 255)
sendKeyButton.Font = Enum.Font.GothamBold
sendKeyButton.TextSize = 18
sendKeyButton.Parent = keyFrame

local sendKeyCorner = Instance.new("UICorner")
sendKeyCorner.CornerRadius = UDim.new(0, 10)
sendKeyCorner.Parent = sendKeyButton

-- Кнопка получения ключа
local getKeyButton = Instance.new("TextButton")
getKeyButton.Name = "GetKeyButton"
getKeyButton.Size = UDim2.new(0.35, 0, 0.2, 0)
getKeyButton.Position = UDim2.new(0.55, 0, 0.65, 0)
getKeyButton.Text = "Get Key"
getKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyButton.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
getKeyButton.Font = Enum.Font.GothamBold
getKeyButton.TextSize = 18
getKeyButton.Parent = keyFrame

local getKeyCorner = Instance.new("UICorner")
getKeyCorner.CornerRadius = UDim.new(0, 10)
getKeyCorner.Parent = getKeyButton

-- Главное меню
local mainMenu = Instance.new("ScreenGui")
mainMenu.Name = "MainMenu"
mainMenu.Parent = playerGui
mainMenu.Enabled = false

-- Главный фрейм
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 600, 0, 400)
mainFrame.Position = UDim2.new(0.6, -200, 0.6, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BackgroundTransparency = 0.1
mainFrame.BorderSizePixel = 0
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Parent = mainMenu

-- Закругление углов
local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 20)
mainCorner.Parent = mainFrame

local welcomeLabel = Instance.new("TextLabel")
welcomeLabel.Name = "WelcomeLabel"
welcomeLabel.Size = UDim2.new(1, 0, 0.2, 0)
welcomeLabel.Position = UDim2.new(0, 0, 0, 0)
welcomeLabel.BackgroundTransparency = 1
welcomeLabel.Text = "Welcome to the Main Menu!"
welcomeLabel.Font = Enum.Font.GothamBold
welcomeLabel.TextSize = 24
welcomeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
welcomeLabel.Parent = mainFrame

-- Логика отправки ключа
local correctKey = "SSD2025"

sendKeyButton.MouseButton1Click:Connect(function()
    if keyBox.Text == correctKey then
        keyMenu.Enabled = false
        mainMenu.Enabled = true
        print("Access Granted!")
    else
        keyBox.Text = ""
        keyBox.PlaceholderText = "Invalid Key. Try Again!"
    end
end)

-- Копирование ссылки в буфер обмена и показ "Copied"
getKeyButton.MouseButton1Click:Connect(function()
    local copyText = "https://funpay.com/uk/lots/offer?id=37609264"
    
    -- Копирование текста в буфер обмена (имитация)
    setclipboard(copyText)
    
    -- Показать сообщение "Copied"
    local copiedLabel = Instance.new("TextLabel")
    copiedLabel.Size = UDim2.new(1, 0, 0.2, 0)
    copiedLabel.Position = UDim2.new(0, 0, 0.9, 0)
    copiedLabel.BackgroundTransparency = 1
    copiedLabel.Text = "Copied"
    copiedLabel.Font = Enum.Font.GothamBold
    copiedLabel.TextSize = 24
    copiedLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    copiedLabel.TextYAlignment = Enum.TextYAlignment.Center
    copiedLabel.Parent = keyFrame

    -- Через 1.5 секунды скрыть сообщение
    wait(1.5)
    copiedLabel:Destroy()

    print("Link copied to clipboard: " .. copyText)
end)




-- Левая панель
local leftPanel = Instance.new("Frame")
leftPanel.Size = UDim2.new(0, 150, 1, 0)
leftPanel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
leftPanel.BorderSizePixel = 0
leftPanel.Parent = mainFrame

local leftCorner = Instance.new("UICorner")
leftCorner.CornerRadius = UDim.new(0, 20)
leftCorner.Parent = leftPanel

-- Раздел Sword Fight
local swordFightButton = Instance.new("TextButton")
swordFightButton.Size = UDim2.new(0.9, 0, 0, 50)
swordFightButton.Position = UDim2.new(0.05, 0, 0.1, 0)
swordFightButton.Text = "Sword Fight"
swordFightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
swordFightButton.BackgroundColor3 = Color3.fromRGB(0, 128, 255)
swordFightButton.Font = Enum.Font.GothamBold
swordFightButton.TextSize = 14
swordFightButton.Parent = leftPanel

local swordCorner = Instance.new("UICorner")
swordCorner.CornerRadius = UDim.new(0, 15)
swordCorner.Parent = swordFightButton

-- Раздел Credits
local creditsButton = Instance.new("TextButton")
creditsButton.Size = UDim2.new(0.9, 0, 0, 50)
creditsButton.Position = UDim2.new(0.05, 0, 0.3, 0)
creditsButton.Text = "Credits"
creditsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
creditsButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
creditsButton.Font = Enum.Font.GothamBold
creditsButton.TextSize = 14
creditsButton.Parent = leftPanel

local creditsCorner = Instance.new("UICorner")
creditsCorner.CornerRadius = UDim.new(0, 15)
creditsCorner.Parent = creditsButton

-- Раздел AutoDuels
local autoDuelsButton = Instance.new("TextButton")
autoDuelsButton.Size = UDim2.new(0.9, 0, 0, 50)
autoDuelsButton.Position = UDim2.new(0.05, 0, 0.5, 0) -- Позиция между Sword Fight и Credits
autoDuelsButton.Text = "AutoDuels"
autoDuelsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
autoDuelsButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50) -- Красный цвет для кнопки
autoDuelsButton.Font = Enum.Font.GothamBold
autoDuelsButton.TextSize = 14
autoDuelsButton.Parent = leftPanel

local autoDuelsCorner = Instance.new("UICorner")
autoDuelsCorner.CornerRadius = UDim.new(0, 15)
autoDuelsCorner.Parent = autoDuelsButton

-- Создаем отдельное меню для AutoDuels
local autoDuelsFrame = Instance.new("Frame")
autoDuelsFrame.Size = UDim2.new(0.7, 0, 0.5, 0) -- Размер раздела
autoDuelsFrame.Position = UDim2.new(0.25, 0, 0.4, 0) -- Позиция раздела
autoDuelsFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
autoDuelsFrame.BorderSizePixel = 0
autoDuelsFrame.Visible = false -- Изначально скрыт
autoDuelsFrame.Parent = mainFrame

local autoDuelsFrameCorner = Instance.new("UICorner")
autoDuelsFrameCorner.CornerRadius = UDim.new(0, 15)
autoDuelsFrameCorner.Parent = autoDuelsFrame

-- Секция для 10 Robux
local robux10Section = Instance.new("TextLabel")
robux10Section.Size = UDim2.new(0.9, 0, 0.1, 0)
robux10Section.Position = UDim2.new(0.05, 0, 0.05, 0)
robux10Section.Text = "10 Robux"
robux10Section.TextColor3 = Color3.fromRGB(255, 255, 255)
robux10Section.Font = Enum.Font.GothamBold
robux10Section.TextSize = 16
robux10Section.BackgroundTransparency = 1
robux10Section.Parent = autoDuelsFrame

-- Поле для ввода Asset ID (10 Robux)
local asset10Input = Instance.new("TextBox")
asset10Input.Size = UDim2.new(0.9, 0, 0.1, 0)
asset10Input.Position = UDim2.new(0.05, 0, 0.15, 0)
asset10Input.PlaceholderText = "Asset ID"
asset10Input.Text = ""
asset10Input.TextColor3 = Color3.fromRGB(255, 255, 255)
asset10Input.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
asset10Input.Font = Enum.Font.Gotham
asset10Input.TextSize = 14
asset10Input.Parent = autoDuelsFrame

local asset10InputCorner = Instance.new("UICorner")
asset10InputCorner.CornerRadius = UDim.new(0, 10)
asset10InputCorner.Parent = asset10Input

-- Поле для ввода Gamepass ID (10 Robux)
local gamepass10Input = Instance.new("TextBox")
gamepass10Input.Size = UDim2.new(0.9, 0, 0.1, 0)
gamepass10Input.Position = UDim2.new(0.05, 0, 0.3, 0)
gamepass10Input.PlaceholderText = "Gamepass ID"
gamepass10Input.Text = ""
gamepass10Input.TextColor3 = Color3.fromRGB(255, 255, 255)
gamepass10Input.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
gamepass10Input.Font = Enum.Font.Gotham
gamepass10Input.TextSize = 14
gamepass10Input.Parent = autoDuelsFrame

local gamepass10InputCorner = Instance.new("UICorner")
gamepass10InputCorner.CornerRadius = UDim.new(0, 10)
gamepass10InputCorner.Parent = gamepass10Input

-- Секция для 20 Robux
local robux20Section = Instance.new("TextLabel")
robux20Section.Size = UDim2.new(0.9, 0, 0.1, 0)
robux20Section.Position = UDim2.new(0.05, 0, 0.45, 0)
robux20Section.Text = "20 Robux"
robux20Section.TextColor3 = Color3.fromRGB(255, 255, 255)
robux20Section.Font = Enum.Font.GothamBold
robux20Section.TextSize = 16
robux20Section.BackgroundTransparency = 1
robux20Section.Parent = autoDuelsFrame

-- Поле для ввода Asset ID (20 Robux)
local asset20Input = Instance.new("TextBox")
asset20Input.Size = UDim2.new(0.9, 0, 0.1, 0)
asset20Input.Position = UDim2.new(0.05, 0, 0.55, 0)
asset20Input.PlaceholderText = "Asset ID"
asset20Input.Text = ""
asset20Input.TextColor3 = Color3.fromRGB(255, 255, 255)
asset20Input.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
asset20Input.Font = Enum.Font.Gotham
asset20Input.TextSize = 14
asset20Input.Parent = autoDuelsFrame

local asset20InputCorner = Instance.new("UICorner")
asset20InputCorner.CornerRadius = UDim.new(0, 10)
asset20InputCorner.Parent = asset20Input

-- Поле для ввода Gamepass ID (20 Robux)
local gamepass20Input = Instance.new("TextBox")
gamepass20Input.Size = UDim2.new(0.9, 0, 0.1, 0)
gamepass20Input.Position = UDim2.new(0.05, 0, 0.7, 0)
gamepass20Input.PlaceholderText = "Gamepass ID"
gamepass20Input.Text = ""
gamepass20Input.TextColor3 = Color3.fromRGB(255, 255, 255)
gamepass20Input.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
gamepass20Input.Font = Enum.Font.Gotham
gamepass20Input.TextSize = 14
gamepass20Input.Parent = autoDuelsFrame

local gamepass20InputCorner = Instance.new("UICorner")
gamepass20InputCorner.CornerRadius = UDim.new(0, 10)
gamepass20InputCorner.Parent = gamepass20Input

-- Логика для 10 Robux (Asset ID)
asset10Input.FocusLost:Connect(function()
    local assetId = asset10Input.Text
    if assetId ~= "" then
        while true do
            local args = {
                [1] = "SwordFight",
                [2] = 10,
                [3] = {
                    ["assetType"] = "Asset",
                    ["assetId"] = assetId
                }
            }
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))
            wait(1)
        end
    end
end)

-- Логика для 10 Robux (Gamepass ID)
gamepass10Input.FocusLost:Connect(function()
    local gamepassId = gamepass10Input.Text
    if gamepassId ~= "" then
        while true do
            local args = {
                [1] = "SwordFight",
                [2] = 10,
                [3] = {
                    ["assetType"] = "GamePass",
                    ["assetId"] = gamepassId
                }
            }
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))
            wait(1)
        end
    end
end)

-- Логика для 20 Robux (Asset ID)
asset20Input.FocusLost:Connect(function()
    local assetId = asset20Input.Text
    if assetId ~= "" then
        while true do
            local args = {
                [1] = "SwordFight",
                [2] = 20,
                [3] = {
                    ["assetType"] = "Asset",
                    ["assetId"] = assetId
                }
            }
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))
            wait(1)
        end
    end
end)

-- Логика для 20 Robux (Gamepass ID)
gamepass20Input.FocusLost:Connect(function()
    local gamepassId = gamepass20Input.Text
    if gamepassId ~= "" then
        while true do
            local args = {
                [1] = "SwordFight",
                [2] = 20,
                [3] = {
                    ["assetType"] = "GamePass",
                    ["assetId"] = gamepassId
                }
            }
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))
            wait(1)
        end
    end
end)

-- Логика переключения разделов
autoDuelsButton.MouseButton1Click:Connect(function()
    -- Скрываем все разделы
    if autoFarmButton then
        autoFarmButton.Visible = false
    end
    if creditsText then
        creditsText.Visible = false
    end
    -- Показываем раздел AutoDuels
    autoDuelsFrame.Visible = true
end)

swordFightButton.MouseButton1Click:Connect(function()
    -- Показываем раздел Sword Fight
    if autoFarmButton then
        autoFarmButton.Visible = true
    end
    -- Скрываем раздел AutoDuels
    if autoDuelsFrame then
        autoDuelsFrame.Visible = false
    end
end)

creditsButton.MouseButton1Click:Connect(function()
    -- Показываем раздел Credits
    if creditsText then
        creditsText.Visible = true
    end
    -- Скрываем раздел AutoDuels
    if autoDuelsFrame then
        autoDuelsFrame.Visible = false
    end
end)

-- Нижний блок с аватаром и ником
local avatarFrame = Instance.new("Frame")
avatarFrame.Size = UDim2.new(1, 0, 0, 100)
avatarFrame.Position = UDim2.new(0, 0, 1, -100)
avatarFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
avatarFrame.BorderSizePixel = 0
avatarFrame.Parent = leftPanel

local avatarCorner = Instance.new("UICorner")
avatarCorner.CornerRadius = UDim.new(0, 15)
avatarCorner.Parent = avatarFrame

local avatarImage = Instance.new("ImageLabel")
avatarImage.Size = UDim2.new(0, 80, 0, 80)
avatarImage.Position = UDim2.new(0.05, 0, 0.1, 0)
avatarImage.Image = "rbxthumb://type=AvatarHeadShot&id=" .. player.UserId .. "&w=150&h=150"
avatarImage.BackgroundTransparency = 1
avatarImage.Parent = avatarFrame

local playerName = Instance.new("TextLabel")
playerName.Size = UDim2.new(0.6, 0, 0.5, 0)
playerName.Position = UDim2.new(0.3, 0, 0.25, 0)
playerName.Text = player.Name
playerName.TextColor3 = Color3.fromRGB(255, 255, 255)
playerName.Font = Enum.Font.GothamBold
playerName.TextSize = 14
playerName.BackgroundTransparency = 1
playerName.Parent = avatarFrame

-- Отображение Credits
local creditsText = Instance.new("TextLabel")
creditsText.Size = UDim2.new(0.7, 0, 0.5, 0)
creditsText.Position = UDim2.new(0.25, 0, 0.4, 0)
creditsText.Text = "by RobScriper"
creditsText.TextColor3 = Color3.fromRGB(200, 200, 200)
creditsText.Font = Enum.Font.Gotham
creditsText.TextSize = 12
creditsText.Visible = false
creditsText.BackgroundTransparency = 1
creditsText.Parent = mainFrame


-- Кнопка автофарма
local autoFarmButton = Instance.new("TextButton")
autoFarmButton.Size = UDim2.new(0.5, 0, 0.1, 0)
autoFarmButton.Position = UDim2.new(0.3, 0, 0.35, 0)
autoFarmButton.Text = "Enable AutoFarm"
autoFarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
autoFarmButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
autoFarmButton.Font = Enum.Font.GothamBold
autoFarmButton.TextSize = 16
autoFarmButton.Visible = true
autoFarmButton.Parent = mainFrame

local autoFarmCorner = Instance.new("UICorner")
autoFarmCorner.CornerRadius = UDim.new(0, 15)
autoFarmCorner.Parent = autoFarmButton

local autoFarmActive = false
local autoFarmConnection
local healthRegenerationConnection
local godModeActive = false
local player = game.Players.LocalPlayer

local function getNearestPlayer()
    local nearestPlayer = nil
    local shortestDistance = math.huge

    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - otherPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestPlayer = otherPlayer
            end
        end
    end

    return nearestPlayer
end

local function toggleGodMode()
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid:SetAttribute("CanTakeDamage", not godModeActive)
    end
end

local function flyUp(duration, height)
    local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        local targetPosition = humanoidRootPart.Position + Vector3.new(0, height, 0)
        local startTime = tick()
        while tick() - startTime < duration do
            humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position:Lerp(targetPosition, 0.1))
            task.wait()
        end
    end
end

local function startAutoFarm()
    autoFarmActive = true
    autoFarmButton.Text = "Disable AutoFarm"
    autoFarmButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)

    autoFarmConnection = game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
        if autoFarmActive then
            local tool = player.Backpack:FindFirstChildOfClass("Tool") or player.Character:FindFirstChildOfClass("Tool")
            local nearestPlayer = getNearestPlayer()

            if tool and nearestPlayer then
                if not godModeActive then
                    godModeActive = true
                    toggleGodMode()
                end
                
                local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    local direction = (nearestPlayer.Character.HumanoidRootPart.Position - humanoidRootPart.Position).unit
                    humanoidRootPart.Velocity = direction * 200
                    humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(360 * deltaTime * 5), 0)
                end
                
                tool:Activate()
            end
        end
    end)

    healthRegenerationConnection = player.Character:FindFirstChildOfClass("Humanoid").HealthChanged:Connect(function(health)
        if health < player.Character.Humanoid.MaxHealth then
            flyUp(2, 50)
            task.wait(2)
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.Health = humanoid.MaxHealth
            end
        end
    end)
end

local function stopAutoFarm()
    autoFarmActive = false
    autoFarmButton.Text = "Enable AutoFarm"
    autoFarmButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)

    if autoFarmConnection then
        autoFarmConnection:Disconnect()
        autoFarmConnection = nil
    end

    if healthRegenerationConnection then
        healthRegenerationConnection:Disconnect()
        healthRegenerationConnection = nil
    end

    if godModeActive then
        godModeActive = false
        toggleGodMode()
    end
end

autoFarmButton.MouseButton1Click:Connect(function()
    if autoFarmActive then
        stopAutoFarm()
    else
        startAutoFarm()
    end
end)


-- Логика отображения разделов
swordFightButton.MouseButton1Click:Connect(function()
	autoFarmButton.Visible = true
	creditsText.Visible = false
end)

creditsButton.MouseButton1Click:Connect(function()
	autoFarmButton.Visible = false
	creditsText.Visible = true
end)

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local exitBar = Instance.new("Frame")
exitBar.Size = UDim2.new(0.4, 0, 0, 10) -- Видимый размер полоски
exitBar.Position = UDim2.new(0.5, -75, 1, -15)
exitBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exitBar.BorderSizePixel = 0
exitBar.Parent = mainFrame

local invisibleButton = Instance.new("TextButton")
invisibleButton.Size = UDim2.new(2, 0, 2, 0) -- Увеличенная невидимая кнопка
invisibleButton.Position = UDim2.new(-0.5, 0, -0.5, 0) -- Центрируем вокруг полоски
invisibleButton.BackgroundTransparency = 1
invisibleButton.Text = ""
invisibleButton.Parent = exitBar

local exitBarCorner = Instance.new("UICorner")
exitBarCorner.CornerRadius = UDim.new(0, 5)
exitBarCorner.Parent = exitBar

-- Логика перетаскивания
local isDragging = false
local dragStart, startPos = nil, nil

invisibleButton.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        
        -- Анимация увеличения полоски при начале перетаскивания
        TweenService:Create(exitBar, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0.45, 0, 0, 15)}):Play()
    end
end)

invisibleButton.InputChanged:Connect(function(input)
    if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        local newPos = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
        mainFrame.Position = newPos
        exitBar.Position = UDim2.new(0.5, -75, 1, -15)
    end
end)

invisibleButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
        
        -- Анимация возврата полоски в исходное состояние
        local tween = TweenService:Create(exitBar, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0.4, 0, 0, 10), Position = UDim2.new(0.5, -75, 1, -15)})
        tween:Play()
    end
end)
