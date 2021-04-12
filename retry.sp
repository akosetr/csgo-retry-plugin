#include <sourcemod>
#include <sdktools>

#pragma tabsize 0


 public Plugin myinfo =
{
	name = "Retry",
	author = "akosetr",
	description = "İstediğiniz oyuncuya retry attırın.",
	version = "1.0",
	url = "https://csgomerkezi.online/"
}


public OnPluginStart()
{

	RegAdminCmd("sm_retry", Retry_At, ADMFLAG_ROOT, "sadece z root");

}

public Action Retry_At(int client, int args)
{

    char arg1[32];
	GetCmdArg(1, arg1, 32);
	int oyuncu = FindTarget(client, arg1, false, true);
	

if (args != 1)
	{
		ReplyToCommand(client, " \x04 !retry <Oyuncu İsmi>");
	}
    
	else {
	
		
	
		ClientCommand(oyuncu, "retry");
       	//return Plugin_Continue;
           
	}
	

}
