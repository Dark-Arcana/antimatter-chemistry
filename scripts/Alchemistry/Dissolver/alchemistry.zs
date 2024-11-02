import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.functions.toString;
import scripts.functions.getOreDict;
import scripts.functions.getItem;
import scripts.functions.getItemAny;
import scripts.functions.getItemMeta;
import scripts.functions.getItemString;
import scripts.functions.getArrayString;
import scripts.functions.getItemsFromMod;
import scripts.functions.getFluid;
import scripts.functions.getBucket;
import scripts.functions.getBucketDefault;
import scripts.functions.findFirstItemFromMod;

import mods.alchemistry.Dissolver;

import scripts.functions.alch;

var lamps as IItemStack[string] = {
    "neon" : <alchemistry:neon_light>,
    "helium" : <alchemistry:helium_light>,
    "argon" : <alchemistry:argon_light>,
    "krypton" : <alchemistry:krypton_light>,
    "xenon" : <alchemistry:xenon_light>
};

for gas, lamp in lamps {
    Dissolver.addRecipe(lamp, false, 1, [
        [100, alch("silicon dioxide") * 16],
        [100, alch(gas) * 5]
    ]);
}
