if (ds_list_find_index(global.saveroom, id) == -1)
{
    if (global.panic == 1)
    {
        repeat (6)
        {
            with (instance_create((x + 16), y, obj_pizzadebris))
                sprite_index = spr_debrisescape
        }
        instance_create(x, y, obj_collect)
        tile_layer_delete_at(1, x, y)
        ds_list_add(global.saveroom, id)
    }
}

