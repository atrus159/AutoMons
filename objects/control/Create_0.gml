money = 1
level = 1
sellX = 100
sellY = 300
sellW = 150
sellH = 200
depth = 4
boardX = 5
boardY = 2
boardCell = 64
boardW = 8
boardH = 8
locked = false
oldState = 0
xp = 0
global.pokeLookup = ds_list_create()
ds_list_add(global.pokeLookup,"charmander")
ds_list_add(global.pokeLookup,"charmeleon")
ds_list_add(global.pokeLookup,"charizard")
ds_list_add(global.pokeLookup,"paras")
ds_list_add(global.pokeLookup,"parasect")
ds_list_add(global.pokeLookup,"pichu")
ds_list_add(global.pokeLookup,"pikachu")
ds_list_add(global.pokeLookup,"raichu")
ds_list_add(global.pokeLookup,"zubat")
ds_list_add(global.pokeLookup,"golbat")
ds_list_add(global.pokeLookup,"pidgey")
ds_list_add(global.pokeLookup,"pidgeotto")
ds_list_add(global.pokeLookup,"pidgeot")
ds_list_add(global.pokeLookup,"weedle")
ds_list_add(global.pokeLookup,"kakuna")
ds_list_add(global.pokeLookup,"beedrill")
ds_list_add(global.pokeLookup,"bellsprout")
ds_list_add(global.pokeLookup,"weepinbell")
ds_list_add(global.pokeLookup,"victreebel")
ds_list_add(global.pokeLookup,"swinub")
ds_list_add(global.pokeLookup,"piloswine")
ds_list_add(global.pokeLookup,"horsea")
ds_list_add(global.pokeLookup,"seadra")
ds_list_add(global.pokeLookup,"kingdra")
ds_list_add(global.pokeLookup,"diglett")
ds_list_add(global.pokeLookup,"dugtrio")
ds_list_add(global.pokeLookup,"exeggcute")
ds_list_add(global.pokeLookup,"exeggutor")
ds_list_add(global.pokeLookup,"larvitar")
ds_list_add(global.pokeLookup,"pupitar")
ds_list_add(global.pokeLookup,"tyranitar")
ds_list_add(global.pokeLookup,"tentacool")
ds_list_add(global.pokeLookup,"tentacruel")
ds_list_add(global.pokeLookup,"geodude")
ds_list_add(global.pokeLookup,"graveler")
ds_list_add(global.pokeLookup,"golem")
ds_list_add(global.pokeLookup,"mankey")
ds_list_add(global.pokeLookup,"primeape")
ds_list_add(global.pokeLookup,"scyther")
ds_list_add(global.pokeLookup,"scizor")
ds_list_add(global.pokeLookup,"squirtle")
ds_list_add(global.pokeLookup,"wartortle")
ds_list_add(global.pokeLookup,"blastoise")
ds_list_add(global.pokeLookup,"bulbasaur")
ds_list_add(global.pokeLookup,"ivysaur")
ds_list_add(global.pokeLookup,"venusaur")
var b2 = 1
var b3 = 1
var b4 = 2
var b5 = 4
var b6 = 8
var b7 = 16
var b8 = 24
var b9 = 32
var b10 = 40
levelBenchMarks = ds_list_create()
ds_list_add(levelBenchMarks,0)
ds_list_add(levelBenchMarks,b2)
ds_list_add(levelBenchMarks,b2+b3)
ds_list_add(levelBenchMarks,b2+b3+b4)
ds_list_add(levelBenchMarks,b2+b3+b4+b5)
ds_list_add(levelBenchMarks,b2+b3+b4+b5+b6)
ds_list_add(levelBenchMarks,b2+b3+b4+b5+b6+b7)
ds_list_add(levelBenchMarks,b2+b3+b4+b5+b6+b7+b8)
ds_list_add(levelBenchMarks,b2+b3+b4+b5+b6+b7+b8+b9)
ds_list_add(levelBenchMarks,b2+b3+b4+b5+b6+b7+b8+b9+b10)