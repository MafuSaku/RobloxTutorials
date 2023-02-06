--<< Services >>--
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

--<< Variables >>--
local assetId = 102611803 -- Verified, Blondafied, Plaidafied Accessory
local legacyassetId = 1567446 -- Verified Sign Accessory
local accountAge = 7 -- Days you want the account to be before they can play

--<< Code >>--
local function onPlayerAdded(player)
	local success, playerOwnsAsset = pcall(MarketplaceService.PlayerOwnsAsset, MarketplaceService, player, assetId or MarketplaceService.PlayerOwnsAsset, MarketplaceService, player, legacyassetId)
	if playerOwnsAsset then
		print(player.Name .. " owns this item!") -- Doesn't necessarily have to have print, but it's good to know if they own the item
	else
		player:Kick("You do not have your Roblox account verified.")
	end
	local daysLeft = accountAge - player.AccountAge -- Days left until they can play
	if player.AccountAge < accountAge then
		player:Kick("Your account is less than 7 days old. You have " .. daysLeft .. " days left until you can play again!")
	end
end

Players.PlayerAdded:Connect(onPlayerAdded)