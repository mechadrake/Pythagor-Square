{
by mechadrake, mechadrake@gmail.com mail relevant requests, bugs
v1.01: 2021.10, pridetas virsutinis komentaras del autorystes 2003m programai :D
}
program pitagoras;
  uses crt;
  var rez, skt, sk1, sk2, sk3, sk4 : integer;
      skt2, data: longint;
      x:char;

  function keli (skt3:longint;lang:byte):byte;begin
    rez:=0;
  while skt3>0 do begin {kol yra skaitmenu atliekam cikla}
    skt:=skt3 mod 10;   {randam paskutini skaiciu}
    skt3:=skt3 div 10;  {nukerpam nuo pradinio skaiciaus paskutini skaitmeni}
    if skt=lang then rez:=rez+1; {jei toks skitmuo yra tai padidinam reiksme 1}
    end;
    keli := rez;
    end;


  function rasau(ka,kiek:byte):byte;
  begin
     if kiek>0 then     begin
                        while kiek>0 do begin
                                         write(ka);
                                         kiek:=kiek-1;
                                         end;
                        end
               else write('--');
  end;


begin
  window(1,1,80,25);
  textbackground(2);
  textcolor(1);
  repeat begin
  rez:=0;
  skt:=0;
  sk1:=0;
  sk2:=0;
  sk3:=0;
  sk4:=0;
  clrscr;
  gotoxy(1,1);write('Programa surinkta "Turbo Pascal" 2003.01.09');
  gotoxy(1,3);write('Parodo zmogaus psichomatrica pagal gimimo diena');
  gotoxy(1,4);write('Lenteles reiksme ziureti numerologijos knygoje');
  gotoxy(10,6);write('Iveskite gimimo data');
  gotoxy(10,7);write('diena, menesis, metai(pavyzdziui 2371980)');
  gotoxy(35,8); read(data);
  skt2:=data;
  while skt2>0 do begin {kol yra skaitmenu atliekam cikla}
    skt:=skt2 mod 10;   {randam paskutini skaiciu}
    skt2:=skt2 div 10;  {nukerpam nuo pradinio skaiciaus paskutini skaitmeni}
    sk1:=sk1+skt;       {pridedam prie sumos paskutini skaitmeni}
    end;                {pirmasis skiacius surastas}
  skt2:=sk1;
  while skt2>0 do begin {kol yra skaitmenu atliekam cikla}
    skt:=skt2 mod 10;   {randam paskutini skaiciu}
    skt2:=skt2 div 10;  {nukerpam nuo pradinio skaiciaus paskutini skaitmeni}
    sk2:=sk2+skt;       {pridedam prie sumos paskutini skaitmeni}
    end;                {antrasis skiacius surastas}
  skt2:=data;
  while skt2 >= 10 do skt2:=skt2 div 10;     {kol yra bent 2 skaitmenys atliekam cikla}
  sk3:=sk1- (skt2+skt2); {randamas 3 skaicius}
  skt2:=sk3;
  while skt2>0 do begin {kol yra skaitmenu atliekam cikla}
    skt:=skt2 mod 10;   {randam paskutini skaiciu}
    skt2:=skt2 div 10;  {nukerpam nuo pradinio skaiciaus paskutini skaitmeni}
    sk4:=sk4+skt;       {pridedam prie sumos paskutini skaitmeni}
    end;                {ketvirtasis skiacius surastas}
   clrscr;
   gotoxy(40,6);write(data);
   gotoxy(40,7);write(sk1);
   gotoxy(43,7);write(sk2);
   gotoxy(46,7);write(sk3);
   gotoxy(49,7);writeln(sk4);
   gotoxy(34,9);rasau(1,keli(data,1)+keli(sk1,1)+keli(sk2,1)+keli(sk3,1)+keli(sk4,1));
   gotoxy(34,12);rasau(2,keli(data,2)+keli(sk1,2)+keli(sk2,2)+keli(sk3,2)+keli(sk4,2));
   gotoxy(34,15);rasau(3,keli(data,3)+keli(sk1,3)+keli(sk2,3)+keli(sk3,3)+keli(sk4,3));
   gotoxy(42,9);rasau(4,keli(data,4)+keli(sk1,4)+keli(sk2,4)+keli(sk3,4)+keli(sk4,4));
   gotoxy(42,12);rasau(5,keli(data,5)+keli(sk1,5)+keli(sk2,5)+keli(sk3,5)+keli(sk4,5));
   gotoxy(42,15);rasau(6,keli(data,6)+keli(sk1,6)+keli(sk2,6)+keli(sk3,6)+keli(sk4,6));
   gotoxy(50,9);rasau(7,keli(data,7)+keli(sk1,7)+keli(sk2,7)+keli(sk3,7)+keli(sk4,7));
   gotoxy(50,12);rasau(8,keli(data,8)+keli(sk1,8)+keli(sk2,8)+keli(sk3,8)+keli(sk4,8));
   gotoxy(50,15);rasau(9,keli(data,9)+keli(sk1,9)+keli(sk2,9)+keli(sk3,9)+keli(sk4,9));
   gotoxy(1,1);write('Programa surinkta "Turbo Pascal" 2003.01.09');
   gotoxy(1,3);write('Parodo zmogaus psichomatrica pagal gimimo diena');
   gotoxy(1,4);write('Lenteles reiksme ziureti numerologijos knygoje');
   gotoxy(48,25);write('Spauskite x programos baigimui');
   x:=readkey;
   end;
  until x='x';
end.
