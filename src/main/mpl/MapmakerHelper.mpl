include "MMH_megs.mpl"
include "MMH_portalSpawner.mpl"
include "MMH_lightBridgeSpawner.mpl"
include "MMH_laserSpawner.mpl"
include "MMH_weightedStorageCubeSpawner.mpl"
include "MMH_discouragementRedirectionCubeSpawner.mpl"
include "MMH_repulsionGelSpawner.mpl"
include "MMH_propulsionGelSpawner.mpl"
include "MMH_cleansingGelSpawner.mpl"

project MMH {
  orientation "zy-x"
}

///setblock ~ ~ ~ wall_sign 3 replace {Text1:"{\"text\":\"Adrodoc55\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @a {\\\"text\\\":\\\"\\\",\\\"extra\\\":[{\\\"text\\\":\\\"Check out \\\",\\\"color\\\":\\\"yellow\\\"},{\\\"text\\\":\\\"Adrodoc55's\\\",\\\"color\\\":\\\"gold\\\"},{\\\"text\\\":\\\" YouTube-Channel by clicking \\\",\\\"color\\\":\\\"yellow\\\"},{\\\"text\\\":\\\"here\\\",\\\"color\\\":\\\"aqua\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"open_url\\\",\\\"value\\\":\\\"https://www.youtube.com/user/Adrodoc55\\\"}}]}\"}}",Text2:"{\"text\":\"\"}",Text3:"because I wanted",Text4:"to thank myself"}
///setblock ~ ~ ~ standing_sign 0 replace {Text1:"{\"text\":\"Special Thanks\",\"bold\":\"true\"}",Text2:"{\"text\":\"click on the \",\"extra\":[{\"text\":\"red\",\"color\":\"red\"}]}",Text3:"names for more",Text4:"information"}
///setblock ~ ~ ~ wall_sign 3 replace {Text1:"{\"text\":\"SQRTdude\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @a {\\\"text\\\":\\\"\\\",\\\"extra\\\":[{\\\"text\\\":\\\"Check out \\\",\\\"color\\\":\\\"yellow\\\"},{\\\"text\\\":\\\"SQRTdude's\\\",\\\"color\\\":\\\"gold\\\"},{\\\"text\\\":\\\" Video by clicking \\\",\\\"color\\\":\\\"yellow\\\"},{\\\"text\\\":\\\"here\\\",\\\"color\\\":\\\"aqua\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"open_url\\\",\\\"value\\\":\\\"http://youtu.be/g7xfCBRjGRQ\\\"}}]}\"}}",Text2:"{\"text\":\"\"}",Text3:"for the",Text4:"Copy Helper"}

install {
  /scoreboard objectives add MMH_Rotation dummy
  start @e[tag=MMH]
  /tellraw @a {"text":"","extra":[{"text":"Welcome to","color":"dark_green"},{"text":" Mapmaker Helper\n","color":"green"},{"text":"   Version: ","color":"aqua"},{"text":"2.0.2\n","color":"dark_aqua","italic":"true"},{"text":"   made by ","color":"aqua","italic":"true"},{"text":"Adrodoc55\n","color":"dark_aqua","hoverEvent":{"action":"show_text","value":{"text":"Click to open YouTube Channel","color":"red"}},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/user/Adrodoc55"}}]}
}

uninstall {
  /scoreboard objectives remove MMH_Rotation
  stop @e[tag=MMH]
}

#MMH
repeat process MMH_rotation {
  /scoreboard players set @a[rym=45,ry=135] MMH_Rotation 0
  /scoreboard players set @a[rym=135,ry=-135] MMH_Rotation 1
  /scoreboard players set @a[rym=-135,ry=-45] MMH_Rotation 2
  /scoreboard players set @a[rym=-45,ry=45] MMH_Rotation 3
}
