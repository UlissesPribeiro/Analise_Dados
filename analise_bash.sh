#!/bin/bash
total_lines=0
total_words=0
total_chars=0
for script in script_bash_*.sh; do
  lines=$(wc -l < "$script")
  words=$(wc -w < "$script")
  chars=$(wc -c < "$script")
  total_lines=$((total_lines + lines))
  total_words=$((total_words + words))
  total_chars=$((total_chars + chars))
done
echo "Total de linhas: $total_lines"
echo "Total de palavras: $total_words"
echo "Total de caracteres: $total_chars"
