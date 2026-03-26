import subprocess
import json

# Instruction 1: Interrogate the system
res = subprocess.run(["ps", "aux"], capture_output=True, text=True)

# Instruction 2: Search for the specific threat
if "unauthorized_cryptominer" in res.stdout:
    # Instruction 3: Create the Alert Data
    alert_data = {
        "event": "Unauthorized Process",
        "severity": "High",
        "process": "unauthorized_cryptominer"
    }
    # Instruction 4: Export to structured JSON
    with open("security_alert.json", "w") as file:
        json.dump(alert_data, file, indent=4)
    print("[*] Alert generated: security_alert.json")
else:
    print("[-] Clean: No unauthorized processes detected.")
