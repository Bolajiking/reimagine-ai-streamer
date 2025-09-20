# REIMAGINE - AI Webcam Streamer

A real-time AI video transformation application that uses StreamDiffusion to transform your webcam feed with customizable AI effects and broadcast to multiple platforms.

## ✨ Features

- **Real-time AI Transformation**: Transform your webcam feed using StreamDiffusion AI
- **WebRTC Streaming**: Low-latency streaming to AI processing pipeline
- **RTMP Broadcasting**: Stream AI output to Twitch, YouTube, Facebook Live, and more
- **Interactive Controls**: Real-time parameter adjustment with helpful tooltips
- **Multiple ControlNets**: Pose estimation, edge detection, depth analysis, and color preservation
- **Professional UI**: Sleek black and gold design with smooth animations

## 🚀 Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/reimagine.git
   cd reimagine
   ```

2. **Start the local server**
   ```bash
   python3 -m http.server 8000
   ```

3. **Open your browser**
   Navigate to `http://localhost:8000`

4. **Get your API key**
   - Visit [Daydream API Key Generator](https://app.daydream.live/beta/api-key)
   - Create an API key using the passcode from Discord

5. **Update the API key**
   - Open `index.html`
   - Replace `YOUR_API_KEY_HERE` with your actual API key

## 🎛️ How to Use

### Basic Workflow
1. **Start Webcam** - Allow camera access
2. **Create Stream** - Initialize AI processing pipeline
3. **Start Streaming** - Begin WebRTC transmission to AI
4. **Adjust Parameters** - Fine-tune AI settings in real-time
5. **Broadcast** - Stream to your preferred platform via RTMP

### Parameters Explained

#### Basic Settings
- **Prompt**: Describes what you want the AI to generate
- **Negative Prompt**: Tells the AI what NOT to generate
- **Inference Steps**: Controls quality vs. speed (10-100)
- **Seed**: Controls randomness and reproducibility
- **Prompt Interpolation**: How prompts blend over time (SLERP/LERP)

#### ControlNets
- **Pose Estimation**: Preserves human body poses and gestures
- **Edge Detection (HED)**: Maintains soft edges and contours
- **Canny Edge Detection**: Preserves sharp edges and details
- **Depth Estimation**: Maintains 3D structure and spatial relationships
- **Color Preservation**: Keeps original color palettes and lighting

### RTMP Broadcasting
- **Platform Presets**: Twitch, YouTube Live, Facebook Live, OBS Studio
- **Stream Quality**: 480p, 720p, or 1080p
- **Connection Testing**: Verify RTMP settings before streaming

## 🔧 Technical Details

### Architecture
- **Frontend**: Pure HTML/CSS/JavaScript
- **AI Processing**: StreamDiffusion via Daydream API
- **Streaming**: WebRTC (input) + RTMP (output)
- **Video Player**: Livepeer iframe integration

### API Integration
- **Stream Creation**: Daydream API for AI pipeline setup
- **Parameter Updates**: Real-time AI parameter modification
- **RTMP Broadcasting**: Server-side stream conversion

### Browser Requirements
- Modern browser with WebRTC support
- Camera access permissions
- JavaScript enabled

## 📡 Supported Platforms

### RTMP Broadcasting
- **Twitch**: `rtmp://live.twitch.tv/live/`
- **YouTube Live**: `rtmp://a.rtmp.youtube.com/live2/`
- **Facebook Live**: `rtmp://rtmp-api.facebook.com:80/rtmp/`
- **OBS Studio**: `rtmp://localhost:1935/live/`
- **Custom RTMP**: Any RTMP-compatible server

## 🎨 Customization

### UI Themes
The application features a sleek black background with gold and silver accents. You can customize colors by modifying the CSS variables in `index.html`.

### AI Parameters
All StreamDiffusion parameters are adjustable in real-time:
- Prompt and negative prompt text
- Inference steps (1-100)
- Seed values (0-1000)
- ControlNet scales (0-1)
- Interpolation methods

## 🐛 Troubleshooting

### Common Issues
1. **Camera not working**: Check browser permissions
2. **Stream creation fails**: Verify API key is correct
3. **AI output not showing**: Wait 30-60 seconds for processing
4. **RTMP connection fails**: Check stream key and URL

### Debug Mode
Open browser console (F12) to see detailed logs and error messages.

## 📝 License

This project is open source. Please check the license file for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📞 Support

For issues and questions:
- Check the troubleshooting section
- Open an issue on GitHub
- Join the Discord community

## 🔗 Links

- [Daydream API Documentation](https://docs.daydream.live/)
- [StreamDiffusion Paper](https://arxiv.org/abs/2401.03048)
- [Livepeer Documentation](https://docs.livepeer.org/)

---

**REIMAGINE** - Transform your reality with AI ✨
