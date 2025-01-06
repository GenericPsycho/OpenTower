function get_savefile_ini(argument0) //gml_Script_get_savefile_ini
{
    if (argument0 == undefined)
        argument0 = true
    if global.swapmode
        argument0 = false
    /* OG
    return concat("saveData", global.currentsavefile, (argument0 ? "" : "N"), ".ini");
    */
    // MOD
    return concat("saveData", global.currentsavefile, global.charsavefile, ".ini");
}

