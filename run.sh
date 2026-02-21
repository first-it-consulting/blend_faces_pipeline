docker run --rm -d -p 9099:9099 \
  -e PIPELINES_STATIC_DIR=/app/static \
  -e PIPELINE_URL=http://10.10.20.140:9099 \
  -e PIPELINES_URLS="https://raw.githubusercontent.com/first-it-consulting/blend_faces_pipeline/main/pipelines/blend_faces_pipeline.py;https://raw.githubusercontent.com/first-it-consulting/blend_images_pipeline/main/pipelines/blend_images_pipeline.py;https://raw.githubusercontent.com/open-webui/pipelines/main/examples/filters/mem0_memory_filter_pipeline.py" \
  -v $(pwd)/pipelines:/app/pipelines \
  -v $(pwd)/static:/app/static \
  --name pipelines-dev \
  ghcr.io/open-webui/pipelines:main
