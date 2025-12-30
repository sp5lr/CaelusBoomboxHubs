-- Kore's Hub V1 for Caelus.lol
-- Modified for 2020 Roblox Studio compatibility

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Visualizer = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Waves0 = Instance.new("TextLabel")
local Presets0 = Instance.new("TextLabel")
local Properties = Instance.new("TextLabel")
local AudioId = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local visualize = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Speed = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local WaveInt = Instance.new("TextBox")
local UICorner_6 = Instance.new("UICorner")
local Distance = Instance.new("TextBox")
local UICorner_7 = Instance.new("UICorner")
local Responsiveness = Instance.new("TextBox")
local UICorner_8 = Instance.new("UICorner")
local Bass = Instance.new("TextBox")
local UICorner_9 = Instance.new("UICorner")
local Presets = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local MAX = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local MAY = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local MAZ = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local Infinity = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local Custom = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local Waves = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local WAX = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local WAY = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local WAZ = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local Custom_2 = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local WavesOn = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local VisWait = Instance.new("TextBox")
local UICorner_22 = Instance.new("UICorner")
local Sync = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local WaveCount = Instance.new("TextBox")
local UICorner_24 = Instance.new("UICorner")
local VisualizerB = Instance.new("TextButton")
local LoggerB = Instance.new("TextButton")
local ScriptsB = Instance.new("TextButton")
local Scripts = Instance.new("Frame")
local UICorner_25 = Instance.new("UICorner")
local Amount = Instance.new("TextBox")
local UICorner_26 = Instance.new("UICorner")
local Dupe = Instance.new("TextButton")
local UICorner_27 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local StealTools = Instance.new("TextButton")
local UICorner_28 = Instance.new("UICorner")
local RemoveMesh = Instance.new("TextButton")
local UICorner_29 = Instance.new("UICorner")
local AntiLoggerB = Instance.new("TextButton")
local Logger = Instance.new("Frame")
local UICorner_30 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local UICorner_31 = Instance.new("UICorner")
local Minify = Instance.new("TextButton")
local UICorner_32 = Instance.new("UICorner")
local UICorner_33 = Instance.new("UICorner")

-- Properties (compatible with 2020)
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 100

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.Position = UDim2.new(0.294, 0, 0.347, 0)
Frame.Size = UDim2.new(0, 363, 0, 24)
Frame.ZIndex = 2

Main.Name = "Main"
Main.Parent = Frame
Main.Active = true
Main.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 2
Main.ClipsDescendants = true
Main.Position = UDim2.new(0, 0, 0, 24)
Main.Size = UDim2.new(0, 364, 0, 218)
UICorner.Parent = Main

-- Visualizer Frame
Visualizer.Name = "Visualizer"
Visualizer.Parent = Main
Visualizer.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Visualizer.ClipsDescendants = true
Visualizer.Position = UDim2.new(0.035, 0, 0.225, 0)
Visualizer.Size = UDim2.new(0, 342, 0, 160)
UICorner_2.Parent = Visualizer

-- Labels
Waves0.Name = "Waves0"
Waves0.Parent = Visualizer
Waves0.BackgroundTransparency = 1
Waves0.Position = UDim2.new(0.787, 0, 0.062, 0)
Waves0.Size = UDim2.new(0, 65, 0, 18)
Waves0.Font = Enum.Font.SourceSansSemibold
Waves0.Text = "Waves"
Waves0.TextColor3 = Color3.fromRGB(255, 255, 255)
Waves0.TextSize = 14

Presets0.Name = "Presets0"
Presets0.Parent = Visualizer
Presets0.BackgroundTransparency = 1
Presets0.Position = UDim2.new(0.565, 0, 0.062, 0)
Presets0.Size = UDim2.new(0, 65, 0, 18)
Presets0.Font = Enum.Font.SourceSansSemibold
Presets0.Text = "Presets"
Presets0.TextColor3 = Color3.fromRGB(255, 255, 255)
Presets0.TextSize = 14

Properties.Name = "Properties"
Properties.Parent = Visualizer
Properties.BackgroundTransparency = 1
Properties.Position = UDim2.new(0.194, 0, 0.062, 0)
Properties.Size = UDim2.new(0, 66, 0, 18)
Properties.Font = Enum.Font.SourceSansSemibold
Properties.Text = "Properties"
Properties.TextColor3 = Color3.fromRGB(255, 255, 255)
Properties.TextSize = 14

-- Input Fields
AudioId.Name = "AudioId"
AudioId.Parent = Visualizer
AudioId.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
AudioId.BorderColor3 = Color3.fromRGB(54, 54, 54)
AudioId.Position = UDim2.new(0.034, 0, 0.34, 0)
AudioId.Size = UDim2.new(0, 85, 0, 20)
AudioId.Font = Enum.Font.SourceSansSemibold
AudioId.PlaceholderText = "Audio-ID"
AudioId.Text = ""
AudioId.TextColor3 = Color3.fromRGB(255, 255, 255)
AudioId.TextSize = 14
UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = AudioId

visualize.Name = "visualize"
visualize.Parent = Visualizer
visualize.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
visualize.BorderColor3 = Color3.fromRGB(54, 54, 54)
visualize.Position = UDim2.new(0.034, 0, 0.19, 0)
visualize.Size = UDim2.new(0, 85, 0, 20)
visualize.Font = Enum.Font.SourceSansSemibold
visualize.Text = "Visualize"
visualize.TextColor3 = Color3.fromRGB(0, 0, 0)
visualize.TextSize = 14
UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = visualize

Speed.Name = "Speed"
Speed.Parent = Visualizer
Speed.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Speed.BorderColor3 = Color3.fromRGB(54, 54, 54)
Speed.Position = UDim2.new(0.034, 0, 0.64, 0)
Speed.Size = UDim2.new(0, 85, 0, 20)
Speed.Font = Enum.Font.SourceSansSemibold
Speed.PlaceholderText = "Speed (1)"
Speed.Text = ""
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextSize = 14
UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = Speed

WaveInt.Name = "WaveInt"
WaveInt.Parent = Visualizer
WaveInt.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
WaveInt.BorderColor3 = Color3.fromRGB(54, 54, 54)
WaveInt.Position = UDim2.new(0.034, 0, 0.79, 0)
WaveInt.Size = UDim2.new(0, 85, 0, 20)
WaveInt.Font = Enum.Font.SourceSansSemibold
WaveInt.PlaceholderText = "Wave Intensity (3)"
WaveInt.Text = ""
WaveInt.TextColor3 = Color3.fromRGB(255, 255, 255)
WaveInt.TextSize = 9
UICorner_6.CornerRadius = UDim.new(0, 6)
UICorner_6.Parent = WaveInt

Distance.Name = "Distance"
Distance.Parent = Visualizer
Distance.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Distance.BorderColor3 = Color3.fromRGB(54, 54, 54)
Distance.Position = UDim2.new(0.034, 0, 0.49, 0)
Distance.Size = UDim2.new(0, 85, 0, 20)
Distance.Font = Enum.Font.SourceSansSemibold
Distance.PlaceholderText = "Distance (5)"
Distance.Text = ""
Distance.TextColor3 = Color3.fromRGB(255, 255, 255)
Distance.TextSize = 14
UICorner_7.CornerRadius = UDim.new(0, 6)
UICorner_7.Parent = Distance

Responsiveness.Name = "Responsiveness"
Responsiveness.Parent = Visualizer
Responsiveness.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Responsiveness.Position = UDim2.new(0.298, 0, 0.637, 0)
Responsiveness.Size = UDim2.new(0, 85, 0, 20)
Responsiveness.Font = Enum.Font.SourceSansSemibold
Responsiveness.PlaceholderText = "Responsiveness (200)"
Responsiveness.Text = ""
Responsiveness.TextColor3 = Color3.fromRGB(255, 255, 255)
Responsiveness.TextSize = 7
UICorner_8.CornerRadius = UDim.new(0, 6)
UICorner_8.Parent = Responsiveness

Bass.Name = "Bass"
Bass.Parent = Visualizer
Bass.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Bass.Position = UDim2.new(0.298, 0, 0.787, 0)
Bass.Size = UDim2.new(0, 85, 0, 20)
Bass.Font = Enum.Font.SourceSansSemibold
Bass.PlaceholderText = "Bass Intensity (100)"
Bass.Text = ""
Bass.TextColor3 = Color3.fromRGB(255, 255, 255)
Bass.TextSize = 12
UICorner_9.CornerRadius = UDim.new(0, 6)
UICorner_9.Parent = Bass

-- Presets Frame
Presets.Name = "Presets"
Presets.Parent = Visualizer
Presets.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Presets.Position = UDim2.new(0.564, 0, 0.206, 0)
Presets.Size = UDim2.new(0, 65, 0, 113)
UICorner_10.Parent = Presets

-- Preset Buttons
MAX.Name = "MAX"
MAX.Parent = Presets
MAX.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
MAX.Position = UDim2.new(0.071, 0, 0.071, 0)
MAX.Size = UDim2.new(0, 55, 0, 15)
MAX.Font = Enum.Font.SourceSansSemibold
MAX.Text = "Circle 2"
MAX.TextColor3 = Color3.fromRGB(53, 53, 53)
MAX.TextSize = 14
UICorner_11.CornerRadius = UDim.new(0, 3)
UICorner_11.Parent = MAX

MAY.Name = "MAY"
MAY.Parent = Presets
MAY.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
MAY.Position = UDim2.new(0.071, 0, 0.247, 0)
MAY.Size = UDim2.new(0, 55, 0, 15)
MAY.Font = Enum.Font.SourceSansSemibold
MAY.Text = "Circle"
MAY.TextColor3 = Color3.fromRGB(53, 53, 53)
MAY.TextSize = 14
UICorner_12.CornerRadius = UDim.new(0, 3)
UICorner_12.Parent = MAY

MAZ.Name = "MAZ"
MAZ.Parent = Presets
MAZ.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
MAZ.Position = UDim2.new(0.071, 0, 0.425, 0)
MAZ.Size = UDim2.new(0, 55, 0, 15)
MAZ.Font = Enum.Font.SourceSansSemibold
MAZ.Text = "Z"
MAZ.TextColor3 = Color3.fromRGB(53, 53, 53)
MAZ.TextSize = 14
UICorner_13.CornerRadius = UDim.new(0, 3)
UICorner_13.Parent = MAZ

Infinity.Name = "Infinity"
Infinity.Parent = Presets
Infinity.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
Infinity.Position = UDim2.new(0.071, 0, 0.61, 0)
Infinity.Size = UDim2.new(0, 55, 0, 15)
Infinity.Font = Enum.Font.SourceSansSemibold
Infinity.Text = "Infinity"
Infinity.TextColor3 = Color3.fromRGB(53, 53, 53)
Infinity.TextSize = 14
UICorner_14.CornerRadius = UDim.new(0, 3)
UICorner_14.Parent = Infinity

Custom.Name = "Custom"
Custom.Parent = Presets
Custom.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
Custom.Position = UDim2.new(0.071, 0, 0.788, 0)
Custom.Size = UDim2.new(0, 55, 0, 18)
Custom.Font = Enum.Font.SourceSansSemibold
Custom.Text = "Custom"
Custom.TextColor3 = Color3.fromRGB(53, 53, 53)
Custom.TextSize = 14
UICorner_15.CornerRadius = UDim.new(0, 3)
UICorner_15.Parent = Custom

-- Waves Frame
Waves.Name = "Waves"
Waves.Parent = Visualizer
Waves.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Waves.Position = UDim2.new(0.787, 0, 0.206, 0)
Waves.Size = UDim2.new(0, 65, 0, 93)
UICorner_16.Parent = Waves

-- Wave Buttons
WAX.Name = "WAX"
WAX.Parent = Waves
WAX.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
WAX.Position = UDim2.new(0.071, 0, 0.071, 0)
WAX.Size = UDim2.new(0, 55, 0, 15)
WAX.Font = Enum.Font.SourceSansSemibold
WAX.Text = "X"
WAX.TextColor3 = Color3.fromRGB(53, 53, 53)
WAX.TextSize = 14
UICorner_17.CornerRadius = UDim.new(0, 3)
UICorner_17.Parent = WAX

WAY.Name = "WAY"
WAY.Parent = Waves
WAY.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
WAY.Position = UDim2.new(0.071, 0, 0.3, 0)
WAY.Size = UDim2.new(0, 55, 0, 15)
WAY.Font = Enum.Font.SourceSansSemibold
WAY.Text = "Y"
WAY.TextColor3 = Color3.fromRGB(53, 53, 53)
WAY.TextSize = 14
UICorner_18.CornerRadius = UDim.new(0, 3)
UICorner_18.Parent = WAY

WAZ.Name = "WAZ"
WAZ.Parent = Waves
WAZ.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
WAZ.Position = UDim2.new(0.071, 0, 0.53, 0)
WAZ.Size = UDim2.new(0, 55, 0, 15)
WAZ.Font = Enum.Font.SourceSansSemibold
WAZ.Text = "Z"
WAZ.TextColor3 = Color3.fromRGB(53, 53, 53)
WAZ.TextSize = 14
UICorner_19.CornerRadius = UDim.new(0, 3)
UICorner_19.Parent = WAZ

Custom_2.Name = "Custom"
Custom_2.Parent = Waves
Custom_2.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
Custom_2.Position = UDim2.new(0.071, 0, 0.755, 0)
Custom_2.Size = UDim2.new(0, 55, 0, 15)
Custom_2.Font = Enum.Font.SourceSansSemibold
Custom_2.Text = "Custom"
Custom_2.TextColor3 = Color3.fromRGB(53, 53, 53)
Custom_2.TextSize = 14
UICorner_20.CornerRadius = UDim.new(0, 3)
UICorner_20.Parent = Custom_2

-- Additional Visualizer Controls
WavesOn.Name = "WavesOn"
WavesOn.Parent = Visualizer
WavesOn.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
WavesOn.Position = UDim2.new(0.93, 0, 0.81, 0)
WavesOn.Size = UDim2.new(0, 18, 0, 18)
WavesOn.Font = Enum.Font.SourceSans
WavesOn.Text = ""
WavesOn.TextColor3 = Color3.fromRGB(53, 53, 53)
WavesOn.TextSize = 14
UICorner_21.CornerRadius = UDim.new(0, 3)
UICorner_21.Parent = WavesOn

TextLabel.Parent = Visualizer
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.771, 0, 0.81, 0)
TextLabel.Size = UDim2.new(0, 48, 0, 18)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "Enabled"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14

VisWait.Name = "VisWait"
VisWait.Parent = Visualizer
VisWait.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
VisWait.Position = UDim2.new(0.298, 0, 0.487, 0)
VisWait.Size = UDim2.new(0, 85, 0, 20)
VisWait.Font = Enum.Font.SourceSansSemibold
VisWait.PlaceholderText = "Visualizer Wait (2.7)"
VisWait.Text = ""
VisWait.TextColor3 = Color3.fromRGB(255, 255, 255)
VisWait.TextSize = 12
UICorner_22.CornerRadius = UDim.new(0, 6)
UICorner_22.Parent = VisWait

Sync.Name = "Sync"
Sync.Parent = Visualizer
Sync.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
Sync.BorderColor3 = Color3.fromRGB(54, 54, 54)
Sync.Position = UDim2.new(0.298, 0, 0.19, 0)
Sync.Size = UDim2.new(0, 85, 0, 20)
Sync.Font = Enum.Font.SourceSansSemibold
Sync.Text = "Sync"
Sync.TextColor3 = Color3.fromRGB(0, 0, 0)
Sync.TextSize = 14
UICorner_23.CornerRadius = UDim.new(0, 6)
UICorner_23.Parent = Sync

WaveCount.Name = "WaveCount"
WaveCount.Parent = Visualizer
WaveCount.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
WaveCount.Position = UDim2.new(0.298, 0, 0.337, 0)
WaveCount.Size = UDim2.new(0, 85, 0, 20)
WaveCount.Font = Enum.Font.SourceSansSemibold
WaveCount.PlaceholderText = "Wave Count (1)"
WaveCount.Text = ""
WaveCount.TextColor3 = Color3.fromRGB(255, 255, 255)
WaveCount.TextSize = 11
UICorner_24.CornerRadius = UDim.new(0, 6)
UICorner_24.Parent = WaveCount

-- Tab Buttons
VisualizerB.Name = "VisualizerB"
VisualizerB.Parent = Main
VisualizerB.BackgroundTransparency = 1
VisualizerB.ClipsDescendants = true
VisualizerB.Position = UDim2.new(0.033, 0, 0.13, 0)
VisualizerB.Size = UDim2.new(0, 80, 0, 17)
VisualizerB.Font = Enum.Font.SourceSansSemibold
VisualizerB.Text = "Visualizer"
VisualizerB.TextColor3 = Color3.fromRGB(255, 255, 255)
VisualizerB.TextSize = 14

LoggerB.Name = "LoggerB"
LoggerB.Parent = Main
LoggerB.BackgroundTransparency = 1
LoggerB.ClipsDescendants = true
LoggerB.Position = UDim2.new(0.518, 0, 0.13, 0)
LoggerB.Size = UDim2.new(0, 65, 0, 17)
LoggerB.Font = Enum.Font.SourceSansSemibold
LoggerB.Text = "Logger"
LoggerB.TextColor3 = Color3.fromRGB(255, 255, 255)
LoggerB.TextSize = 14

ScriptsB.Name = "ScriptsB"
ScriptsB.Parent = Main
ScriptsB.BackgroundTransparency = 1
ScriptsB.ClipsDescendants = true
ScriptsB.Position = UDim2.new(0.277, 0, 0.13, 0)
ScriptsB.Size = UDim2.new(0, 70, 0, 17)
ScriptsB.Font = Enum.Font.SourceSansSemibold
ScriptsB.Text = "Scripts"
ScriptsB.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptsB.TextSize = 14

-- Scripts Frame
Scripts.Name = "Scripts"
Scripts.Parent = Main
Scripts.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Scripts.ClipsDescendants = true
Scripts.Position = UDim2.new(0.035, 0, 0.225, 0)
Scripts.Size = UDim2.new(0, 342, 0, 160)
Scripts.Visible = false
UICorner_25.Parent = Scripts

Amount.Name = "Amount"
Amount.Parent = Scripts
Amount.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Amount.BorderColor3 = Color3.fromRGB(54, 54, 54)
Amount.Position = UDim2.new(0.045, 0, 0.786, 0)
Amount.Size = UDim2.new(0, 85, 0, 20)
Amount.Font = Enum.Font.SourceSansSemibold
Amount.PlaceholderText = "Dupe Amount"
Amount.Text = ""
Amount.TextColor3 = Color3.fromRGB(255, 255, 255)
Amount.TextSize = 12
UICorner_26.Parent = Amount

Dupe.Name = "Dupe"
Dupe.Parent = Scripts
Dupe.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
Dupe.BorderColor3 = Color3.fromRGB(54, 54, 54)
Dupe.Position = UDim2.new(0.045, 0, 0.611, 0)
Dupe.Size = UDim2.new(0, 85, 0, 20)
Dupe.Font = Enum.Font.SourceSansSemibold
Dupe.Text = "Dupe"
Dupe.TextColor3 = Color3.fromRGB(0, 0, 0)
Dupe.TextSize = 14
UICorner_27.Parent = Dupe

TextLabel_2.Parent = Scripts
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.023, 0, 0.044, 0)
TextLabel_2.Size = UDim2.new(0, 100, 0, 20)
TextLabel_2.Font = Enum.Font.SourceSansSemibold
TextLabel_2.Text = "Tools"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 16

StealTools.Name = "StealTools"
StealTools.Parent = Scripts
StealTools.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
StealTools.BorderColor3 = Color3.fromRGB(54, 54, 54)
StealTools.Position = UDim2.new(0.048, 0, 0.206, 0)
StealTools.Size = UDim2.new(0, 85, 0, 20)
StealTools.Font = Enum.Font.SourceSansSemibold
StealTools.Text = "Steal Tools"
StealTools.TextColor3 = Color3.fromRGB(0, 0, 0)
StealTools.TextSize = 14
UICorner_28.Parent = StealTools

RemoveMesh.Name = "RemoveMesh"
RemoveMesh.Parent = Scripts
RemoveMesh.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
RemoveMesh.BorderColor3 = Color3.fromRGB(54, 54, 54)
RemoveMesh.Position = UDim2.new(0.048, 0, 0.386, 0)
RemoveMesh.Size = UDim2.new(0, 85, 0, 20)
RemoveMesh.Font = Enum.Font.SourceSansSemibold
RemoveMesh.Text = "Remove Mesh"
RemoveMesh.TextColor3 = Color3.fromRGB(0, 0, 0)
RemoveMesh.TextSize = 12
UICorner_29.Parent = RemoveMesh

AntiLoggerB.Name = "AntiLoggerB"
AntiLoggerB.Parent = Main
AntiLoggerB.BackgroundTransparency = 1
AntiLoggerB.ClipsDescendants = true
AntiLoggerB.Position = UDim2.new(0.728, 0, 0.13, 0)
AntiLoggerB.Size = UDim2.new(0, 83, 0, 17)
AntiLoggerB.Font = Enum.Font.SourceSansSemibold
AntiLoggerB.Text = "Anti-Logger"
AntiLoggerB.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiLoggerB.TextSize = 14

-- Logger Frame
Logger.Name = "Logger"
Logger.Parent = Main
Logger.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Logger.ClipsDescendants = true
Logger.Position = UDim2.new(0.035, 0, 0.225, 0)
Logger.Size = UDim2.new(0, 342, 0, 160)
Logger.Visible = false
UICorner_30.Parent = Logger

-- Header
TextLabel_3.Parent = Frame
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0.026, 0, 0.2, 0)
TextLabel_3.Size = UDim2.new(0, 144, 0, 15)
TextLabel_3.ZIndex = 2
TextLabel_3.Font = Enum.Font.SourceSansSemibold
TextLabel_3.Text = "Kore's Hub V1"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 85, 0)
TextLabel_3.TextSize = 14
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_4.Parent = TextLabel_3
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Position = UDim2.new(0.003, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0, 144, 0, 15)
TextLabel_4.ZIndex = 2
TextLabel_4.Font = Enum.Font.SourceSansSemibold
TextLabel_4.Text = "Kore's Hub V1"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 170, 0)
TextLabel_4.TextSize = 14
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_5.Parent = TextLabel_4
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.Position = UDim2.new(0.01, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0, 144, 0, 15)
TextLabel_5.ZIndex = 2
TextLabel_5.Font = Enum.Font.SourceSansSemibold
TextLabel_5.Text = "Kore's Hub V1"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 14
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

-- Control Buttons
Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Close.Position = UDim2.new(0.933, 0, 0.18, 0)
Close.Size = UDim2.new(0, 15, 0, 15)
Close.ZIndex = 2
Close.Font = Enum.Font.SourceSansSemibold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 14
UICorner_31.Parent = Close

Minify.Name = "Minify"
Minify.Parent = Frame
Minify.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
Minify.Position = UDim2.new(0.875, 0, 0.18, 0)
Minify.Size = UDim2.new(0, 15, 0, 15)
Minify.ZIndex = 2
Minify.Font = Enum.Font.SourceSansSemibold
Minify.Text = "_"
Minify.TextColor3 = Color3.fromRGB(0, 0, 0)
Minify.TextSize = 14
UICorner_32.Parent = Minify

UICorner_33.Parent = Frame

-- Scripts Section
-- Global Variables
_G.Speed = 1
_G.WaveInt = 3
_G.Distance = 5
_G.VisAngle = "X"
_G.WavesAngle = "X"
_G.WavesOn = "Off"
_G.WaveCount = 1
_G.VisWait = 2.7
_G.Responsiveness = 200
_G.Bass = 100

-- Visualize Button Script
local function visualizeScript()
	local script = Instance.new('LocalScript', visualize)
	
	local currentid = ""
	local vis = nil
	local dt = 0
	local CurrentSound = nil
	local CurrentTimePosition = 0
	local responsiveness = _G.Responsiveness
	
	-- Helper functions
	local function waitForChild(parent, childName)
		while not parent:FindFirstChild(childName) do
			parent.ChildAdded:wait()
		end
		return parent[childName]
	end
	
	-- Extract ID from Caelus.lol URL
	local function extractAudioId(url)
		-- Handle Caelus.lol URLs like https://www.caelus.lol/catalog/13698/trip-lil-hawaii
		local pattern = "caelus%.lol/catalog/(%d+)"
		local id = url:match(pattern)
		if id then
			return id
		end
		-- Also accept direct IDs
		return url:gsub("%D+", "")
	end
	
	-- Main visualizer function
	vis = function(id, timepos)
		-- Clear previous visualizer
		if _G.tov then
			for i, v in pairs(_G.tov) do
				if v[1] and v[1].Parent then
					v[1]:Destroy()
				end
				if v[2] and v[2].Parent then
					v[2]:Destroy()
				end
			end
		end
		
		_G.tov = {}
		
		-- Create physics fix
		if _G.NetFix == nil then
			_G.NetFix = " "
			game:GetService("RunService").Heartbeat:Connect(function()
				for i, v in pairs(_G.tov) do
					if v[1] and v[2] and v[1].Parent and v[2].Parent then
						v[1].Velocity = Vector3.new(200, 0, 0)
						v[1].CFrame = v[2
