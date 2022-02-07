unit utwofer;

interface

uses
System.SysUtils;

function twoFer(const n: string = "you"): string;

implementation

function twoFer(const n: string="you): string;
begin
result := 'One for ' + n + ', one for me.';

end;
