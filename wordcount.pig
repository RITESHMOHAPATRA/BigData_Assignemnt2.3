text_input = LOAD 'sample.csv' as (line:chararray);
dump text_input;
words = foreach text_input generate FLATTEN(TOKENIZE(line,',')) as word;
dump words;
grouped = GROUP words by word;
dump grouped;
wordcount = foreach grouped generate group;
dump wordcount;
  
    
