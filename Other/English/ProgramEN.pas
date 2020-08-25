Program English;
uses crt;
const word_count = 40;
type mas = array[1..word_count] of string;
var word_array: mas;
    text_file: text;
    string_line, file_name: string;
    i: integer;

Procedure search_file();
begin
Write('Take out the TXT file name: ');
Readln(file_name);
file_name := file_name + '.txt';
While not fileexists(file_name) do begin
  Writeln('File Not Found');
  Write('Take out the TXT file name: ');
Readln(file_name);
file_name := file_name + '.txt';
end;
end;


begin
search_file;

end.