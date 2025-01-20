
draw_sprite(spr_rosto_player,1,30,15)
if global.life2 = 4{
draw_sprite(spr_life,4,100,27)
}
if global.life2 = 3{
draw_sprite(spr_life,3,100,27)
}
if global.life2 = 2{
draw_sprite(spr_life,2,100,27)
}
if global.life2 = 1{
draw_sprite(spr_life,1,100,27)
}
if global.life2 <= 0{
draw_sprite(spr_life,0,100,27)
}