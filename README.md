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
Player("Adamcole"):getItemById(2050, true):setShader("Outfit - Rainbow")
```
attacheffect monster:
```

<monster name="Orc" nameDescription="an orc" race="blood" experience="25" speed="150" manacost="300" raceId="5" shaderEffect = "Outfit - Rainbow" auraEffect = "8" wignsEffect ="11" rayosEffect="7" >

```


> [!IMPORTANT]
> Active features OTC
```
        g_game.enableFeature(GameCreatureShader)
        g_game.enableFeature(GameCreatureAttachedEffect) 
        g_game.enableFeature(GameClientPing)
        g_game.enableFeature(GamePlayerMounts);
        g_game.enableFeature(GameItemShader)
        g_game.enableFeature(GameWingsAurasEffects)

```


### Example Feature

<table style="border-collapse: collapse; width: 100%;" border="1">
  <tbody>
    <tr>
      <td style="width: 50%; ">
        <strong><center> Feature</center></strong>
      </td>
      <td style="width: 50%;"><center><strong> Gif</strong></center></td>
    </tr>
    <tr>
      <td style="width: 50%;">
        <pre><code class="lua"><p><strong>Attach Effect</strong></p>
local player = g_game.getLocalPlayer()
player:attachEffect(
  g_attachedEffects.getById(2)
  )
</code></pre>
      </td>
      <td style="width: 50%;"><img style="max-width: 100%; height: auto;" src="https://github.com/Nottinghster/otclient/assets/114332266/782e0fcf-b1cf-451e-b102-d7e7943bd50b" /></td>
    </tr>
    <tr>
      <td style="width: 50%;">
        <strong><p>QR</p></strong>
        <pre><code class="lua">UIWidget
  size: 200 200
  anchors.centerIn: parent
  qr-code: mehah
  qr-code-border: 2
</code></pre>
      </td>
      <td style="width: 50%;"><img style="max-width: 100%; height: auto;" src="https://github.com/Nottinghster/otclient/assets/114332266/a9ea3ce9-2a02-4b39-9b5f-7308db16e710" /></td>
    </tr>
    <tr>
      <td style="width: 50%;">
        <p>Reload module</p>
        <pre><code class="lua">g_modules.enableAutoReload()
</code></pre>
      </td>
      <td style="width: 50%;"><video src="https://github.com/Nottinghster/otclient/assets/114332266/bdd01687-1671-4150-8354-10a9c340c480" width="640" height="360" controls></video></td>
    </tr>
    <tr>
      <td style="width: 50%;">
        <strong><p>Shaders</p></strong>
item :
        <pre><code class="lua">local item = ItemWidget:getItem()
item:setShader("Outfit - Outline")
</code></pre>
Player :
  <pre><code class="lua">local player= g_game.getLocalPlayer()
player:setShader("Outfit - Outline")
</code></pre>
Map :
<pre><code class="lua">local map = modules.game_interface.getMapPanel()
map:setShader('Map - Party')
</code></pre>
      </td>
      <td style="width: 50%;"><img style="max-width: 100%; height: auto;" src="https://github.com/Nottinghster/otclient/assets/114332266/021119e2-d6e7-41e1-8a83-d07efcce452b" /></br>
      <img style="max-width: 100%; height: auto;" src="https://github.com/kokekanon/otclient.readme/assets/114332266/e1f2e593-d87d-4ec3-9e72-7e478a3acdba" /></td>
    </tr>
    <tr>
      <td style="width: 50%;">
       <strong> <p>Discord RPC</p></strong>
        <pre><code>- To enable just go to
  set 1 in ENABLE_DISCORD_RPC 
  and configure the others definitions
</code></pre>
      </td>
      <td style="width: 50%;"><img style="max-width: 100%; height: auto;" src="https://github.com/Nottinghster/otclient/assets/114332266/cd93e5e6-4e2a-4dd2-b66b-6e28408363d6" /></td>
    </tr>
    <tr>
      <td style="width: 50%;">
       <strong> <p>Typing Icon</strong></p>
        <pre><code>
To enable just go to setup.otml 
and set draw-typing: true
</code></pre>
      </td>
      <td style="width: 50%;"><img style="max-width: 100%; height: auto;" src="https://github.com/Nottinghster/otclient/assets/114332266/3e7c00bb-94ea-458f-9b07-43b622c8253c" /></td>
    </tr>
    <tr>
      <td style="width: 50%;">
       <strong> <p>Colored text</p></strong>
        <pre><code class="lua">
widget:setColoredText("
{" .. variable .. ", #C6122E} / 
{Colored text, #ff00ff} normal text")
</code></pre>
      </td>
      <td style="width: 50%;"><img style="max-width: 100%; height: auto;" src="https://github.com/Nottinghster/otclient/assets/114332266/9ea52de2-c193-4951-9454-ddc58685c65c" /></td>
    </tr>
    <tr>
      <td style="width: 50%;">
        <p><strong>Smooth Walk Elevation</strong></p>
        Enable on <p><a href="https://github.com/mehah/otclient/blob/main/modules/game_features/features.lua#L5">game_features</a></p>
        <pre><code class="lua">
g_game.enableFeature(GameSmoothWalkElevation)</td>
</code></pre>
      <td style="width: 50%;"><img style="max-width: 100%; height: auto;" src="https://github.com/Nottinghster/otclient/assets/114332266/208bd4e4-3a76-4e2f-960e-7761d0fb7aed" /></td>
    </tr>
  </tbody>
</table>

