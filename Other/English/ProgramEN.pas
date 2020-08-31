program English;
uses crt;
const
  word_count = 40;

type
  array_all_words = array[1..word_count] of string;
  used = set of byte;

var
  numbers_used: used;
  word_all_array: array_all_words;
  number_of_questions_total, all_mistake, number_questions: byte;
  file_name: string;


procedure search_file(var name_string: string);
begin
  Write('Take out the TXT file name: ');
  Readln(name_string);
  name_string := name_string + '.txt';
  while not fileexists(name_string) do
  begin
    Writeln('File Not Found');
    Write('Take out the TXT file name: ');
    Readln(name_string);
    name_string := name_string + '.txt';
  end;
end;

procedure file_in_mas(var name_string: string; var count: byte; var word_array: array_all_words);
var
  text_file: text;
  string_line: string;
begin
  Assign(text_file, name_string);
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

function randomize_word(var count: byte; var used_word: used):byte; 
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

procedure test_go(var all_questions: byte; count: byte; word_array: array_all_words; var mistake: byte);
var
  num: byte;
  input_validation, word_z: string;
begin
  mistake := 0;
  all_questions := 0;
  Writeln('To exit write - END');
  for var i := 1 to count do
  begin
    num := randomize_word(number_of_questions_total, numbers_used);
    Write(Copy(word_array[num], pos('=', word_array[num]) + 2, Length(word_array[num])), ' = ');
    Readln(input_validation);
    if (input_validation = 'end') or (input_validation = 'END') then break;
    word_z := Copy(word_array[num], 1, pos('=', word_array[num]) - 2);
    if  input_validation <> word_z then begin
      Writeln('You entered incorrectly!');
      Writeln('Privileged answer: ', word_z);
      Inc(mistake);
    end;
    Writeln('-------------------------');
    Inc(all_questions);
  end;
end;

begin
  Randomize;
  search_file(file_name);
  file_in_mas(file_name, number_of_questions_total, word_all_array);
  test_go(number_questions, number_of_questions_total, word_all_array, all_mistake);
  Writeln('Correct answers: ', number_questions - all_mistake);
  Writeln('Not the correct answers: ', all_mistake);
  Readln;
end.