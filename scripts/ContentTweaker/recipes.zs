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

import scripts.functions.disable;

function fixBlock(block as IItemStack, ingot as IItemStack) {
    recipes.addShaped(block, [
        [ingot,ingot,ingot],
        [ingot,ingot,ingot],
        [ingot,ingot,ingot]
    ]);
    recipes.addShapeless(ingot*9, [block]);
}

fixBlock(<contenttweaker:sub_block_holder_0>,<nuclearcraft:alloy:1>);
fixBlock(<contenttweaker:sub_block_holder_0:1>,<nuclearcraft:alloy:6>);
fixBlock(<contenttweaker:sulfur_block>,findFirstItemFromMod("thermalfoundation","dust","sulfur"));
