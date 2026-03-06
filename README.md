# p2_workshop_choreo_vscript
This script is designed to load in custom choreo (vcd) scenes for use in Portal 2 Workshop maps. It is recommended to make a copy of this for each map for organization purposes, or even have a copy of this per choreo scene if it makes it that much easier to read. This IS designed to load multiple scenes per map, and the Usage Instructions section will explain how.

Credits:
Teamspen210 - VScript help (i didnt know anything about vscript up until this point)
Kelsey - Finding the `LoadSceneFromString` function and helping me out with getting it working

# Usage Instruction
1. The name of the `logic_chreographed_scene` will have to be the name of the `.vcd` file you want to load.
2. Attach your copy of this script to the scene entity(ies).
3. In each If or IfElse statement, the variable SCENE_CONTENT is present. The `@` in front allows the string to be multi-line. To load this properly, open your VCD file in a text editor of your choice, replace ALL `"` (single quotes) with `""` (double quotes), copy the new version, and paste it inbetween the quotes in `SCENE_CONTENT <- @""` at the if statements.
4. If need be, add a new "else if" line, following the formating (if you know vscript you'll be fine) and change `my_first_scene.vcd` to the name of your VCD file, extension included.
5. As a reminder, set the name of your `logic_choreographed_scene` to `my_first_scene`, WITHOUT the extension. You can change this behavior if you wish, of course.
6. Compile the map and test! This is not a guidebook for how to make choreo scenes. Refer to the VDC for that.
