# Head-Parser
A Minecraft datapack that allows to parse player head data into a useable format.

## How to use
```mcfunction
data modify storage suso.str_heads:io in set value {string:"",get:[GET]}
data modify storage suso.str_heads:io in.string set from block [COORDS] SkullOwner.Properties.textures[0].Value
function suso.str_heads:call
```

Remember that in 1.17+ head data is not loaded immediately when they are placed, so you must make sure to arbitrarily wait for an unspecified amount of time before attempting to copy the b64 string into the input storage (polling with `if data block [COORDS] SkullOwner.Properties.textures\[0].Value` should do the trick).

The get value is an int that specifies which parts of the data you're requesting. You can obtain it by multiplying the values of the elements you want:

```
time:   2
id:     3
name:   5
sig:    7
skin:  11
model: 13
cape:  17
```

These are returned as part of an nbt object: `storage suso.str_heads:io out`.
