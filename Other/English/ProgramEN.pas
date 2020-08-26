program English;
uses crt;
const
  word_count = 40;

type
  mas = array[1..word_count] of string;
  used = set of byte;

var
  used_word: used;
  word_array: mas;
  i, count, mistake, all: integer;
  string_line, file_name: string;


procedure search_file();
begin
  Write('Take out the TXT file name: ');
  Readln(file_name);
  file_name := file_name + '.txt';
  while not fileexists(file_name) do
  begin
    Writeln('File Not Found');
    Write('Take out the TXT file name: ');
    Readln(file_name);
    file_name := file_name + '.txt';
  end;
end;

procedure file_in_mas; {Wrapping lines from file to array}
var
  text_file: text;
begin
  Assign(text_file, file_name);
  Reset(text_file);
  count := 1;
  while not EOF(text_file) do
  begin
    Readln(text_file, string_line);
    word_array[count] := string_line;
    Inc(count);
  end;
  count := count - 1;
  Close(text_file);
end;

function randomize_word: byte; 
var
  num_rnd: byte;
begin
  num_rnd := Random(count) + 1;
  while ([num_rnd] * used_word) = [num_rnd] do
  begin
    num_rnd := Random(count) + 1; 
  end;
  used_word := used_word + [num_rnd];
  Result := num_rnd;
end;

procedure test_go;
var
  num: byte;
  check, word_z: string;
begin
  mistake := 0;
  all := 0;
  Writeln('To exit write - END');
  for var i := 1 to count do
  begin
    num := randomize_word;
    Write(Copy(word_array[num], pos('=', word_array[num]) + 2, Length(word_array[num])), ' = ');
    Readln(check);
    if (check = 'end') or (check = 'END') then break;
    word_z := Copy(word_array[num], 1, pos('=', word_array[num]) - 2);
    if check <> word_z then begin
      Writeln('You entered incorrectly!');
      Writeln('Privileged answer: ', word_z);
      Inc(mistake);
    end;
    Writeln('-------------------------');
    Inc(all);
  end;
end;

begin
  Randomize;
  search_file;
  file_in_mas;
  test_go;
  Writeln('Correct answers: ', all - mistake);
  Writeln('Not the correct answers: ', mistake);
  Readln;
end.