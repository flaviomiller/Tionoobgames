private ["_eh1","_inArea","_zone1","_zone2","_zone3","_zone4","_zone5","_zone6","_zone7","_zone8","_zone9","_zone1dis","_zone2dis","_zone3dis","_zone4dis","_zone5dis","_zone6dis","_zone7dis","_zone8dis","_zone9dis","_zone10dis","_zone11dis","_zone12dis","_zone13dis","_zone14dis","_zone15dis","_zone16dis","_dis"];

_zone1 = getMarkerPos "ilegal"; // MARKERS FOR SAFEZONE
_zone2 = getMarkerPos "ilegal_1";
_zone3 = getMarkerPos "ilegal_2";
_zone4 = getMarkerPos "ilegal_3";
_zone5 = getMarkerPos "ilegal_4";
_zone6 = getMarkerPos "ilegal_5";
_zone7 = getMarkerPos "ilegal_6";
_zone8 = getMarkerPos "ilegal_7";
_zone9 = getMarkerPos "";
_zone10 = getMarkerPos "";
_zone11 = getMarkerPos "";
_zone12 = getMarkerPos "";
_zone13 = getMarkerPos "";
_zone14 = getMarkerPos "";
_zone15 = getMarkerPos "";
_zone16 = getMarkerPos "";




_zone1dis = 100;
_zone2dis = 200;
_zone3dis = 100;
_zone4dis = 50;
_zone5dis = 100;
_zone6dis = 100;
_zone7dis = 100;
_zone8dis = 100;
_zone9dis = 100;
_zone10dis = 300;
_zone11dis = 50;
_zone12dis = 75;
_zone13dis = 50;
_zone14dis = 50;
_zone15dis = 100;
_zone16dis = 100;

_dis = 350;
_inArea = false;

_enterText = "Você está numa area ilegal!";
_leaveText = "Você saiu de uma area ilegal!";

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
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Cuidado! Area ilegal com criminosos.<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player allowDamage true;
					safezone = true;
				};
				if (((_zone1 distance player > _zone1dis) && (_zone2 distance player > _zone2dis) && (_zone3 distance player > _zone3dis) && (_zone4 distance player > _zone4dis) && (_zone5 distance player > _zone5dis) && (_zone6 distance player > _zone6dis) && (_zone7 distance player > _zone7dis) && (_zone8 distance player > _zone8dis) && (_zone9 distance player > _zone9dis) && (_zone10 distance player > _zone10dis) && (_zone11 distance player > _zone11dis) && (_zone12 distance player > _zone12dis) && (_zone13 distance player > _zone13dis)) && (_inArea)) then
				{
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Retornando a abordagens padrão.<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
					player allowDamage true;
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
					_inArea = true;
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Uh uh vai morrê!<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player allowDamage true;
					safezone = true;
				};
				if (((_zone1 distance player > _zone1dis) && (_zone2 distance player > _zone2dis) && (_zone3 distance player > _zone3dis) && (_zone4 distance player > _zone4dis) && (_zone5 distance player > _zone5dis) && (_zone6 distance player > _zone6dis) && (_zone7 distance player > _zone7dis) && (_zone8 distance player > _zone8dis) && (_zone9 distance player > _zone9dis) && (_zone10 distance player > _zone10dis) && (_zone11 distance player > _zone11dis) && (_zone12 distance player > _zone12dis) && (_zone13 distance player > _zone13dis)) && (_inArea)) then
				{
					_inArea = false;		
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Deu sorte dessa vez.<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
					player allowDamage true;
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
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Cuidado SAMU! Area de crimes!<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player allowDamage true;
					safezone = true;
					imAuto = false;
				};
				if (((_zone1 distance player > _zone1dis) && (_zone2 distance player > _zone2dis) && (_zone3 distance player > _zone3dis) && (_zone4 distance player > _zone4dis) && (_zone5 distance player > _zone5dis) && (_zone6 distance player > _zone6dis) && (_zone7 distance player > _zone7dis) && (_zone8 distance player > _zone8dis) && (_zone9 distance player > _zone9dis) && (_zone10 distance player > _zone10dis) && (_zone11 distance player > _zone11dis) && (_zone12 distance player > _zone12dis) && (_zone13 distance player > _zone13dis)) && (_inArea)) then
				{
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Bom trabalho!<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
     				player allowDamage true;
					safezone = false;
					imAuto = true;
				};

			};
		};
	};
	sleep 3;
};