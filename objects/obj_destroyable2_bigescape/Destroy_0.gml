if (ds_list_find_index(global.saveroom, id) == -1)
{
    if (global.panic == 1)
    {
        repeat (6)
        {
            with (instance_create((x + 32), (y + 32), obj_debris))
                sprite_index = spr_bigdebrisescape
        }
        with (instance_create((x + 32), (y + 32), obj_pizzaslice))
        {
            hsp = 2
            if (((obj_player1.character == "N") && (obj_player1.spotlight == 1)) || ((obj_player2.character == "N") && (obj_player1.spotlight == 0)))
                sprite_index = spr_halloweenspinningpizza
            else
                sprite_index = spr_pizzaslice
        }
        with (instance_create((x + 32), (y + 32), obj_pizzaslice))
        {
            hsp = -2
            if (((obj_player1.character == "N") && (obj_player1.spotlight == 1)) || ((obj_player2.character == "N") && (obj_player1.spotlight == 0)))
                sprite_index = spr_halloweenspinningpizza
            else
                sprite_index = spr_pizzaslice
        }
        tile_layer_delete_at(1, x, y)
        tile_layer_delete_at(1, (x + 32), y)
        tile_layer_delete_at(1, (x + 32), (y + 32))
        tile_layer_delete_at(1, x, (y + 32))
        ds_list_add(global.saveroom, id)
    }
}

