XPTemplate priority=personal

XPT proc hint=Procedure\ definition.
procedure `1^ProcedureName^\ `args?^ is
begin
    `cursor^
end `1^;


XPT procd hint=Procedure\ declaration.
procedure `ProcName^ (`args?^);`cursor^


XPT fun hint=Function\ definition.
function `1^FunctionName^` `args?^ return `rettype^ is
begin
    `cursor^
end `1^;


XPT fund hint=Function\ declaration.
function `FunName^` `args?^ return `rettype^;


XPT pac hint=Package.
package `1^PackageName^ is
    `cursor^
end `1^;

XPT pacb hint=Package\ body.
package body `1^PackageName^ is
    `cursor^
end `1^;
