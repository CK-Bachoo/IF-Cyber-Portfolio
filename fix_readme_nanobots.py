import os, re, urllib.parse

print("[🔍 SCANNING] X-Raying physical titanium vaults week-01 through week-12...")
vault_map = {}

# 1. Map the physical reality of the vaults
for i in range(1, 13):
    folder = f"week-{i:02d}"
    if os.path.exists(folder):
        for file in os.listdir(folder):
            # Pouring digital asphalt over physical spaces
            encoded_name = urllib.parse.quote(file)
            vault_map[file] = f"{folder}/{encoded_name}"
            vault_map[encoded_name] = f"{folder}/{encoded_name}"

with open('README.md', 'r') as f:
    data = f.read()

print("[🛠️ REPAIRING] Nanobots recalibrating GPS coordinates in master blueprint...")

def calibrate_gps(match):
    prefix = match.group(1) 
    url = match.group(2)    

    # Strip away any corrupted sed paths
    filename = url.split('/')[-1] 

    # If the file exists in our physical vault map, inject the perfect GPS coordinate
    if filename in vault_map:
        return f"[{prefix}]({vault_map[filename]})"
    
    # If it's an external link, leave it untouched
    return f"[{prefix}]({url})"

# Detonate the regex swarm to find all Markdown links
fixed_data = re.sub(r'\[(.*?)\]\(([^)]+)\)', calibrate_gps, data)

with open('README.md', 'w') as f:
    f.write(fixed_data)

print("[🛡️ OPTICS SECURED] All artifacts and PNG cameras are mathematically locked.")
