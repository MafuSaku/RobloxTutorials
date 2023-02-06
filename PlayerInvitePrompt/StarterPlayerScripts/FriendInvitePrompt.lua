--<< Services >>--
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local SocialService = game:GetService("SocialService")

--<< Code >>--
if SocialService:CanSendGameInviteAsync(localPlayer.UserId) then -- If you dont have localPlayer then use game.Players.LocalPlayer
    workspace.FriendInvitePart.ProximityPrompt.Triggered:Connect(function()
        local ExperienceInviteOptions = Instance.new("ExperienceInviteOptions")
        ExperienceInviteOptions.PromptMessage = "" -- This is the message that will appear when you click on the invite
        ExperienceInviteOptions.InviteMessageId = "" -- This is the notification string that will appear when you get the invite: Go to https://create.roblox.com/creations > Select Your Experience > Notifications > Create New Notification String > Copy the AssetID
        SocialService:PromptGameInvite(localPlayer, ExperienceInviteOptions)
    end)
end