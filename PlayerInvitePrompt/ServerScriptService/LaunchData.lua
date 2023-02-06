game.Players.PlayerAdded:Connect(function(player)
    task.wait(2)
    local JoinData = player:GetJoinData()
    local LaunchData = JoinData.LaunchData
    local UserID = tonumber(LaunchData)
    if not UserID or not player:GetPlayerByUserId(UserID) then
        return
    end
    local InvitingPlayer = game.Players:GetPlayerByUserId(UserID)
    local HumanoidRootPart = InvitingPlayer and InvitingPlayer.Character and InvitingPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not HumanoidRootPart then
        return
    end
    player.Character:MoveTo(HumanoidRootPart.Position)
end)
-- This works with FriendInvitePromptV2.lua and FriendInvitePromptGuiV2.lua