waitUntil {!isNull player && player isEqualTo player};
if (player diarySubjectExists "controls") exitWith {};

player createDiarySubject ["Novidades","Novidades"];
player createDiarySubject ["credits","Credits"];
//player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["Regras Gerais","Regras Gerais"];
//player createDiarySubject ["Safezones","Safezones"];
//player createDiarySubject ["Rebeldes","Rebeldes"];
//player createDiarySubject ["Policiais","Regras de COP"];
//player createDiarySubject ["SAMU","SAMU"];
//player createDiarySubject ["civrules","Civilian Rules"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["Safezones","Safezones"];
player createDiarySubject ["Assalto e Sequestro","Assalto e Sequestro"];
player createDiarySubject ["Favelas","Regras das Favelas"];
player createDiarySubject ["Empresas","Empresas"];
player createDiarySubject ["BRINKS","BRINKS"];
player createDiarySubject ["Banimentos","Banimentos"];
player createDiarySubject ["preços","Preços"];
player createDiarySubject ["Aviação","Aviação"];
player createDiarySubject ["Policia Federal","Policia Federal"];
player createDiarySubject ["Leilões","Leilões"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["Controles","Controles"];


/*  Example
    player createDiaryRecord ["", //Container
        [
            "", //Subsection
                "
TEXT HERE<br/><br/>
                "
        ]
    ];
*/

    player createDiaryRecord ["credits",
        [
            "ArmaLife",
                "
ArmaLife is a GitHub project which aims to update and keep adding new features to the original 'Altis Life RPG' by Tonic.<br/><br/>
Eu, (Dexter), agradeço toda a equipe que participou no desenvolvimento do servidor e a todos os players que ajudaram a reportar bugs.<br/>
Reformulação de SKINS para o servidor, os créditos vão para nosso amigo Michell Raposo. Obrigado pelo excelente trabalho!<br/>
Email para contato:<br/>
michellraposo@gmail.com!<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["Novidades",
        [
            "Novidades e correções",
                "
Aqui estão escritas as novidades, sendo registradas a partir do dia 24/11/2016.<br/><br/>
Eu, (Dexter), agradeço toda a equipe que participou no desenvolvimento do servidor e a todos os players que ajudaram a reportar bugs.<br/>
Obrigado a todos os que doarão e ajudam nosso servidor a continuar crescendo!<br/>
 <br/>
Adicionado:<br/>
 <br/>
- Empresa BRINKS escolta armada.<br/>
- Favelas para compras com um farm a escolha do comprador.<br/>
- Regra para Offroad .50 policial.(Sessão regras gerais/regras de cop).<br/>
- Offroad .50 para policiais.<br/>
- Capa de sequestro e GPS CarSystem<br/>
- Luzes na cidade Morumbi VIP<br/>
- Sistema de roubo de celular (Em aprovação dos jogadores)<br/>
 <br/>
Corrigido:
- Bugs no assalto a postos de combustivel.
- Alterado valor para formar uma gangue e diminuido para $500 valor de upgrade<br/>
- Bug respawn de helicopteros em HQ de Pyrgos<br/>
- Bugs no respawn da Policia Rodoviaria<br/>
- DUP Rangefinder e Tempest Device<br/><br/>
                "
        ]
    ];

    player createDiaryRecord["changelog",
        [
            "Mudanças da versão",
                "
RockInAltis mudanças:<br/><br/>
 <br/>
Proibido vender casas. Caso necessite solicitar a exclusão para um admin<br/>
Data: 14.10.2016 19:55BRA<br/>
                "
        ]
    ];

    player createDiaryRecord["changelog",
        [
            "Server Change Log",
                "
This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.<br/><br/>
                "
        ]
    ];




     player createDiaryRecord ["Regras gerais",
        [
        "Preço de multas",
                "
Gravíssima = 8000 / Grave = 5000 / Média = 3000 / Leve = 1000<br/><br/>

1. Transitar com velocidade até 20% a mais da velocidade máxima da via  Multa média<br/>
2. Transitar com velocidade de 20% a 50% de velocidade máxima da via = Multa grave<br/>
3. Transitar com velocidade acima de 50% da velocidade máxima da via = Multa gravíssima x3 + Retenção da licença de motorista<br/>
4. Andar na contramão = Multa Grave<br/>
5. Não dar passagem a policia ou ambulâncias = Multa gravíssima<br/>
6. Fuga de acidente = Multa grave<br/>
7. Fuga de acidente com vitima = Multa gravíssima x3 + Retenção da licença de motorista<br/>
8. Andar sem a licença de motorista = Multa gravíssima x3 + Retenção do veiculo<br/>
9. Não parar em bloqueio policial = Multa gravíssima<br/>
10. Efetuar conversão em locais proibidos = Multa grave<br/>
11. Forçar passagem entra veículos = Multa gravíssima x10 + Retenção da licença de motorista<br/>
12. Não reduzir próximo a hospitais, estações de embarque e desembarque ou havendo movimentação de pedestres = Multa gravíssima<br/>
13. Buzina prolongada e sucessivamente = Multa leve<br/>
14. Estacionar impedindo a movimentação de outros veículos = Multa média + Remoção do veiculo<br/>
15. Estacionar em fila dupla = Multa grave + Remoção do veiculo<br/>
16. Estacionar fora da posição estabelecida = Multa média + Remoção do veiculo<br/>
17. Estacionar no meio da via a espera do resgate = Multa grave + Remoção do veiculo<br/>
18. Para em cima do meio fio = Multa média<br/>
19. Para em pista de rolamento, rodovias e vias de transito rápido = Multa grave<br/>
20. Andar com farol apagado ou quebrado = Multa grave<br/>
21. Transporte de cargas acima de 400 em vias de transito rápido ou rodovias = Multa média<br/>
22. Danificar vias e sinalizações = Multa gravíssima x3 + Retenção da licença de motorista<br/>
23. Danificar patrimônios  públicos ou privados = Multa gravíssima x5 + Retenção da licença de motorista<br/>
24. Dirigir sob efeito de álcool ou de qualquer substância psicoativa = Multa gravíssima x10 + Retenção da licença de motorista + Prisão<br/><br/>

                "
        ]
    ];



     player createDiaryRecord ["Regras gerais",
        [
        "Regras de Transito",
                "
A velocidade maxima permitida nas vias de RockIn:<br/>
  130 km/h nas vias de trânsito rápido ou Rodovias.<br/>
  90 km/h nas vias fora da cidade<br/>
  60 km/h vias dentro da cidade<br/><br/>

6.1: O patrulhamento das vias sera feito pela Companhia de Engenharia de Transito (C.E.T.) e policiais<br/>
6.2: Qualquer infração será passível de multa<br/>
6.3: Em casos de acidente retirar o veiculo da via e esperar o regate<br/>
6.3.1: Em caso de vitima fatal, esperar o CET chegar ao local<br/>
6.4: Em caso de vitima, parar o carro chamar o socorro e o CET ou policias e esperar os mesmos<br/><br/>

                "
        ]
    ];


    
    player createDiaryRecord ["Regras Gerais",
        [
            "SAMU",
                "
O Samu dentro do servidor irá exercer a função de médico, bombeiro e mecânico. Qualquer problema que algum jogador venha a ter seja ele por falhas mecânicas no carro ou perda de vida, o SAMU deve sempre estar de prontidão para atender todos.<br/>
O Equipamento do SAMU consistem em Desfibrilador e Kit de reparos, sendo seu principal meio de locomoção o Helicóptero.<br/><br/>

5.1 -    SAMU após efetuar o resgate, pode dar carona ao jogador até o hospital mais próximo.<br/>
5.2 -    SAMU não poderá transportar nenhum item em seu helicóptero.<br/>
5.3 -    Enquanto não houverem chamamos O SAMU deverá permanecer nos hospitais, ou nas cidade principais(Athira, Chapecó ou Kavala) dando suporte aos jogadores.<br/>
5.4 -    SAMU não está autorizada a reviver ninguém nas imediações da reserva federal durante PVP de roubo a reserva.<br/>
5.5 -    A prioridade de reviver é sempre do Policial.<br/>
5.6 -    Em casos de Role-Play, o SAMU que tentar ressuscitar um jogador e receber avisos via celular ou por tiros, tanto vindo de rebeldes quanto de COPs, deverá se afastar e aguardar o RP acabar, pois está em zona de conflito;<br/>
5.6.1 -    O Samu após receber aviso, está sujeito a morrer caso tente reviver o jogador no meio do combate.<br/>
5.7 -    O Policial que foi ressuscitado após morrer em “acidente” terá o direito de escolher se quer ou não ser levado ao hospital.<br/>
5.8 -    O Policial que foi ressuscitado após morrer em “confronto” é obrigatório acompanhar o samu até o hospital!<br/>
5.9 -    Qualquer jogador que for morto em PVP e revivido pelo SAMU terá suas armas apreendidas!<br/>
5.9.1 -    O Samu pode dispensar a apreensão de arma em caso de acidentes com veículos.<br/>
                "
        ]
    ];
    

    player createDiaryRecord ["Regras Gerais",
        [
            "Regras de COP",
                "
Policiais são aqueles que tem o objetivo de deixar Altis mais seguro, apreendendo jogadores, veículos, drogas e armamentos ilegais.<br/>
O policial deve sempre prezar a vida dos civis.<br/>
O Policial tem acesso a armamento letal, e armamento não letal. <br/>
O policial deve sempre tentar conversar com o jogador e somente em último caso deverá utilizar o armamento não letal ou armamento letal em casos onde a vida de outros estão em risco.<br/><br/>

4.1 -    Nenhum cop está autorizado a logar como civil, salvo autorizado pelo Coronel da corporação.<br/>
4.2 -    Respeitar todos os jogadores, agir cordialmente e educadamente respeitando as abordagens conforme orientado por seu superiores.<br/>
4.3 -    Após a morte em confronto de PvP contra rebeldes o policial somente poderá voltar após 15 MINUTOS!<br/>
4.3.1 -    Em casos de reserva o policial poderá voltar em 10 minutos.<br/>
4.4 -    O Blindado, somente poderá ser utilizado durante assalto a reserva federal e sob comando de oficial superior com patente mínima de Sargento;<br/>
4.5 -    Apenas 2 aeronaves policiais no ar são permitidas. 1 Helicóptero já é o suficiente, subir outro apenas com autorização do superior.<br/>
4.6 -    Ao capturar um criminoso, o policial deverá levá-lo imediatamente sem demora para a DP, Delegacia mais próxima FORA de Safe-Zones, onde será explicado tudo ao indivíduo. Essa ação se dá para evitar emboscadas, principalmente quando faz parte de uma Gangue.<br/>
4.7 -    Em casos de PvP, tiroteio onde os Policiais ficam sozinhos com risco de vida sem possibilidades de levar alguém preso, eles têm a autonomia de  algemar sem avisar qualquer um que estiver próximo da operação. <br/>
4.8 -    Em caso de ausência, o policial pode ficar no máximo 1 semana fora (sem aviso da ausência), caso contrário, poderá ser demitido.<br/>
4.9 -    É extremamente proibido cop descer na sala de samu ou civil.<br/>
4.10 -    Armamento letal só poderá ser utilizado quando a vida de Policiais ou de terceiros estiverem em risco ou caso exista alguma ação de roleplay onde a arma letal e necessária. A força letal deve ser utilizada somente em ÚLTIMO CASO!<br/>
4.11 -    Armamento não letal poderá ser usado em abordagens onde o jogador está desarmado e tente empreender fuga.<br/>
4.12 -    Em casos de sequestro o policial deverá responder o sequestrador em menos de 5 minutos, e sair de qualquer ação de roleplay para negociar. (Para saber mais sobre os deveres de um policial, vá para Regras de Sequestro e Assalto).<br/>
4.13 -    A prisão só deverá ser aplicada caso o jogador esteja procurado pela polícia, ou esteja desacatando policiais, farmando drogas ou após uma ação de roleplay. Caso contrário uma multa deverá ser aplicada.<br/>
4.14 -    Multas devem ter um valor máximo de 200.000(Duzentos mil).<br/>
4.15 -    A retirada do A-143 Buzzard está autorizada somente para operações com XYAN ou BLACKFISH. Qualquer outra aeronave o uso do A-143 Buzzard está proibida.<br/>
4.15.1 -    Deve se considerar que deverá ser zelada a vida e os bens materiais de todos os envolvidos, portanto o Policial deverá efetuar disparos a fim de FORÇAR um pouso e somente em últimos casos, após muitos avisos e disparos com tentativa de forçar o pouso da aeronave, a mesma deverá ser abatida.<br/><br/>
                "
        ]
    ];


    

    player createDiaryRecord ["Regras Gerais",
        [
            "Relações Rebeldes x Rebeldes",
                "
3.11-    Um jogador rebelde pode abordar, assaltar, algemar, sequestrar qualquer outro jogador rebelde, desde que esteja seguindo as regras.<br/>
3.12-    É Rebelde? morreu para rebelde? não chore parceiro... escolheu ser vida louca, então sem choro…<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["Regras Gerais",
        [
            "Regras para Rebeldes",
                "
Regras de Rebelde:<br/>
Rebelde é aquele que compra a licença rebelde e compra equipamentos rebeldes(Vestimenta, Armas, Veículos) e por isso está sujeito a qualquer ação de RP ou de PVP.<br/>
Com a compra do Treinamento Rebelde, que custa 500.000(Quinhentos mil), o jogador poderá dar respawn nos morros, comprar armamento rebelde, vestimenta rebelde e carros rebeldes.<br/>

3.1 -      O rebelde tem o direito de agir como achar melhor em relação a uma abordagem policial (com sirene e voz de parada), antes de qualquer sinal de abordagem, abrir fogo será considerado RDM<br/>
3.2 -      O rebelde que foi visto pela polícia e estiver em cidades principais (safe-zones verdes), poderá ser imobilizado pela polícia (Com o uso de Taser e algemas) sem aviso prévio.<br/>
3.3 -    O REBELDE que for abordado e não cooperar, ou for desrespeitoso, ou estiver em alguma área considerada civil, será abordado, algemado e obrigado a entregar seus itens rebeldes, roupa rebelde, colete rebelde e armas rebeldes ALÉM DE SER MULTADO de até R$ 150,000 (Cento e Cinquenta Mil), e liberado caso não tenha nenhuma pendência com a polícia (não esteja na lista de procurados), caso se recuse a pagar a multa será encaminhado à prisão.<br/>
3.4 -    O REBELDE que receber voz de parada, vinda de policiais, e fugir para SAFEZONE será abordado com arma de choque e futuramente preso.<br/>
3.5 -    O REBELDE que foi ressuscitado estará ciente que terá que entregar todo seu armamento para o samu e acompanhar o médico até o hospital. (Exceto se ainda houver algum policial no local, caso haja, segue a regra 1.16.1). <br/>
3.6 -    O CIVIL que estiver usando equipamento REBELDE, mesmo sem licença rebelde será considerado PERIGOSO, não importando o local onde esteja, será algemado e averiguado, caso resista o policial está autorizado a utilizar força letal, sempre objetivando realizar a prisão.<br/>
3.8 -    Proibido matar qualquer civil ou policial sem motivo! isto é considerado RDM.<br/>
3.9 -    Se caso a polícia não ligar a sirene para você ou não fazer algum ato de RP (Tiro de aviso) você não pode atirar nela! mas caso contrario voce pode reagir a abordagem.<br/>
3.10 -    OffRoad .50 e Blindado (Strider) só deve ser usado em casos de assalto à Reserva Federal.<br/><br/>
                "
                ]
    ];


    
    player createDiaryRecord ["Regras Gerais",
        [
        "Regras de Safezones",
                "
2.1 -    É Proibido cometer qualquer crime em safe zones. (Roubar, matar, nocautear, algemar, etc) em Safe-zones!<br/>
2.2 -    Em cidades com Safe zones, as armas devem estar no COLDRE ou nas COSTAS. Com exceção da safe zone VERDE, onde o porte de arma é ilegal<br/>
2.3 -    Proibido matar a menos de 500(Quinhentos) metros da Safe-Zone ou Camperar Safe-Zones.<br/>
2.4 -    CIVIS/REBELDES não podem fugir para área rebelde, spawn VIP ou safe-zones durante uma perseguição(Tanto policial ou de outros jogadores), isso foge do roleplay, e, certamente estará sujeito às punições previstas nas regras;<br/>
2.4.1 -    Caso ocorra de algum jogador fugir para a safe zone, o roleplay pode continuar, ou poderá ser denunciado para staff.<br/>
2.5 -     Proibido Rebelde em safe zones verdes, o rebelde que for pego pela policia está sujeito a multas, apreensão de equipamentos ou até mesmo preso.<br/>
2.6 -     Não se pode iniciar qualquer ação de RP dentro da Safe zone. Com exceção da Safe Verde, para policiais.<br/><br/>

                "
        ]
    ];
    

    player createDiaryRecord ["Regras Gerais",
        [
            "Safezones",
                "
Safezone são áreas no mapa demarcadas com círculos de coloração VERMELHA, VERDE, AZUL e AMARELA. <br/><br/>
 <br/>
Safe zones Verdes: Safe zone feita para Civis e Policiais. Proibido roupas, veículos e armas rebelde. Civis devem portar armas legais no coldre. Qualquer delito (nocaute, roubo, disparo) será encaminhado à prisão. RP originado antes da safezone pode ser continuado dentro da safe zone.<br/>
 <br/>
Safe zones Azuis: Safe zone feita para Civis, Policiais e Rebeldes. Proibido portar armas em punho. Qualquer delito (nocaute, roubo, disparo) será encaminhado à prisão. RP originado antes da safezone pode ser continuado dentro da safe zone.<br/>
 <br/>
Safe zones Vermelhas: Safe zone feita para Rebeldes. Proibido COPS fora de ações de RP. Rebeldes e civis com itens ilegais está liberado. RP originado antes da safezone pode ser continuado dentro da safe zone.<br/>
 <br/>
Safe zones amarelas: Safe zone feita para iniciantes Civis. Proibido iniciar qualquer tipo de RP dentro dela.<br/><br/>

                "
        ]
    ];


    
        player createDiaryRecord ["Regras Gerais",
        [
            "Regras do servidor 2",
                "
1.15 -    O Civil, deverá estar ciente de que poderá ser assaltado por REBELDES ou outros CIVIS seguindo as regras de Sequestro e Assalto.<br/>
1.16 -    Um jogador morto, mesmo após ser revivido por um médico, deverá iniciar uma nova vida, deixando sua vida antiga para trás.<br/>
1.16.1 -    Em caso de óbito, independente se for combate ou acidente, o jogador que decidir ser revivido pelo SAMU poderá sofrer ações da lei caso uma força policial esteja lá no momento do atendimento.<br/>
1.16.2 -    O Policial após ser revivido, não pode iniciar uma ação de Roleplay, dentro de um período de 15 minutos.<br/>
1.17 -    Não é obrigatório o aviso de assalto no SIDE channel, o mesmo pode ser anunciado com disparos feitos PRÓXIMOS à vítima, e não na vítima, ou seja, o barulho do tiro de sua arma é o aviso de um assalto.<br/>
1.18 -    Em áreas de farms ILEGAIS, o PVP é aberto, logo a regra 1.4 e dispensada dentro dessas áreas (Cocaína, Maconha, Traficantes, etc)<br/>
1.19 -    É extremamente  proibido Rebelde atirar em Policial, e virse versa, sem que haja ação de RolePlay. Policiais ou Rebeldes não podem ser alvejados apenas por estarem passando.<br/>
1.20 -    Matar alguém para se proteger ou proteger terceiros sobre clara ameaça, não é RDM.<br/>
1.21 -    É proibido deslogar após morrer, você deverá esperar os 5 minutos, não importa qual seja o motivo, nenhum jogador está autorizado a deslogar antes de dar respawn.<br/>
1.22 -    Veículos do SAMU só podem ser utilizados pelo SAMU, nenhum outro jogador está permitido a entrar no veículo de samu, salvo por testes ou ações de RP. <br/><br/>
                "
        ]
    ];
    

    player createDiaryRecord ["Regras Gerais",
        [
            "Regras do servidor 1",
                "
1.1 -   Respeitar todos os Jogadores, agir cordialmente e educadamente respeitando o roleplay a educação sem ofender, xingar e humilhar.<br/>
1.2 -    Safe-zones: São considerados Safe-zones, as áreas demarcadas com um círculo; (Va até as regras de SAFEZONE para saber mais sobre)<br/>
1.3 -    Os uniformes e itens da POLÍCIA e do RESGATE, são proibidos para civis e rebeldes, se for abordado com algum destes itens você será preso e seu caso será passado a staff do servidor, que poderá aplicar uma punição administrativa!<br/>
1.3.1 -    Os veículos do RESGATE, são proibidos para civis e rebeldes, se for abordado com algum você sofrerá uma punição administrativa!<br/>
1.4 -    RDM: É a ação de atirar em outro sem iniciar alguma ação de RP ou atirar sem nenhum motivo. Caso sofra qualquer tipo de RDM, favor gravar ou tirar ScreenShots e reportar para algum administrador no TeamSpeak3;<br/>
1.5 -    VDM: É a ação de atropelar diretamente um jogador derrubando ele no chão e após isso iniciar alguma ação de RP(Assalto, sequestro, etc) ou RDM. Ações de batida de Veículo x Veículo é permitido, desde que não resulte na morte de um jogador fora do veículo.<br/>
1.5.1 -    Em casos de assalto onde o jogador foi atropelado, o assaltante não pode usar arma letal para matar o mesmo no chão.<br/>
1.6 -    Printscreens: Uma importante ferramenta para ajudar na hora de provar uma denúncia. Para tirar uma ScreenShot aperte F12 com o seu jogo aberto;<br/>
1.7 -    Ressarcimentos: Todo e qualquer tipo de ressarcimento só será dado ao jogador no ts3; (Para saber mais sobre isso vá até as regras de Admin)<br/>
1.8 -    Policiais e civis podem trocar tiros se houver razão para tal. Como alguém ter cometido algum crime;<br/>
1.9 -    Caso morra em fogo cruzado isso não será considerado RDM.<br/>
1.10 -    Matar alguém para se proteger ou proteger terceiros sobre clara ameaça, não é RDM;<br/>
1.11 -    Sempre denunciar jogadores que sejam suspeitos de hack/dupe/glichts, passivo a receber bonificação por tal ato.<br/>
1.12 -    CIVIS/REBELDES não podem fugir para área rebelde, spawn de doador ou safe-zones durante uma perseguição, isso foge do roleplay, e certamente estará sujeito às punições, caso tenha provas concretas sobre tal ato;<br/>
1.13 -    O rebelde que foi visto pela polícia em cidades principais (safe-zones), poderá ser imobilizado pela polícia(Com o uso de Taser e algemas) sem aviso prévio.<br/>
1.14 -    Proibido matar ao menos de 200 metros da Safe-Zone ou Camperar Safe-Zones.<br/><br/>

                "

        ]
    ];
    




    



    
     player createDiaryRecord ["Assalto e Sequestro",
        [
        "Regras de Assalto a Reserva",
                "
7.11 -    O jogador que fizer o assalto a reserva próximo ao restart não será ressarcido.<br/>
7.12 -    O jogador não pode levar o ouro roubado para casa ou para a favela.<br/>


                "
        ]
    ];
    
    
 
     player createDiaryRecord ["Assalto e Sequestro",
        [
        "Regras de Sequestro",
                "
7.1 -    É preciso ter um número mínimo de 3 policiais online para fazer uma negociação.<br/>
7.1.1 -    Caso seja um sequestro de Policial, é preciso ter no mínimo 4 policiais (3 para negociação).<br/>
7.2 -    Após 5 minutos sem resposta de policiais os sequestradores estão autorizados a matar o jogador sequestrado.<br/>
7.3 -    É extremamente proibido qualquer tipo de comunicação entre o sequestrando e demais jogadores. TeamSpeak, Side Channel, Group Channel, entre outros.<br/>
7.3.1 -    O único meio de comunicação liberado para o jogador sequestrado é o direct communication para falar com os sequestradores.<br/>
7.4 -    É extremamente proibido olhar a marcação no mapa(Criada pela gangue ou pelo mapa policial[No sequestro policial]) para ir resgatar o jogador sequestrado.<br/>
7.5 -    Na hora da negociação o Policial deverá avisar a forma como chegará, seja de helicóptero, carro com sirene desligada ou ligada.<br/>
7.6 -    Qualquer uma das partes pode reagir a qualquer momento (Dentro do RolePlay).<br/>
7.7 -    O sequestro só termina quando o sequestrador depositar o dinheiro, ou o jogador sequestrado morre.<br/>
7.8 -    É proibido negociação pelo Ts3. A negociação só pode ser feita dentro do servidor usando o celular!<br/>
7.9 -    O dinheiro não pode ser transferido por conta bancária, só pode entregar o dinheiro para o sequestrador por mão a mão. <br/>
7.10 -    A utilização de um veículo como cativeiro não é permitida, o veículo só pode ser usado para movimentação do sequestrado até o cativeiro.<br/>
7.10.1 -    A Favela e Bases militares não podem ser usadas como cativeiro.<br/>


                "
        ]
    ];
    
 
    
    player createDiaryRecord ["Assalto e Sequestro",
        [
        "Sequestro",
                "
Sequestros entre Rebeldes e Civis devem acontecer da seguinte forma:<br/>
O sequestrador, ao ter a vítima em mãos, deve contatar a polícia, que tem até 5 minutos para responder ao sequestrador via celular.<br/>
O sequestrador, deve esperar no MINIMO 30 minutos antes de assassinar a vitima.<br/>
O valor mínimo e máximo pago pela a COP para o resgate de civis varia entre 180.000(Cento e oitenta mil) e 300.000(Trezentos mil), de acordo com a negociação. Somente será pago o valor máximo caso o civil sequestrado esteja totalmente legalizado e nunca teve passagens pela polícia.<br/><br/>

Sequestro entre Gangues sem envolvimento da polícia:<br/>
    Não existe valor máximo/mínimo para sequestro entre gangues rebeldes.<br/><br/>

Sequestro entre Rebeldes e Policiais devem acontecer da seguinte forma:<br/>
O sequestrador, ao ter a vítima em mãos, deve contatar a polícia, que tem até 5 minutos para responder ao sequestrador via celular.<br/>
O sequestrador, deve esperar no MINIMO 30 minutos antes de assassinar a vitima.<br/>
O valor mínimo e máximo pago pela a COP para o resgate de civis varia entre 300.000 (Trezentos mil) e 500.000 (Quinhentos mil), de acordo com a negociação.<br/><br/>

                "
        ]
    ];
    


    
    player createDiaryRecord ["Favelas",
        [
            "Regras nas Favelas",
                "
8.1 -     A gangue dona da favela está dispensado de aguardar 10 minutos ( para voltar a ação em caso de defesa de sua favela.<br/>

8.1.1 -    Atacantes não possuem o mesmo direito, ao morrer, deverão respeitar a Regra da Nova vida e não retornar ao mesmo local em menos de 15 minutos.<br/>

8.2 -    Não é autorizado uso de blindados para defesa ou ataque á favelas<br/>

8.3 -    Cops são proibidos de fazer operações dentro de favelas.<br/>

8.4 -    Cops são liberados para perseguir jogadores que entrarem em a suas favelas provenientes de ação de RP (Já em perseguição anteriormente).<br/>

8.4.1 -    O dono deverá estar ciente de que o policial poderá entrar na favela e realizar a operação ( Prendendo, Matando, e vasculhando as casas da favela) <br/>

8.5 -    Em caso de uma favela ILEGAL, os POLICIAIS são proibidos de atender pedidos de ajuda para defender a mesma.<br/>

8.5.1 -    Em caso de uma favela Legal, os policiais estão liberados para ajudar a defender a mesma, porém a defesa de uma favela não será dada como prioridade pela corporação.<br/>

8.6 -    Em caso de sequestros, é proibido que a vítima seja levada a qualquer favela, pois jogadores podem logar e atrapalhar o roleplay<br/>

8.7 -    ATENÇÃO! É PROIBIDO comprar CASAS destinadas aos DOADORES e membros da GANGUE a qual a favela pertence! Ao ser constatado que algum jogador comprou a casa destinada a membros da gangue da favela, o mesmo receberá banimento de 3 dias do servidor e terá todas as suas casas deletadas.<br/>

                "
        ]
    ];
    

    
        player createDiaryRecord ["Empresas",
        [
        "Regras do Funcionário",
                "
 
9.9 -    Funcionários com veículos próprios poderão utilizar seus veículos, e a taxa para a empresa é de 15% do lucro final.<br/>
 
9.10 -    Funcionários com veículos cedidos pela Empresa, deverão pagar OBRIGATORIAMENTE entre 30% e 40% do valor final do lucro para o empregador, como taxa de uso.<br/>
 
9.11 -    Cobrar valor abaixo será enquadrado como competição desleal aos concorrentes e estará sujeito a perda da empresa.<br/>

9.12 -    O recolhimento da porcentagem deverá ocorrer após a venda dos produtos.<br/>

9.13 -    O não pagamento da taxa ao empresário, será considerado crime e entrará para a lista de procurados da polícia.<br/>

9.14 -    É proibido levar um veículo de uma empresa para desmanche.<br/><br/>


                "
        ]
    ];
    
    
    player createDiaryRecord ["Empresas",
        [
        "Regras de Empresas",
                "
As empresas são locais onde qualquer jogador poderá farmar seguindo as regras para empresas e regras informadas pelo dono da empresa,<br/>
 você poderá farmar utilizando o caminhão da empresa (caso o dono disponibilize) ou utilizando o seu caminhão, porém para ambos é necessário pagar uma porcentagem imposta<br/>
 pelo empregador. O local da empresa é uma safe-zone azul, assim impossibilitando qualquer delito na mesma,<br/>
 porém você poderá ser assaltado no caminho até a assistência, ou até mesmo dentro dela.<br/>

Empresas são vendidas por uma valor mínimo de 4.000.000 (Quatro Milhões).<br/>

O salário do funcionário, está em função da porcentagem imposta pelo empregador. Essa porcentagem deverá ser paga no final da venda do farm.<br/><br/>

9.1 -    É proibido que o dono frequente a empresa trajando de uniformes e equipamentos rebeldes. Atentar-se que não é proibido ser REBELDE, apenas frequentar a área de trabalho vestido como tal.<br/>

9.2 -    O empresário deverá criar uma grupo com o nome de sua empresa respectiva, igual consta nos nomes em mapas e deverá adicionar seus funcionários a este grupo obrigatoriamente.<br/>
 
9.3 -    Gangues não podem utilizar o local da empresa para impedir civis de trabalharem.<br/>

9.4 -    Proprietários que permanecerem muito tempo ausentes, com a empresa fechada, sem outro encarregado, serão desligados e a mesma passará para outro empresário.<br/>
 
9.5 -    O empregador não deve recusar trabalho a NENHUM civil que solicite trabalhar em sua empresa.<br/>
 
9.6 -    O proprietário de uma empresa, é obrigado a pagar o contrato com a BRINKS de $100.000,00.<br/>
 
9.7 -    Somente será considerado um funcionário, aquele que tiver no grupo com o nome da empresa.<br/>

9.8 -    O empregador deverá fornecer um veículo e garantir a segurança do funcionário por meio da BRINKS (vide contrato de $100.000,00 por dia).<br/><br/>


                "
        ]
    ];


    
    player createDiaryRecord ["BRINKS",
        [
        "Regras da BRINKS",
                "
10.1 -    A BRINKS está proibida, em qualquer circunstância, de combater ou entrar em confronto com as Polícias Militares e/ou Federais.<br/>

10.1.1 -    Caso haja confronto havendo letalidade policial, o mesmo deverá ressarcir os equipamentos e pagar mais 100.000 (Cem mil) para a vítima como indenização.<br/>
 
10.2 -    Os membros da BRINKS são proibidos de cometer QUALQUER tipo de atitude ilegal.<br/>
 
10.3 -    A empresa deve apoiar o contratante do início ao fim de seu farm, a empresa NÃO PODE ATENDER pedidos de socorro contra assaltos que se iniciarem SEM o contrato, esta função é da polícia.<br/>
 
10.4 -    A empresa é proibida de fazer patrulhas e combater forças terroristas sem estar exercendo escoltas armadas.<br/>
 
10.5 -    A empresa deve priorizar o trabalho contratado, sendo assim todas as forças devem ser usadas para honrar o compromisso em defender o contratante, SABENDO analisar e sair de uma situação na qual prejudicaria o contratante.<br/>
 
10.6 -    A empresa não é uma POLICIA ALTERNATIVA, a empresa não tem funções de caçar bandidos ou não deve ser contratada como mercenários.(O único papel da empresa é ESCOLTAS e rastreamento e recuperação de VEÍCULOS roubados.)<br/>
 
10.7 -    Para contratar um serviço de rastreamento, solicite a um funcionário e ele irá colocar um GPS CarSystem em seu veículo. Desta forma você estará sendo monitorado pela empresa, e caso haja algum problema, ela está autorizada a ir atender você para prestar socorro.<br/>
 
10.8 -    O contratante de um serviço de ESCOLTA receberá uma MX 6.5mm. No fim do contrato, a arma será DEVOLVIDA a corporação. (O custo do equipamento ja está incluso no contrato)<br/>
 
10.9 -    A conclusão do serviço da BRINKS só termina quando for concluído o farm, morte do contratante ou morte dos agentes de escolta.<br/>
 
10.10 -    A BRINKS é proibida de invadir favelas e participar de guerras entre gangues.<br/>
 
10.11 -    A BRINKS é proibida de trabalhar para rebeldes.<br/>
 
10.12 -    Empresas: A BRINKS deverá dar prioridade a ocorrências envolvendo empresários e seus funcionários.<br/>
 
10.13 -    A equipe tem a obrigação, devido ao contrato vitalício com as empresas, de fazer a escolta nos trabalhos e rastreamento de veículos das empresas, criando logística para atender toda a demanda.<br/>
 
10.14 -    A BRINKS é proibida de usar veículo BLINDADO IFRIT, exceto em casos de eventos organizados com a administração.<br/><br/>



                "
        ]
    ];

    
    player createDiaryRecord ["BRINKS",
        [
        "BRINKS e Preços",
                "
A BRINKS tem a função de escoltar o farm das empresas, ela deverá fazer uma escolta armada, com rastreamento GPS (Se solicitado pelo cliente).<br/>
Preços cobrados pela BRINKS:<br/>
    Escolta com até 5 membros:<br/>
        20% do lucro no Trabalho.<br/>
    Escolta com mais de 5 membros:<br/>
        35% do lucro no Trabalho.<br/><br/>
Poderão ser contratados serviços de monitoramento a distância, onde será colocado o rastreador no veículo,<br/>
 e qualquer mudança no trajeto uma equipe será deslocada ao local do cliente. Em caso de óbito, o valor integral será devolvido.<br/>
    Serviço de monitoramento a distância:<br/>
        50.000 (Cinquenta mil)<br/><br/>
Contrato Vitalício é aquele que tem validade por 24 horas, e não é imposto nenhuma taxa extra.<br/>
    Contrato Vitalício:<br/>
        100.000 (Cem mil)<br/><br/>

O pagamento será feito em uma entrada de 50%, e o restante sendo pago ao final do contrato.<br/><br/>



                "
        ]
    ];
    


    
    

    

    player createDiaryRecord ["Banimentos",
        [
            "Banimentos",
                "
Todos os banimentos irão seguir esta ordem:<br/>
- 1º banimento: 3 horas.<br/>
- 2º banimento: 6 horas.<br/>
- 3º banimento: 12 horas.<br/>
- 4º banimento: 1 dias - 10% do dinheiro na conta.<br/>
- 5º banimento: 5 dias - 30% do dinheiro na conta.<br/>
- 6º banimento: 15 dias - 80%  do dinheiro na conta e licenças . (Somente Adm Geral)<br/>
- 7º a 9º banimento: 25 dias  Conta será deletada da database. ( Somente Adm Geral)<br/>
- 10º Ban permanente (Somente Adm Geral)<br/><br/><br/>



1 -    Atos de RDM, Racismo, DUP, Disconnect e HACK pegos em flagrante por algum Staff, serão punidos imediatamente.<br/>
2 -    Hacks e Dupes= Ban permanente.<br/>
3 -    Desrespeitar regras do servidor = Banimento segundo a tabela citada acima + Conversa no TeamSpeak.<br/>
4 -    Disconnect = Banimento segundo a tabela citada acima<br/>
5 -    Desrespeitar jogadores ou Staff do servidor = Conversar no TeamSpeak(Sem aplicar nenhum banimento), caso o jogador não se acalme aplicar o banimento de 1 hora depois seguir a tabela citada acima.<br/>

                "
        ]
    ];


// Controls Section

    player createDiaryRecord ["Controles",
        [
            "Controles",
                "
Y: Abrir o menu.<br/>
U: Trancar e destrancar veículos e casas.<br/>
T: Abrir o porta-malas.<br/>
5,6,7 e 8: Gestos
Left Shift + B: Render-se (Mãos na cabeça).<br/>
Left Windows: Interagir com tudo.<br/>
Left Shift + H: Colocar a arma no coldre. OBRIGATÓRIO EM CIDADES E EVENTOS.<br/>
Left Shift + G: Nocautear.<br/>
Left Ctrl + H: Reverter a arma no coldre.<br/>
Shift + Spacebar: Pular.<br/>
Shift + C: Usar Zipties.<br/>
5, 6, 7 e 8: Movimentos do personagem.<br/>
Left Shift + O: Tirar e colocar Protetores de ouvido.<br/><br/>
                "
        ]
    ];
    
	player createDiaryRecord ["Aviação",
        [
            "Aviação",
                "
Regras para aviões e helicopteros.<br/><br/>

Helicopteros:<br/>
 <br/>
Devem pousar somente em helipontos homologados. Helipontos de HOSPITAIS são PUBLICOS desde que estejam vazio e somente desembarque, é proibido desligar lá em cima.<br/>
 <br/>
Helicopteros civis são proibidos de pousar em ruas, praças e perimetro urbano longe de aereas de trabalho e vendas. A aeronave encontrada será apreendida e o dono deverá pagar uma multa.<br/>
 <br/>
Aviões:<br/>
 <br/>
Aviões devem pousar apenas em aeroportos e respeitar as regras de voo.<br/>
 <br/>
Para pousar, deve esperar outra aeronave livrar a pista e taxiar.<br/>
 <br/>
Aereonaves que forem pegas fora de zonas de aeroportos serão apreendidas<br/><br/>
 <br/>
Aeronaves VTOL (BlackFish e Xyan), poderão ser INTERCEPTADAS no ar pelo jato da Policia Militar.<br/>
Serão dados três avisos com disparos para que o mesmo obedeça a ordem de pouso.<br/>
Aeronaves interceptadas devem pousar no AEROPORTO PRINCIPAL e aguardar a equipe de solo da Policia para a abordagem<br/>
Desrespeitados os três avisos, a aeronave da Policia tem permissão para abater.<br/>
Somente a maior patente do GRPAE poderá decolar o jato para interceptação.<br/><br/>
                "
        ]
    ];
  
    
    player createDiaryRecord ["Policia Federal",
        [
            "Policia Federal",
                "
        Regras e deveres para Policia Federal.<br/><br/>

A Policia Federal é responsável por investigar e gerar ações de busca e apreensão.<br/>
 <br/>
A Policia Federal é proibida de fazer patrulhas, sendo sua função investigar, colher informações com outros civis e ir em busca de criminosos conhecidos com fama alta e lideres de gangues.<br/>
 <br/>
A Policia Federal deverá oferecer recompensa para cada denúncia VERDADEIRA, que for confirmada conforme o desenrolar da operação. O valor da recompensa é fixo no valor de RS80.000<br/>
 <br/>
A Polícia Federal deverá, ao efetuar uma missão de busca e apreensão, tomar posse do veículo terrestre/aéreo/marítimo do acusado, caso o mesmo seja pego por crimes de tráfico de drogas, constando na lista de procurados ou pego em flagrante.<br/>
 <br/>
Após a operação, seguida de tomada de posse, o acusado deverá pagar um valor determinado abaixo para cada tipo de veículo, para que o mesmo possa ser recuperado.<br/>
 <br/>
O não pagamento dessa taxa fará com que o equipamento apreendido seja leiloado e caso não haja interesse, o mesmo será levado a desmanche.(Consulte regras e procedimentos para leilões).<br/>
 <br/>
O valor para todos os veículos é de 10% do valor de COMPRA e não de ALUGUEL ou o valor máximo de RS150.000 (Veiculos com valor acima RS1.5kk deverá ser cobrado apenas RS150k).<br/>
 <br/>
ESTAS REGRAS SÓ PODEM SER EFETUADAS POR POLICIAIS FEDERAIS, sendo PROIBIDA a aplicação de apreensão e tomada de posse por Policiais Militares.<br/>
 <br/>
O Policial Militar que descumprir está regra estará sujeito a punições e reembolso caso haja algum prejuizo a terceiros<br/>
 <br/>
Caso o intimado tenha duvida, a identificação se consta pelo escudo da Policia Federal e a farda Preta escrito Policia Federal.<br/><br/>
                "
        ]
    ];  
    
    player createDiaryRecord ["Leilões",
        [
                    "Leilões",
                        "
O LEILÃO É CONSIDERADO UM EVENTO!<br/><br/>
 <br/>
O valor para leilões se inicia em 50% do valor do veículo. Quem participar e dar o lance final, DEVERÁ efetuar a compra. Caso o mesmo de o lance e não se comunique, deslogue, terá o dinheiro retirado da conta, caso não tenha o dinheiro levará punições por anti-RP.<br/>
 <br/>
Caso o mesmo que tenha dado o lance, não tenha dinheiro, deverá ser encaminhado a prisão por crime.<br/>
 <br/>
Após o lance final e a confirmação de compra, o comprador será encaminhado até a loja e receberá o diferencial para comprar e adquirir a chave permanente do veículo, sendo acompanhado por um oficial do leilão.<br/>
 <br/>
O veiculo original será destruido e substituido por um novo.<br/>
 <br/>
TODOS OS LEILÕES SÃO PRESENCIAIS! Não se pode comparecer a distância.<br/>
 <br/>
Durante um leilão, é PROIBIDO qualquer tipo de crime ou algo que atrapalhe o evento, tanto de quem participa quanto quem está de fora. Caso aconteça será punido por regras ANTI-RP.<br/>
 <br/>
Os LOCAIS oficiais de LEILÃO são: Delegacia de Athira para o Estado de SP e Delegacia de Pyrgos para o Estado do RJ.<br/><br/>
                "
        ]
    ];  
    
    player createDiaryRecord ["Preços",
        [
            "Trabalhos",
                "
Farms Legalizados<br/>
 <br/>
Computador Gamer         30.000  16kg<br/>
 
Placa Mãe Asus           2000    3kg<br/>
 
Memória Kingston         2000    3kg<br/>
 
Placa NVidia             2000    3kg<br/>
 
Processador Intel        2000    3kg<br/>
  
Diamante:                2500    3kg<br/>
 
Sal:                     1500    3kg<br/>
 
Ferro:                   1200    3kg<br/>
 
Cobre:                   1300    3kg<br/>
 
Whiskey:                 1500    3kg<br/>
 
Whiskey Envelhecido:     4000    3kg<br/>
 
       <br/> 
Farms Ilegais<br/><br/>
 
Ouro da Reserva Federal:   50.000    12kg<br/>
 
Ouro lavado:               60.000    12kg<br/>
 
Tartarugas:                6.000     3kg<br/>
 
Metanfetamina:              3500      3kg<br/>
 
Cocaina:                    5000      3kg<br/>
 
Heroina                     4000      3kg<br/>
   
Maconha Ilegal:             3000      3kg<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["Preços",
        [
            "Licenças",
                "
Preço para compra de Licenças:<br/><br/>
Farms Legalizados PROMOÇÃO!<br/>
Whiskey:               30.000<br/>
Diamante:              30.000<br/>
Sal:                   30.000<br/>
Ferro:                 15.000<br/>
Cobre:                 18.000<br/>
Placa de Video:        20.000<br/>
Memoria:        	   20.000<br/>
Placa Mãe:             20.000<br/>
Processador:           20.000<br/>
 <br/>
Licenca Casa                     400.000<br/>
 <br/>
Licenca Rebelde(Perde ao ser preso)500.000<br/>
 <br/>              
Farms Ilegais<br/>
 
Metanfetamina:   80.000<br/>
Cocaina:         90.000<br/>
Heroina:         70.000<br/>
Maconha Ilegal:  50.000<br/><br/>
                "
        ]
    ];
