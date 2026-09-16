#!/bin/bash

while true; do
  bash status.sh > tempStat.txt
  llama cli -m ~/modelos_ia/Llama-3.2-1B-Instruct-Q4_K_M.gguf\
    -c 512 \
    --predict 256 \
    --chat-template chatml \
    --temp 0.1 -st \
    -p "<|start_header_id|>system<|end_header_id|>\n\nEres un administrador de sistemas Linux. Tu trabajo es dar un diagnóstico breve de más o menos un párrafo en español. Reglas: bajo uso de RAM y Swap es algo positivo (el sistema está ligero); temperaturas inferiores a 70°C son seguras, compara la temperatura actual con este límite antes de dar tu diagnóstico.<|eot_id|><|start_header_id|>user<|end_header_id|>\n\nEvalúa estas métricas:\n$(cat tempStat.txt)<|eot_id|><|start_header_id|>assistant<|end_header_id|>\n\nDiagnóstico:" \
    --log-disable
  read -p "Presiona Enter para continuar..."
  done

