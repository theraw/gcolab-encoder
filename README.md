# gcolab-encoder

1. Go here click "Open in Colab" https://github.com/theraw/gcolab-encoder/blob/main/movie-downloader-gpu-encoder.ipynb
2. At step 4 replace the text `REQUIRED NGROK KEY HERE` with your ngrok key.
3. Click **Runtime** > **Run All**
4. Ready to go, navigate to your ngrok dashboard > tunnels, open the created urls,
- one of urls is `Transmission dashboard` where you can download torrenting.. `/movies/downloading`
- other url is `visual studio code` so you can have a dev ide just in case needed.
- other url is `nginx` running with public folder `/movies/public_html`


FFmpeg will also compile with GPU support, however this project **failed** as of for now till google decides to update nvidia drivers because ffmpeg requires nvidia driver **v455** while google uses old version **418**, and you cannot change nvidia driver version since you're inside a Docker Container and its not a real server.
with other wors **`FFmpeg GPU acceleration not working due to outdated nvidia driver version`**
