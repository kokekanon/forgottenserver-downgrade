local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_STONES)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)

local function callback(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 0.8) + 5
	local max = (level / 5) + (magicLevel * 1.6) + 10
	return -min, -max
end

combat:setCallback(CallBackParam.LEVELMAGICVALUE, callback)

function onCastSpell(creature, variant, isHotkey)
	return combat:execute(creature, variant)
end
