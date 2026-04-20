import os
import datetime

DC_IP = "10.0.0.4"
LOG_PATH = "/var/log/dc_audit.log"
TIMESTAMP = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

response = os.system(f"ping -c 4 {DC_IP} > /dev/null 2>&1")
status = "DC is UP" if response == 0 else "DC is DOWN"

try:
    with open(LOG_PATH, "a") as log:
        log.write(f"[{TIMESTAMP}] {status}\n")
except PermissionError:
    with open("dc_audit.log", "a") as log:
        log.write(f"[{TIMESTAMP}] {status} (Local fallback)\n")
