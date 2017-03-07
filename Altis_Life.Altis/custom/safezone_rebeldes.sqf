private ["_eh1","_inArea","_zone1","_zone2","_zone3","_zone4","_zone5","_zone6","_zone7","_zone8","_zone9","_zone1dis","_zone2dis","_zone3dis","_zone4dis","_zone5dis","_zone6dis","_zone7dis","_zone8dis","_zone9dis","_zone10dis","_zone11dis","_zone12dis","_zone13dis","_zone14dis","_zone15dis","_zone16dis","_dis"];

_zone1 = getMarkerPos "rebelde_1"; // MARKERS FOR SAFEZONE
_zone2 = getMarkerPos "rebelde_2";
_zone3 = getMarkerPos "rebelde_3";
_zone4 = getMarkerPos "s_4";
_zone5 = getMarkerPos "s_5";
_zone6 = getMarkerPos "s_6";
_zone7 = getMarkerPos "s_7";
_zone8 = getMarkerPos "s_8";
_zone9 = getMarkerPos "s_9";
_zone10 = getMarkerPos "s_10";
_zone11 = getMarkerPos "s_11";
_zone12 = getMarkerPos "s_12";
_zone13 = getMarkerPos "s_13";
_zone14 = getMarkerPos "s_14";
_zone15 = getMarkerPos "s_15";
_zone16 = getMarkerPos "s_16";




_zone1dis = 80;
_zone2dis = 80;
_zone3dis = 80;
_zone4dis = 230;
_zone5dis = 70;
_zone6dis = 180;
_zone7dis = 70;
_zone8dis = 80;
_zone9dis = 80;
_zone10dis = 70;
_zone11dis = 80;
_zone12dis = 75;
_zone13dis = 50;
_zone14dis = 50;
_zone15dis = 100;
_zone16dis = 100;

_dis = 350;
_inArea = false;

_enterText = "Entrando em uma area rebelde pacificada.";
_leaveText = "Saindo da área rebelde! Tenha uma boa viagem.";

switch (playerSide) do
{
	case west:
	{
		while {true} do
		{
			if (alive player) then
			{
				if (((_zone1 distance player < _zone1dis) || (_zone2 distance player < _zone2dis) || (_zone3 distance player < _zone3dis) || (_zone4 distance player < _zone4dis) || (_zone5 distance player < _zone5dis) || (_zone6 distance player < _zone6dis) || (_zone7 distance player < _zone7dis) || (_zone8 distance player < _zone8dis) || (_zone9 distance player < _zone9dis) || (_zone10 distance player < _zone10dis) || (_zone11 distance player < _zone11dis) || (_zone12 distance player < _zone12dis) || (_zone13 distance player < _zone13dis)) && (!_inArea)) then
				{
					_inArea = true;
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona Segura<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player allowDamage false;
                    vehicle player allowDamage false;
					safezone = true;
				};
				if (((_zone1 distance player > _zone1dis) && (_zone2 distance player > _zone2dis) && (_zone3 distance player > _zone3dis) && (_zone4 distance player > _zone4dis) && (_zone5 distance player > _zone5dis) && (_zone6 distance player > _zone6dis) && (_zone7 distance player > _zone7dis) && (_zone8 distance player > _zone8dis) && (_zone9 distance player > _zone9dis) && (_zone10 distance player > _zone10dis) && (_zone11 distance player > _zone11dis) && (_zone12 distance player > _zone12dis) && (_zone13 distance player > _zone13dis)) && (_inArea)) then
				{
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona Segura<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
					player allowDamage true;
					vehicle player allowDamage true;
					safezone = false;
				};

			};
		};
	};

	case civilian:
	{
		while {true} do
		{
			if (alive player) then
			{
				if (((_zone1 distance player < _zone1dis) || (_zone2 distance player < _zone2dis) || (_zone3 distance player < _zone3dis) || (_zone4 distance player < _zone4dis) || (_zone5 distance player < _zone5dis) || (_zone6 distance player < _zone6dis) || (_zone7 distance player < _zone7dis) || (_zone8 distance player < _zone8dis) || (_zone9 distance player < _zone9dis) || (_zone10 distance player < _zone10dis) || (_zone11 distance player < _zone11dis) || (_zone12 distance player < _zone12dis) || (_zone13 distance player < _zone13dis)) && (!_inArea)) then
				{
					_eh1 = player addEventHandler ['Fired',{if(inSafeZone)then{deleteVehicle (_this select 6)}}];
					_inArea = true;
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona Segura<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player allowDamage false;
					vehicle player allowDamage false;
					safezone = true;
				};
				if (((_zone1 distance player > _zone1dis) && (_zone2 distance player > _zone2dis) && (_zone3 distance player > _zone3dis) && (_zone4 distance player > _zone4dis) && (_zone5 distance player > _zone5dis) && (_zone6 distance player > _zone6dis) && (_zone7 distance player > _zone7dis) && (_zone8 distance player > _zone8dis) && (_zone9 distance player > _zone9dis) && (_zone10 distance player > _zone10dis) && (_zone11 distance player > _zone11dis) && (_zone12 distance player > _zone12dis) && (_zone13 distance player > _zone13dis)) && (_inArea)) then
				{
					player removeEventHandler ["fired", _eh1];
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona Segura<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
					player allowDamage true;
					vehicle player allowDamage true;
					safezone = false;
				};

			};
		};
	};

	case independent:
	{
		while {true} do
		{
			if (alive player) then
			{
				if (((_zone1 distance player < _zone1dis) || (_zone2 distance player < _zone2dis) || (_zone3 distance player < _zone3dis) || (_zone4 distance player < _zone4dis) || (_zone5 distance player < _zone5dis) || (_zone6 distance player < _zone6dis) || (_zone7 distance player < _zone7dis) || (_zone8 distance player < _zone8dis) || (_zone9 distance player < _zone9dis) || (_zone10 distance player < _zone10dis) || (_zone11 distance player < _zone11dis) || (_zone12 distance player < _zone12dis) || (_zone13 distance player < _zone13dis)) && (!_inArea)) then
				{
					_inArea = true;
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona Segura<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player allowDamage false;
					safezone = true;
					vehicle player allowDamage false;
					imAuto = false;
				};
				if (((_zone1 distance player > _zone1dis) && (_zone2 distance player > _zone2dis) && (_zone3 distance player > _zone3dis) && (_zone4 distance player > _zone4dis) && (_zone5 distance player > _zone5dis) && (_zone6 distance player > _zone6dis) && (_zone7 distance player > _zone7dis) && (_zone8 distance player > _zone8dis) && (_zone9 distance player > _zone9dis) && (_zone10 distance player > _zone10dis) && (_zone11 distance player > _zone11dis) && (_zone12 distance player > _zone12dis) && (_zone13 distance player > _zone13dis)) && (_inArea)) then
				{
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona Segura<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
					player allowDamage true;
					safezone = false;
					vehicle player allowDamage true;
					imAuto = true;
				};

			};
		};
	};
	sleep 3;
};