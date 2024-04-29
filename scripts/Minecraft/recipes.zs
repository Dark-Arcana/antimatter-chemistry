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

import scripts.functions.alch;

var greenSlime as IItemStack = <minecraft:slime_ball>;
var blueSlime as IItemStack = <tconstruct:edible:1>;
var purpleSlime as IItemStack = <tconstruct:edible:2>;
var redSlime as IItemStack = <tconstruct:edible:3>;
var orangeSlime as IItemStack = <tconstruct:edible:4>;

var pyroDust as IItemStack = <thermalfoundation:material:1024>;

recipes.remove(<minecraft:nether_star>);
recipes.addShapeless(<minecraft:nether_star> * 9, [<tp:netherstar_block>]);

recipes.addShapeless(<minecraft:clay_ball> * 4, [<minecraft:clay>]);
recipes.addShapeless(<minecraft:clay>, [<deepmoblearning:living_matter_overworldian>,<minecraft:dirt>]);
recipes.addShapeless(<minecraft:clay>, [<deepmoblearning:living_matter_overworldian>,<atum:fertile_soil_pile>]);
recipes.addShapeless(<minecraft:blaze_rod>, [<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>]);
recipes.addShapeless(<minecraft:netherrack> * 4, [<deepmoblearning:living_matter_hellish>,<minecraft:cobblestone>]);
recipes.addShapeless(<minecraft:quartz>, [<deepmoblearning:living_matter_hellish>,<minecraft:dye:4>]);

recipes.addShaped(<minecraft:dirt> * 8, [
    [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>],
    [<minecraft:stone>,<deepmoblearning:living_matter_overworldian>,<minecraft:stone>],
    [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]
]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    AM["lightGray"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("iron"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["orange"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("copper"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["red"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("iron oxide"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["gray"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("tungsten"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["pink"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("magnesium"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["black"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("carbon"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["green"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("rubidium"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["brown"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("neodymium"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["blue"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("argon"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["purple"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("iodine"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["cyan"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("barium"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["lime"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("neon"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["yellow"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("sulfur"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["lightBlue"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("niobium"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    AM["magenta"] * 8 : [
        [
            [Antimatter,Antimatter,Antimatter],
            [Antimatter,alch("gallium"),Antimatter],
            [Antimatter,Antimatter,Antimatter]
        ]
    ],
    <minecraft:slime> : [
        [
            [greenSlime,greenSlime,greenSlime],
            [greenSlime,greenSlime,greenSlime],
            [greenSlime,greenSlime,greenSlime]
        ],
        [
            [blueSlime,blueSlime,blueSlime],
            [blueSlime,blueSlime,blueSlime],
            [blueSlime,blueSlime,blueSlime]
        ],
        [
            [purpleSlime,purpleSlime,purpleSlime],
            [purpleSlime,purpleSlime,purpleSlime],
            [purpleSlime,purpleSlime,purpleSlime]
        ],
        [
            [redSlime,redSlime,redSlime],
            [redSlime,redSlime,redSlime],
            [redSlime,redSlime,redSlime]
        ],
        [
            [orangeSlime,orangeSlime,orangeSlime],
            [orangeSlime,orangeSlime,orangeSlime],
            [orangeSlime,orangeSlime,orangeSlime]
        ]
    ],
    <minecraft:end_rod> : [
        [
            [<minecraft:blaze_rod>],
            [<minecraft:chorus_fruit_popped>],
            [<ore:ingotAmericium>]
        ]
    ],
    <minecraft:elytra> : [
        [
            [null,<openblocks:hang_glider>,null],
            [<ore:ingotAluminum>,<minecraft:nether_star>,<ore:ingotAluminum>],
            [<ore:ingotAluminum>,null,<ore:ingotAluminum>]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:creeper"}}) : [
        [
            [<minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:gunpowder>],
            [<minecraft:gunpowder>, pyroDust,<minecraft:gunpowder>],
            [<minecraft:gunpowder>,<minecraft:egg>,<minecraft:gunpowder>]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:skeleton"}}) : [
        [
            [<minecraft:bone>,<minecraft:bone>,<minecraft:bone>],
            [<minecraft:bone>, pyroDust, <minecraft:bone>],
            [<minecraft:bone>,<minecraft:egg>,<minecraft:bone>]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie"}}) : [
        [
            [<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>],
            [<minecraft:rotten_flesh>, pyroDust, <minecraft:rotten_flesh>],
            [<minecraft:rotten_flesh>,<minecraft:egg>,<minecraft:rotten_flesh>]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:shulker"}}) : [
        [
            [<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>],
            [<forbidden_arcanus:chorus_pearl>, pyroDust, <forbidden_arcanus:chorus_pearl>],
            [<minecraft:end_stone>,<minecraft:egg>,<minecraft:end_stone>]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "tconstruct:blueslime"}}) : [
        [
            [<tp:colored_dust:10>,<minecraft:slime>,<tp:colored_dust:10>],
            [<minecraft:slime>, pyroDust, <minecraft:slime>],
            [<tp:colored_dust:10>,<minecraft:egg>,<tp:colored_dust:10>]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:guardian"}}) : [
        [
            [<minecraft:prismarine_shard>,<minecraft:prismarine_crystals>,<minecraft:prismarine_shard>],
            [<minecraft:prismarine_crystals>, pyroDust, <minecraft:prismarine_crystals>],
            [<minecraft:prismarine_shard>,<minecraft:egg>,<minecraft:prismarine_shard>]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:blizz"}}) : [
        [
            [<minecraft:snowball>,<thermalfoundation:material:2049>,<minecraft:snowball>],
            [<minecraft:snowball>,pyroDust,<minecraft:snowball>],
            [<minecraft:snowball>,<minecraft:egg>,<minecraft:snowball>]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:blitz"}}) : [
        [
            [<thermalfoundation:material:772>,<thermalfoundation:material:2051>,<thermalfoundation:material:772>],
            [<thermalfoundation:material:772>,pyroDust,<thermalfoundation:material:772>],
            [<thermalfoundation:material:772>,<minecraft:egg>,<thermalfoundation:material:772>]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:basalz"}}) : [
        [
            [<thermalfoundation:material:770>,<thermalfoundation:material:2053>,<thermalfoundation:material:770>],
            [<thermalfoundation:material:770>,pyroDust,<thermalfoundation:material:770>],
            [<thermalfoundation:material:770>,<minecraft:egg>,<thermalfoundation:material:770>]
        ]
    ],

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
