//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////

//this addEventHandler ["fired",{_this execvm "detect_smoke.sqf"}]

_shooter = _this Select 0; 
_ammotype = _this Select 4;

//hint format["%1",_ammotype];

sleep 2;
switch (_ammotype) do
{
		
    case "SmokeShellGreen":
    {
       Hint "Green Smoke Detected";
_wp0 = group chopper addWaypoint [ getpos player, 50];	
_wp0 setWaypointType "MOVE";
_wp0 setWaypointStatements ["true", "chopper land 'land'"];

waituntil {{_x in chopper}count units blue  == {alive _x} count units  blue};


_wp1 = group chopper addWaypoint [getpos base, 50];
_wp1 setWaypointType "MOVE";

_wp2 = group chopper addWaypoint [getpos base, 50];
_wp2 setWaypointType "TR UNLOAD";
_wp2 setWaypointStatements ["true", "chopper land 'land';chopper setdamage 0"];

   };
   
      case "1Rnd_SmokeGreen_Grenade_shell":
    {
       Hint "Helicopter Inbound";
    };
    
        case "FlareGreen_F":
    {
       Hint "Helicopter Inbound";
    };
    
       case "3Rnd_SmokeGreen_Grenade_shell":
    {
       Hint "Helicopter Inbound";
    };
    
        case "UGL_FlareGreen_F":
    {
       Hint "Helicopter Inbound";
    };
    
      case "3Rnd_UGL_FlareGreen_F":
    {
       Hint "Helicopter Inbound";
    };
    
};