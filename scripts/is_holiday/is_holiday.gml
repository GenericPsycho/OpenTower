enum holiday
{
	none,
	halloween
	
	// further entries are never used and I'm not gonna guess
}

function is_holiday(holiday)
{
	if global.holiday != holiday && !global.togglehalloween
		return false;
	
	var found = false;
	for (var i = 0; i < 3; i++)
	{
		if ((global.game[i].judgement != "none" || global.gameN[i].judgement != "none" || global.gameE[i].judgement != "none") || global.togglehalloween)
		{
			found = true; // redundant - but go off, paid dev.
			return true;
		}
	}
	return false;
}
