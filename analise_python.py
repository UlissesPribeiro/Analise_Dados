import glob
total_lines = 0
total_words = 0
for script in glob.glob("script_python_*.py"):
    with open(script, "r") as f:
        lines = f.readlines()
        total_lines += len(lines)
        total_words += sum(len(line.split()) for line in lines)
print(f"Total de linhas: {total_lines}")
print(f"Total de palavras: {total_words}")
