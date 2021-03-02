#include <sourcemod>

#pragma semicolon 1

public Plugin:myinfo = {
	name        = "Disable resetteam",
	author      = "hoyxen",
	description = "Disable resetteam command.",
	version     = "1.0",
	url         = "https://steamcommunity.com/id/HOYXEN"
};

public OnPluginStart()
{
	LoadTranslations("disable_resetteam.phrases");
	AddCommandListener(Command_BlockResetteam, "resetteam");
}

public Action:Command_BlockResetteam(client, const String:command[], argc)
{
    PrintToChat(client, "[ \x07hoyxen.pt \x01] %t", "You are not allowed to use this command");
	return Plugin_Handled;
}