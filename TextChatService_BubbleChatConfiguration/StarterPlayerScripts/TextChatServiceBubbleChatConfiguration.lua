-- Services and Variables
local TextChatService = game:GetService("TextChatService") -- Gets the TextChatService
local BubbleChatConfiguration = TextChatService.BubbleChatConfiguration -- Grabs the BubbleChatConfiguration Child from the TextChatService

-- Bubble Chat Configuration Code
BubbleChatConfiguration.Font = Enum.Font.Creepster -- Changes the Bubble Chat Font to the Creepster font
BubbleChatConfiguration.TextSize = 25 -- Changes the Text Size to 25 instead of the default 16
BubbleChatConfiguration.TextColor3 = Color3.new(1, 0, 0) -- Changes the Bubble Chat Text Color
BubbleChatConfiguration.BackgroundColor3 = Color3.new(1, 0.666667, 1) -- Changes the Bubble Chat Background Color
BubbleChatConfiguration.BubbleDuration = 5 -- Changes the Bubble Chat Bubble Visiblity Duration (seconds)

-- This script works as a Server Script (ServerScriptService) or Local Script (StarterPlayer > StarterPlayerScripts)