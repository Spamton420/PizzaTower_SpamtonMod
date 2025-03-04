if ((ds_list_find_index(global.saveroom, id) == -1) && (global.snickchallenge == 0))
{
    repeat (6)
    {
        with (instance_create((x + 16), y, obj_pizzadebris))
        {
            if (sprite_index == spr_destroyable2)
                sprite_index = spr_debris
            else
                sprite_index = spr_halloweendebris
        }
    }
    instance_create(x, y, obj_collect)
    tile_layer_delete_at(1, x, y)
    ds_list_add(global.saveroom, id)
}

