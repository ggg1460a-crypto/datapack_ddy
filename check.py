import os
import re

for root, dirs, files in os.walk(r'd:\桌面\末日餘燼\data\doomsday\functions'):
    for file in files:
        if file.endswith('.mcfunction'):
            path = os.path.join(root, file)
            with open(path, 'r', encoding='utf-8') as f:
                lines = f.readlines()
            for i, line in enumerate(lines):
                line = line.strip()
                if not line or line.startswith('#'): continue
                
                # Check for unclosed quotes
                if line.count('\"') % 2 != 0:
                    print(f'{file}:{i+1} -> Unclosed quote: {line}')
                    
                # Check for invalid execute score matching
                if 'execute if score' in line:
                    if re.search(r'\bexecute if score [^\s]+ [^\s]+ [><=]+ \d+', line):
                        print(f'{file}:{i+1} -> Invalid score compare (number): {line}')
                    if re.search(r'\bexecute if score [^\s]+ [^\s]+ > [^\s]+$', line): # Missing objective
                        print(f'{file}:{i+1} -> Invalid score compare (missing obj): {line}')
                        
                # Check target selectors syntax like @a[team=]
                if re.search(r'@[aepsr]\[[^\]]*$', line):
                    print(f'{file}:{i+1} -> Unclosed selector: {line}')
