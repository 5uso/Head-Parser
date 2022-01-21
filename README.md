# Head-Parser
A Minecraft datapack that allows to parse player head data into a useable format.

## How to use
```mcfunction
data modify storage suso.str_heads:io in set value {string:"",get:[GET]}
data modify storage suso.str_heads:io in.string set from block [COORDS] SkullOwner.Properties.textures[0].Value
data modify storage suso.str:io in.callback set value 'tellraw @a {"nbt":"out","storage":"suso.str_heads:io","interpret":true}'
function suso.str_heads:call
```

Remember that in 1.17+ head data is not loaded immediately when they are placed, so you must make sure to arbitrarily wait for an unspecified amount of time before attempting to copy the b64 string into the input storage (polling with `if data block [COORDS] SkullOwner.Properties.textures[0].Value` should do the trick).

The get value is an int that specifies which parts of the data you're requesting. You can obtain it by multiplying the values of the elements you want:

```
time:   2 (Unix timestamp)
id:     3 (Player UUID)
name:   5 (Player name)
sig:    7 (Signature required? 1 or 0)
skin:  11 (Skin url, only the hash part)
model: 13 (Model: 0 for Steve and 1 for Alex)
cape:  17 (Cape url, only the hash part)
```

These are returned as part of an nbt object: `storage suso.str_heads:io out`.
