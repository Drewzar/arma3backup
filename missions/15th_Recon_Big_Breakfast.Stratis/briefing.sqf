waitUntil { !isNil {player} };
waitUntil { player == player };

switch (side player) do 
{

case WEST: // BLUFOR briefing goes here
{
player createDiaryRecord ["Diary", ["Intel", "Our Intel have reported two patrols areas with, probably, small fireteams and snipers. UAV's gathered information about the size of the squads in the outpost, one IFV and two enemy squads."]];
player createDiaryRecord ["Diary", ["Execution", "The '15th Recon MEU' will start the mission near the shores of Stratis. Infiltrate the island and destroy the outpost. Daylight will come soon so you need to pay attention. After that, proceed to occupy the crossroad and esfiltrate securely using HELI support, called with green smoke. Remember that you are in enemy ZOC and heavily outnumbered, you have one CAS request available."]];
player createDiaryRecord ["Diary", ["Mission", "We are about to invade Stratis, the '15th Recon MEU' will infiltrate and seize the outpost to destroy OPFOR's AAs defense, after that occupy the crossroad and evac using helix at LZ Kilo."]];
};


case EAST: // OPFOR briefing goes here
{ 
};


case RESISTANCE: // RESISTANCE/INDEPENDENT briefing goes here
{ 
};


case CIVILIAN: // CIVILIAN briefing goes here
{ 
};
};