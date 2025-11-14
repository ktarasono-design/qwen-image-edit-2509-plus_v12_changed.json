# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.0-base

# install custom nodes into comfyui
RUN comfy node install --exit-on-fail comfyui_controlnet_aux@1.1.3
RUN comfy node install --exit-on-fail rgthree-comfy@1.0.2511111955
RUN comfy node install --exit-on-fail comfyui-kjnodes@1.1.9
RUN comfy node install --exit-on-fail comfyui-rmbg@2.9.3
RUN comfy node install --exit-on-fail ComfyUI-GGUF
RUN comfy node install --exit-on-fail ComfyUI-VAE-Utils
RUN comfy node update all
RUN comfy tracking disable

# download models into comfyui

# COPY input/ /comfyui/input/
