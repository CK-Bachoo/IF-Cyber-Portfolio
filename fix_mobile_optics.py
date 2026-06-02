import os, re

print("[🔍 SCANNING] Deploying nanobots to forge solid steel bridges (underscores)...")
for i in range(1, 13):
    folder = f"week-{i:02d}"
    if os.path.exists(folder):
        for file in os.listdir(folder):
            # Target files with spaces or parentheses in their physical names
            if " " in file or "(" in file or ")" in file:
                # Strip parentheses entirely and replace spaces with solid steel underscores
                new_name = file.replace(" ", "_").replace("(", "").replace(")", "")
                
                # Execute the physical rename operation in the vault
                os.rename(f"{folder}/{file}", f"{folder}/{new_name}")
                print(f"[🛠️ RENAMED] '{file}' -> '{new_name}'")

print("[🛠️ REPAIRING] Recalibrating master blueprint GPS coordinates...")
with open('README.md', 'r') as f:
    data = f.read()

def harden_links(match):
    prefix = match.group(1)
    url = match.group(2)
    
    # Only target image links residing in our weekly vaults
    if "week-" in url and (".png" in url.lower() or ".jpeg" in url.lower() or ".jpg" in url.lower()):
        # Strip away the %20 digital asphalt and replace with underscores
        new_url = url.replace("%20", "_").replace("%28", "").replace("%29", "").replace(" ", "_").replace("(", "").replace(")", "")
        return f"[{prefix}]({new_url})"
    
    return match.group(0)

# Detonate the regex swarm to update the Markdown links
fixed_data = re.sub(r'\[(.*?)\]\((.*?)\)', harden_links, data)

with open('README.md', 'w') as f:
    f.write(fixed_data)

print("[🛡️ UNIVERSAL OPTICS SECURED] Mobile App limitations mathematically bypassed.")
