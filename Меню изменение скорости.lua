game.StarterGui:SetCore("SendNotification", {Title = "亗 munraito(@WTFZyb)", Text = "✅ Скрипт загрузился и может полноценно работать!", Duration = 8})
game.StarterGui:SetCore("SendNotification", {Title = "亗 munraito(@WTFZyb)", Text = "✅ Скрипт загрузился и может полноценно работать!", Duration = 8})
game.StarterGui:SetCore("SendNotification", {Title = "亗 munraito(@WTFZyb)", Text = "✅ Скрипт загрузился и может полноценно работать!", Duration = 8})

local welcomeSoundId = "rbxassetid://9125402735"
local clickSoundId = "rbxassetid://876940251"

local welcomeSound = Instance.new("Sound")
welcomeSound.SoundId = welcomeSoundId
welcomeSound.Parent = game.Workspace
welcomeSound.Volume = 3

local clickSound = Instance.new("Sound")
clickSound.SoundId = clickSoundId
clickSound.Volume = 4
clickSound.Parent = game.Workspace

welcomeSound:Play()
Wait(0.2)
welcomeSound:Play()
Wait(0.2)
welcomeSound:Play()

local gui = Instance.new("ScreenGui")
gui.Name = "SpeedMenu"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Text = "Показать/Скрыть меню"
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.Size = UDim2.new(0, 150, 0, 50)
toggleButton.Parent = gui

local menuFrame = Instance.new("Frame")
menuFrame.Name = "MenuFrame"
menuFrame.Position = UDim2.new(0, 10, 0, 70)
menuFrame.Size = UDim2.new(0, 150, 0, 140)
menuFrame.Visible = false
menuFrame.Parent = gui

local button1 = Instance.new("TextButton")
button1.Name = "Button1"
button1.Text = "Увеличение скорости +5"
button1.Position = UDim2.new(0, 0, 0, 0)
button1.Size = UDim2.new(1, 0, 0, 40)
button1.Parent = menuFrame

local button2 = button1:Clone()
button2.Name = "Button2"
button2.Text = "Уменьшение скорости -5"
button2.Position = UDim2.new(0, 0, 0, 40)
button2.Parent = menuFrame

local button3 = button1:Clone()
button3.Name = "Button3"
button3.Text = "Обычная скорость 16"
button3.Position = UDim2.new(0, 0, 0, 80)
button3.Parent = menuFrame

local speedText = Instance.new("TextLabel")
speedText.Name = "SpeedText"
speedText.Text = "Скорость: 16"
speedText.Position = UDim2.new(0, 0, 0, 121)
speedText.Size = UDim2.new(0, 150, 0, 20)
speedText.Parent = menuFrame

local speed = 16

button1.MouseButton1Click:Connect(function()
    clickSound:Play()
    speed = speed + 5
    speedText.Text = "Скорость: " .. speed

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

button2.MouseButton1Click:Connect(function()
    clickSound:Play()
    speed = speed - 5
    speedText.Text = "Скорость: " .. speed

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

button3.MouseButton1Click:Connect(function()
    
    clickSound:Play()
    speed = 16
    speedText.Text = "Скорость: " .. speed

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

toggleButton.MouseButton1Click:Connect(function()
    
    clickSound:Play()
    menuFrame.Visible = not menuFrame.Visible
end)
