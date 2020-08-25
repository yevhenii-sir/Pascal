Program English;
uses crt;
const word_count = 40;
type mas = array[1..word_count] of string;
var word_array: mas;
    i, count:integer;
    string_line, file_name: string;
    

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

Procedure file_in_mas;
var text_file: text;
begin
  Assign(text_file, file_name);
  Reset(text_file);
  count := 1;
  While not EOF(text_file) do begin
    Readln(text_file, string_line);
    word_array[count] := string_line;
    Inc(count);
  end;
  count := count - 1;
  Close(text_file);
end;

begin
search_file;
file_in_mas;

end.