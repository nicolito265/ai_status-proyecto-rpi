# AI Status - Proyecto RPi5
#### Proyecto de prueba de llm pequeño como diagnóstico de estado para raspberry pi 5

## Requisitos
- Raspberry Pi 5 (≥2GB)
- Sistema Operativo Debian 13 (Preferible sin GUI)
- Bash
- Fastfetch
- llama.cpp
```bash
curl -LsSf https://llama.app/install.sh | sh
```
## Instalación

```bash
git clone https://github.com/nicolito265/aistatus-proyetco-rpi
cd aistatus-proyecto-rpi
chmod +x stathelper.sh
```
## Modo de uso

```bash
./stathelper.sh
```
El script recolectará información básica del sistema y el LLM intentará dar un diagnóstico.
