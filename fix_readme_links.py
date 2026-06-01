import re
with open('README.md', 'r') as file:
    data = file.read()
image_matches = re.findall(r'\!\[.*?\]\((.*?)\)', data)
for match in image_matches:
    if ' ' in match:
        fixed_link = match.replace(' ', '%20')
        data = data.replace(f'({match})', f'({fixed_link})')
with open('README.md', 'w') as file:
    file.write(data)
print('\n[🛡️ OPTICS SECURED] Digital Asphalt applied. Camera spaces mathematically paved.\n')
