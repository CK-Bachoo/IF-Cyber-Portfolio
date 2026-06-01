#!/bin/bash

# If the user types 'sos template', run the AI Agent
if [ "$1" == "template" ]; then
    echo "🚨 SOS AI TEMPLATE AGENT INITIATED 🚨"
    echo "Phase 1 Complete: You have already pushed your assignment file."
    echo "Phase 2 Starting: Waking up Ollama to automate your README."
    echo "--------------------------------------------------------------"

    read -p "1. EXACT filename you just pushed (e.g., nmap.sh): " FILE_NAME

    if [ ! -f "$FILE_NAME" ]; then
        echo "❌ Error: Cannot find $FILE_NAME in the current directory."
        exit 1
    fi

    read -p "2. Enter Session ID (e.g., T1-M2-S10): " SESSION_ID
    read -p "3. Enter Assignment Name (e.g., Firewall Audit): " ASSIGNMENT_NAME

    echo "4. Select Template:"
    echo "   1) Standard Lab Entry"
    echo "   2) Side-by-Side: Android ARM64 Cyber Workbench vs Desktop/Laptop"
    read -p "Choice (1 or 2): " TEMPLATE_CHOICE

    echo "🧠 Waking up Ollama to analyze $FILE_NAME and map to NIST/CIS..."
    PROMPT="Analyze this cybersecurity artifact. Write a concise, professional 2-sentence explanation. Sentence 1: Explain the technical function. Sentence 2: Explicitly state how it aligns with the NIST Cybersecurity Framework or CIS Controls. Output ONLY the two sentences with no conversational filler. Artifact Data: $(cat "$FILE_NAME")"

    EXPLANATION=$(ollama run llama3 "$PROMPT")

    echo "📝 Appending AI Analysis to README.md..."

    if [ "$TEMPLATE_CHOICE" == "1" ]; then
cat << TEMPLATE >> README.md

### 🛠️ $SESSION_ID: $ASSIGNMENT_NAME
* **Evidence:** [$FILE_NAME](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/$FILE_NAME)
* **Explanation:** $EXPLANATION
TEMPLATE

    elif [ "$TEMPLATE_CHOICE" == "2" ]; then
cat << TEMPLATE >> README.md

## 🚀 $SESSION_ID: $ASSIGNMENT_NAME

| Data Point | Desktop/Laptop User (Standard Cohort) | Android ARM64 Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Methodology** | Standard x86/x64 execution | Constrained ARM64 Mobile Sandbox execution |
| **Evidence** | N/A | [$FILE_NAME](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/$FILE_NAME) |

**🛡️ Technical Analysis & Governance:** $EXPLANATION
TEMPLATE
    fi

    echo ""
    echo "✅ README.md successfully updated by Ollama!"
    echo "=============================================================="
    echo "🚨 PUSH 2 READY: Copy and paste this command to finish:"
    echo "git add README.md && git commit -m \"docs: AI README update for $SESSION_ID\" && git push origin main"
    echo "=============================================================="

# If the user just types 'sos' with no arguments, print the instructions
else
    echo "========================================================="
    echo "🛡️ THE BUNKER SOP: 2-PUSH CONCEPT"
    echo "========================================================="
    echo "PUSH 1 (The Muscle): YOU do the work."
    echo "1. Finish your assignment in Termux."
    echo "2. git add [filename] && git commit -m 'done' && git push"
    echo ""
    echo "PUSH 2 (The Brain): AI does the paperwork."
    echo "1. Type: sos template"
    echo "2. Ollama will read your file, write the NIST/CIS summary,"
    echo "   and format your README (Standard or Side-by-Side)."
    echo "3. Copy and paste the final git push command it gives you."
    echo "========================================================="
fi
