function toggleGGun(player)
	if not exports.integration:isPlayerLeadAdmin(player) then
		outputChatBox("#ff0000Shoma Dastresi Be In Dastoor Nadarid!", player, 255, 255, 255, true)
		return false
	end
	local on = not exports['admin-system']:isGravityGunEnabled(player)
    exports['admin-system']:togglePlayerGravityGun(player,on)
	outputChatBox((on and "#00ff00Gravity Gun Faal Shod!" or "#ff0000Gravity Gun Qeyre Faal Shod!"),player, 255, 255, 255, true)
end
addCommandHandler("ggun",toggleGGun, false, false)