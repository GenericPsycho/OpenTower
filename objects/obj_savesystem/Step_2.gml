if state == 0
{
	if dirty
	{
		if savegame
		{
			savegame = false;
			state = 1;
			with obj_achievementtracker
			{
				achievement_save_variables(achievements_update);
				achievement_save_variables(achievements_notify);
			}
			showicon = true;
			icon_alpha = 3;
			buffer_async_group_begin(get_buffer_group_name());
			savebuff = buffer_create(1, buffer_grow, 1);
			ini_open_from_string(ini_str);
			var finalstatus = get_percentage();
			if finalstatus == 102
			{
				finalstatus = 101;
				ini_write_real("Game", "percentPlus", 1);
			}
			else
				ini_write_real("Game", "percentPlus", 0);
			ini_write_real("Game", "percent", finalstatus);
			ini_write_real("Game", "minutes", global.file_minutes);
			ini_write_real("Game", "seconds", global.file_seconds);
			var closestring = ini_close();
			buffer_write(savebuff, 11, closestring);
			buffer_save_async(savebuff, get_savefile_ini(ispeppino), 0, buffer_get_size(savebuff));
			saveid = buffer_async_group_end();
		}
		else if saveoptions
		{
			saveoptions = false;
			state = 3;
			buffer_async_group_begin("");
			savebuff = buffer_create(1, buffer_grow, 1);
			showicon = true;
			icon_alpha = 3;
			buffer_write(savebuff, 11, ini_str_options);
			buffer_save_async(savebuff, "saveData.ini", 0, buffer_get_size(savebuff));
			saveid = buffer_async_group_end();
		}
		else
			dirty = false;
	}
}
