// REIMAGINE Configuration Template
// Copy this file to config.js and update with your actual values
// DO NOT commit config.js to version control

// API Configuration
const CONFIG = {
    // Daydream API Key - Get from https://app.daydream.live/beta/api-key
    // Replace with your actual API key
    API_KEY: 'YOUR_API_KEY_HERE',
    
    // Pipeline ID for StreamDiffusion
    PIPELINE_ID: 'pip_qpUgXycjWF6YMeSL',
    
    // API Base URL
    API_BASE: 'https://api.daydream.live',
    
    // Default StreamDiffusion Parameters
    DEFAULT_PARAMS: {
        model_id: 'stabilityai/sd-turbo',
        prompt: 'superman',
        prompt_interpolation_method: 'slerp',
        normalize_prompt_weights: true,
        normalize_seed_weights: true,
        negative_prompt: 'blurry, low quality, flat, 2d',
        num_inference_steps: 50,
        seed: 42,
        t_index_list: [0, 8, 17],
        controlnets: [
            {
                conditioning_scale: 0,
                control_guidance_end: 1,
                control_guidance_start: 0,
                enabled: true,
                model_id: 'thibaud/controlnet-sd21-openpose-diffusers',
                preprocessor: 'pose_tensorrt',
                preprocessor_params: {}
            },
            {
                conditioning_scale: 0,
                control_guidance_end: 1,
                control_guidance_start: 0,
                enabled: true,
                model_id: 'thibaud/controlnet-sd21-hed-diffusers',
                preprocessor: 'soft_edge',
                preprocessor_params: {}
            },
            {
                conditioning_scale: 0,
                control_guidance_end: 1,
                control_guidance_start: 0,
                enabled: true,
                model_id: 'thibaud/controlnet-sd21-canny-diffusers',
                preprocessor: 'canny',
                preprocessor_params: {
                    high_threshold: 200,
                    low_threshold: 100
                }
            },
            {
                conditioning_scale: 0,
                control_guidance_end: 1,
                control_guidance_start: 0,
                enabled: true,
                model_id: 'thibaud/controlnet-sd21-depth-diffusers',
                preprocessor: 'depth_tensorrt',
                preprocessor_params: {}
            },
            {
                conditioning_scale: 0,
                control_guidance_end: 1,
                control_guidance_start: 0,
                enabled: true,
                model_id: 'thibaud/controlnet-sd21-color-diffusers',
                preprocessor: 'passthrough',
                preprocessor_params: {}
            }
        ]
    },
    
    // RTMP Platform Presets
    RTMP_PRESETS: {
        'twitch': {
            url: 'rtmp://live.twitch.tv/live/',
            quality: '720p',
            description: 'Twitch Live Streaming'
        },
        'youtube': {
            url: 'rtmp://a.rtmp.youtube.com/live2/',
            quality: '720p',
            description: 'YouTube Live Streaming'
        },
        'facebook': {
            url: 'rtmp://rtmp-api.facebook.com:80/rtmp/',
            quality: '720p',
            description: 'Facebook Live Streaming'
        },
        'obs': {
            url: 'rtmp://localhost:1935/live/',
            quality: '1080p',
            description: 'OBS Studio Local Server'
        }
    },
    
    // Application Settings
    APP: {
        name: 'REIMAGINE',
        version: '1.0.0',
        description: 'AI Webcam Streamer',
        author: 'REIMAGINE Team'
    }
};

// Security validation
function validateConfig() {
    if (CONFIG.API_KEY === 'YOUR_API_KEY_HERE' || !CONFIG.API_KEY) {
        console.warn('⚠️ API Key not configured. Please update config.js with your actual API key.');
        return false;
    }
    
    if (CONFIG.API_KEY.length < 20) {
        console.error('❌ Invalid API Key format. Please check your API key.');
        return false;
    }
    
    return true;
}

// Export configuration
if (typeof module !== 'undefined' && module.exports) {
    module.exports = { CONFIG, validateConfig };
}
