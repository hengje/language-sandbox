-module(anagram).
-export[anagram/0].
-export[anagram/1].

anagram() -> anagram("english.words").

% Read words from FileName and returns a list of lists with all anagrams in the file.
anagram(FileName) -> 
    dict:fold(fun(_, Value, Acc) -> [Value|Acc] end, [], createDictFromWords(readfile(FileName))).

readfile(Filename) -> 
    {_, File} = file:open(Filename, [read]),
    readfile(File, []).

readfile(File, Lines) ->
    case io:get_line(File, "") of
        eof -> file:close(File), Lines;
	Line -> readfile(File, [lists:subtract(Line,"\n")|Lines])
    end.

createAnagramKey(Word) -> lists:sort(Word).

createDictFromWords(Words) -> dict:filter(fun(_, Value) -> length(Value) > 1 end, 
                                          lists:foldl(fun(Word, Dict) -> dict:append(createAnagramKey(Word), Word, Dict) end, 
					              dict:new(), 
					              Words)).

