//This is a script designed to load in custom Choreo scenes for use in Workshop maps.
//It is recommended to make a copy of this for each map, to prevent any attempts to load scenes not needed, and to keep file sizes lower.
//This whole system will allow for multiple scenes per map, with the name of the `logic_choreographed_scene` to determine the name of the VCD. Makes it a little easier.
//Formatting:
//SCENE <- self.GetName() + ".vcd" -- This will get the name of the `logic_choreographed_scene` that this script is attached to.
//if (SCENE == "scene_file.vcd) { -- This checks the value of SCENE
// SCENE_CONTENT <- @"scene_content" -- This will set the SCENE_CONTENT var as the content of the VCD as a string, with the "@" allowing for said string to be multi-line.
//NOTE: To properly bring over the VCD content, paste the contents of the VCD in a new temp file, replace all " with "", and paste that into the appropriate spot.

//This script was written by Hazel Webbs in collaboration with TeamSpen210, who assisted me with writing this script as I had never really written a script for Portal 2 beforehand.
//Quite a task for a first script, ey?



SCENE <- self.GetName() + ".vcd"

if (SCENE == "my_first_scene.vcd") {
	SCENE_CONTENT <- @"CONTENTS OF `my_first_scene.vcd` PASTED AS DIRECTED"
} else if (SCENE == "my_second_scene.vcd") {
  SCENE_CONTENT <- @"CONTENTS OF `my_second_scene.vcd` PASTED AS DIRECTED"
} else {
	print(SCENE + " is unable to be loaded.")
	self.Destroy() //removes the associated `logic_choreographed_scene` if VCD cannot be found.
}

function Precache() {
	self.LoadSceneFromString(SCENE, SCENE_CONTENT)
}