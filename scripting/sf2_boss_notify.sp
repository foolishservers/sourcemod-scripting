#include <sourcemod>

public Plugin myinfo =
{
    name = "SF2 Boss Notify",
    author = "Monera",
    description = "This notifies boss information to players",
    version = "1.0",
    url = ""
};

forward void SF2_OnBossProfileLoaded(const char[] profile, KeyValues kv);

public void SF2_OnBossProfileLoaded(const char[] profile, KeyValues kv)
{
    char name[128];
    kv.GetString("name", name, sizeof(name), profile);
    PrintToChatAll("\x06%s", name);
}