local function checkForwardPositionByDirection(position, direction)
    if direction == DIRECTION_NORTH then
        position.y = position.y - 1
    elseif direction == DIRECTION_SOUTH then
        position.y = position.y + 1
    elseif direction == DIRECTION_WEST then
        position.x = position.x - 1
    elseif direction == DIRECTION_EAST then
        position.x = position.x + 1
    end

    return position
end

local function executeReset(creatureId, cfg)
    local creature = Creature(creatureId)
    if not creature then
        return true
    end

    creature:doCreatureDash(false)
    creature:changeSpeed(-800)
end

local function executeMove(creatureId, cfg)
    local creature = Creature(creatureId)
    if not creature then
        return true
    end

    doMoveCreature(creature, cfg.direction)
    cfg.position = checkForwardPositionByDirection(cfg.position, cfg.direction)
    cfg.range = cfg.range - 1

    if cfg.range > 0 then
        local toTile = Tile(cfg.position)

   if toTile and not toTile:isWalkable() then      --bug here when  there is a stairway down   
                addEvent(executeReset, 100, creatureId, cfg)
                return true
            end

        addEvent(executeMove, 100, creatureId, cfg)

    else
        addEvent(executeReset, 100, creatureId, cfg)
    end
end

local function executeDash(creature, cfg)
    creature:doCreatureDash(true)
    creature:changeSpeed(800)
    executeMove(creature:getId(), cfg)
end

local spell = Spell(SPELL_INSTANT)
function spell.onCastSpell(creature, variant, isHotkey)
    local fromPosition = creature:getPosition()
    local direction = creature:getDirection()
    local cfg = {
        direction = direction,
        position = checkForwardPositionByDirection(fromPosition, direction),
        range = 5
    }

    local toTile = Tile(cfg.position)
    if not toTile then
        return false
    end

    if not toTile:isWalkable() then
        return false
    end

    executeDash(creature, cfg)
    return true
end

spell:name("dashOTC")
spell:words("dashOTC")

spell:id(24)

spell:isSelfTarget(true)

spell:register()
