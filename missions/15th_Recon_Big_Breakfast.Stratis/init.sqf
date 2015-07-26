G_isDedicated = false;
G_isServer = false;
G_isClient = false;
G_isJIP = false;
G_Briefing = true;
G_Revive_System = true;
G_Revive_Time_Limit  = -1;
G_Revive_DownsPerLife = 0;
G_Revive_Can_Revive = [];
if (isDedicated) then {
    G_isDedicated = true;
    G_isServer = true;
}
else
{
    if (isServer) then {G_isServer = true};
    G_isClient = true;
    if (isNull player) then {G_isJIP = true};
    waitUntil {!isNull player};
};

[] execVM "G_Revive_init.sqf";
execVM "briefing.sqf";
