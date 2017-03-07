private ["_eh1","_inArea","_zone1","_zone2","_zone3","_zone4","_zone5","_zone6","_zone7","_zone8","_zone9","_zone1dis","_zone2dis","_zone3dis","_zone4dis","_zone5dis","_zone6dis","_zone7dis","_zone8dis","_zone9dis","_zone10dis","_zone11dis","_zone12dis","_zone13dis","_zone14dis","_zone15dis","_zone16dis","_dis"];

_zone1 = getMarkerPos "empresa_cocacola"; // MARKERS FOR SAFEZONE
_zone2 = getMarkerPos "empresa_sal";
_zone3 = getMarkerPos "empresa_diamente";
_zone4 = getMarkerPos "empresa_cobre";
_zone5 = getMarkerPos "empresa_ferro";
_zone6 = getMarkerPos "empresa_petrobras";
_zone7 = getMarkerPos "empresa_maconha";
_zone8 = getMarkerPos "empresa_metilfenidato";
_zone9 = getMarkerPos "empresa_malte";
_zone10 = getMarkerPos "empresa_kingston";
_zone11 = getMarkerPos "empresa_cimento";
_zone12 = getMarkerPos "empresa_asus";
_zone13 = getMarkerPos "empresa_nvidia";
_zone14 = getMarkerPos "s_14";
_zone15 = getMarkerPos "s_15";
_zone16 = getMarkerPos "s_16";




_zone1dis = 80;
_zone2dis = 80;
_zone3dis = 80;
_zone4dis = 70;
_zone5dis = 70;
_zone6dis = 80;
_zone7dis = 40;
_zone8dis = 80;
_zone9dis = 40;
_zone10dis = 80;
_zone11dis = 80;
_zone12dis = 80;
_zone13dis = 45;
_zone14dis = 80;
_zone15dis = 80;
_zone16dis = 80;

_dis = 350;
_inArea = false;

_enterText = "Você está em uma empresa, não cometa crimes aqui.";
_leaveText = "Saindo de uma empresa, tenha um bom trabalho.";

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