if ((ds_list_find_index(global.saveroom, id) == -1) && (global.snickchallenge == 0))
{
    repeat (6)
    {
        with (instance_create((x + 32), (y + 32), obj_debris))
        {
            if (sprite_index == spr_bigbreakable)
                sprite_index = spr_bigpizzadebris
            else
                sprite_index = spr_halloweenbigdebris
        }
    }
    with (instance_create((x + 32), (y + 32), obj_pizzaslice))
    {
        hsp = 2
        sprite_index = spr_xmasspinningslice
    }
    with (instance_create((x + 32), (y + 32), obj_pizzaslice))
    {
        hsp = -2
        sprite_index = spr_xmasspinningslice
    }
    tile_layer_delete_at(1, x, y)
    tile_layer_delete_at(1, (x + 32), y)
    tile_layer_delete_at(1, (x + 32), (y + 32))
    tile_layer_delete_at(1, x, (y + 32))
    ds_list_add(global.saveroom, id)
}

