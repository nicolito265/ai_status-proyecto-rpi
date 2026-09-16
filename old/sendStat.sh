#!/bin/bash

while true; do
  bash status.sh > tempStat.txt
  llama cli -m ~/modelos_ia/qwen2.5-0.5b-instruct-q4_k_m.gguf \
    -c 512 \
    --predict 256 \
    --chat-template chatml \
    --temp 0.3 -st \
    -p "Describe el contenido del siguiente texto en una sola línea:\n\n$(cat tempStat.txt)\n\nDescripción en una sola línea" \
    -r "\n" \
    --log-disable
  sleep 10
  done

