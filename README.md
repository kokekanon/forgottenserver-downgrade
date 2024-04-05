# 🌺 𝓜𝓲𝓵𝓵𝓱𝓲𝓸𝓻𝓮 𝓣𝓕𝓢 𝓓𝓸𝔀𝓷𝓰𝓻𝓪𝓭𝓮 🌺
### 🐱 [Based nekiro downgrade.](https://github.com/nekiro/TFS-1.5-Downgrades)

- This downgrade is not download and run distribution, monsters and spells are probably not 100% correct.
- You are welcome to submit a pull request though.

## 🛠 It is currently under development. ⚙

## How to compile

[Compiling on Ubuntu](https://github.com/MillhioreBT/forgottenserver-downgrade/wiki/Compiling-on-Ubuntu)

[Compiling on Windows](https://github.com/MillhioreBT/forgottenserver-downgrade/wiki/Compiling-on-Windows-(vcpkg))

## Contributing

Pull requests are welcome.
Just make sure you are using english/spanish language.

## Bugs

If you find any bug and believe it should be fixed, submit an issue in [issues section](https://github.com/MillhioreBT/forgottenserver-downgrade/issues), just please follow the issue template.
-
-
-
- stack + 10 if you are not using v8 (main repo)
- Tile(position) if things is  isItem()  always is :getGround() (main repo)
- broadcast /b (main repo)
- does not save shader item after logout "WARNING: Serialize error in IOLoginData::loadItems" ( probably in item.h ) (by incorporating shader)
-
-
-
-
-
-

quick version 3 am
## Server compatible with new-layout

test client: https://github.com/Nottinghster/otclient/tree/new-layout
(also compatible with old client)
```lua
  
player:setMapShader(shaderName, [temporary])
player:getMapShader()

creature:setShader(shaderName)
creature:getShader()
creature:detachEffectById(effectId)
creature:attachEffectById(effectId, [temporary])
```

Example: 
```lua
!mapShader 'Map - Heat'
!itemSetShader no yet
!playerSetShader "Map - Heat"
!detacheffect 11
!attacheffect 11
```
attacheffect monster:
```

<monster name="Orc" nameDescription="an orc" race="blood" experience="25" speed="150" manacost="300" raceId="5" shaderEffect = "Outfit - Rainbow" auraEffect = "8" wignsEffect ="11" rayosEffect="7" >

```


> [!IMPORTANT]
> Active features OTC

        g_game.enableFeature(GameCreatureShader)
        g_game.enableFeature(GameCreatureAttachedEffect) 
        g_game.enableFeature(GameClientPing)
        g_game.enableFeature(GamePlayerMounts);
        g_game.enableFeature(GameItemShader)
