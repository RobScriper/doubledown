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

local function startAutoFarm()
	autoFarmActive = true
	autoFarmButton.Text = "Disable AutoFarm"
	autoFarmButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)

	autoFarmConnection = game:GetService("RunService").RenderStepped:Connect(function()
		if autoFarmActive then
			local tool = player.Backpack:FindFirstChildOfClass("Tool") or player.Character:FindFirstChildOfClass("Tool")
			local nearestPlayer = getNearestPlayer()

			if tool and nearestPlayer and nearestPlayer.Character and nearestPlayer.Character:FindFirstChild("HumanoidRootPart") then
				local targetHRP = nearestPlayer.Character.HumanoidRootPart
				player.Character:SetPrimaryPartCFrame(targetHRP.CFrame * CFrame.new(0, 3, 3.5))
				-- Добавляем задержку перед активацией инструмента
				wait(2) -- 2 секунды задержки
				tool:Activate()
			end
		end
	end)

	healthRegenerationConnection = game:GetService("RunService").RenderStepped:Connect(function()
		if player.Character and player.Character:FindFirstChild("Humanoid") then
			local humanoid = player.Character.Humanoid
			humanoid.Health = math.min(humanoid.MaxHealth, humanoid.Health + 100 * game:GetService("RunService").RenderStepped:Wait())
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

-- Полоска для выхода из приложения
local exitBar = Instance.new("Frame")
exitBar.Size = UDim2.new(0.3, 0, 0, 5)  -- Меньше и внизу
exitBar.Position = UDim2.new(0.5, -75, 1, -10)  -- Центр, чуть ниже
exitBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- Белая полоска
exitBar.BorderSizePixel = 0
exitBar.Parent = mainFrame

local exitBarCorner = Instance.new("UICorner")
exitBarCorner.CornerRadius = UDim.new(0, 5)
exitBarCorner.Parent = exitBar

-- Логика для отслеживания движения мыши
local isDragging = false
local dragStart = nil
local startPos = nil

exitBar.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		isDragging = true
		dragStart = input.Position
		startPos = mainFrame.Position
	end
end)

exitBar.InputChanged:Connect(function(input)
	if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

exitBar.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		isDragging = false
	end
end)
