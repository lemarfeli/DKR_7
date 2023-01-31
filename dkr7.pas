uses graphabc;
procedure levi(x1, y1, s: real; n, i: integer);
begin
var a: real;
if i<=round(power(2,n))-1 then
begin
a:=0;
var q:=i;
var f:=0;
var k:=0;
repeat
f:=q mod 2;
q:=q div 2;
if f=0 then a:= a+pi/4
else a:= a-pi/4;
k:=k+1;
until k>=n;
x1:=x1+s*cos(a);
y1:=y1+s*sin(a);
lineto(round(x1), round(y1));
i:=i+1;
levi(x1, y1, s, n, i);
end;  
end;
begin
  var x:=readreal('введите координаты x');
  var y:=readreal('введите координаты y');
  var s:=readreal('введите масштаб');
  var n:=readinteger('введите предел фрактала');
  moveto(round(x), round(y));
  var i:=0;
  levi(x, y, s, n, i);
end.