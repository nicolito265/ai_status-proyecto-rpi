#!/bin/bash

while true; do
  bash status.sh > tempStat.txt
  llama cli -m ~/modelos_ia/qwen2.5-0.5b-instruct-q4_k_m.gguf \
    -c 512 \
    --predict 256 \
    --chat-template chatml \
    --temp 0.3 -st \
    -p "Debes dar un diagnóstico del estado del sistema, una Raspberry Pi, según estos datos:\n\n$(cat tempStat.txt)\n\nDiagnóstico de Raspberry Pi" \
    --log-disable
  read -p "Presiona Enter para continuar..."
  done

