FROM registry.runpod.net/mickeysar-infinitetalk-runpod-hub-main-dockerfile:d5dc50762 AS runtime

# Reuse the last successful InfiniteTalk image and replace only the handler.
# This avoids rebuilding ComfyUI, custom nodes, and the large model layers.
COPY handler.py /handler.py
