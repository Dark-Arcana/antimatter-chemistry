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

import mods.jei.JEI;
import mods.thermalexpansion.Insolator;

import scripts.functions.disable;

JEI.removeAndHide(<appliedenergistics2:material:5>);
disable(<appliedenergistics2:material:5>);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <appliedenergistics2:creative_storage_cell> : [
        [
            [<appliedenergistics2:crafting_storage_64k>,<avaritia:resource:6>,<appliedenergistics2:crafting_storage_64k>],
            [<avaritia:resource:6>,<appliedenergistics2:crafting_storage_64k>,<avaritia:resource:6>],
            [<appliedenergistics2:crafting_storage_64k>,<avaritia:resource:6>,<appliedenergistics2:crafting_storage_64k>]
        ]
    ]
};

for output, listRecipe in mapRecipe {
    var index as int = 0;
    recipes.remove(output);
    for recipe in listRecipe {
        var name as string = toString(output)+"_"+index;
        recipes.addShaped(name, output, recipe);
        index += 1;
    }
}

Insolator.removeRecipe(<appliedenergistics2:crystal_seed>, <minecraft:glowstone_dust>);
Insolator.removeRecipe(<appliedenergistics2:crystal_seed:600>, <minecraft:glowstone_dust>);
Insolator.removeRecipe(<appliedenergistics2:crystal_seed:1200>, <minecraft:glowstone_dust>);
