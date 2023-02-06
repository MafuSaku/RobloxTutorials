--<< Services >>--
local Players = game:GetService("Players")

--<< Variables >>--
local accountAge = 7 -- Days you want the account to be before they can play

--<< Code >>--
local function onPlayerAdded(player)
	if player.AccountAge < accountAge then
		player:Kick("Your account has to be atleast 7 days old.")
	else
		print("Your account age is more than 7 days.") -- Doesn't necessarily have to have print, but it's good to know if their accountAge is more than 7 days
	end
end

Players.PlayerAdded:Connect(onPlayerAdded)