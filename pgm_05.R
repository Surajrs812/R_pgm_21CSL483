sentence <- tolower(readline('Enter a valid Sentence: '))
sentence_chars <- unlist(strsplit(sentence, ''))  # Split sentence into characters
vowel_count <- 0
consonant_count <- 0

for (char in sentence_chars) {
  if (char %in% c('a', 'e', 'i', 'o', 'u')) {
    vowel_count <- vowel_count + 1
  } else if (char %in% c(' ', '.', '?', '!')) {
    # Ignore spaces and punctuation marks
  } else {
    consonant_count <- consonant_count + 1
  }
}

cat('\nNumber of Vowels =', vowel_count)
cat('\nNumber of Consonants =', consonant_count, '\n')
