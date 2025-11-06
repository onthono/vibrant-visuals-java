#ifndef SETTINGS_GLSL
#define SETTINGS_GLSL

const bool shadowHardwareFiltering = true;

// #define DEBUG_ENABLE
// #define FREEZE_TIME

#define EXPOSURE 14 // [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80]
#define CONTRAST 1.2 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]
#define SATURATION 1 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]

#define AMBIENT_STRENGTH 0.00 // [0.00 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.10]
#define BLOCKLIGHT_STRENGTH 1.0 // [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0]

// Lighting customization dials
#define SUN_INTENSITY 1.3 // [0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6]
#define SKYLIGHT_GLOBAL 1.0 // [0.5 0.75 1.0 1.25 1.5]
#define SKY_DIFFUSE_MULT 1.0 // [0.5 0.75 1.0 1.25 1.5 2.0]
#define BLOCKLIGHT_DIFFUSE_MULT 0.2 // [0.05 0.10 0.15 0.20 0.30 0.40]
// Night visibility lift (adds to ambient only during night)
#define NIGHT_VISIBILITY 0.15 // [0.0 0.05 0.10 0.15 0.20 0.25 0.30 0.40 0.50]
// Extra night shaping
#define NIGHT_SKY_MULT 1.15 // [1.0 1.05 1.1 1.15 1.25 1.5]
#define NIGHT_BASELINE 0.0 // [0.00 0.02 0.04 0.06 0.08 0.10 0.12]
#define NIGHT_LIGHT_FLOOR 0.12 // [0.00 0.05 0.08 0.10 0.12 0.15 0.20]

// Toggleable moon lighting and shadows
#define MOONLIGHT
#define MOON_INTENSITY 1.4 // [0.2 0.4 0.6 0.8 1.0 1.2 1.4 1.6 1.8 2.0]
#define MOON_SHADOWS
// Night shadow shaping
#define NIGHT_SHADOW_CONTRAST 0.6 // [0.0 0.25 0.5 0.6 0.7 0.8 0.9 1.0]
#define NIGHT_SHADOW_DARKNESS 1.0 // [0.5 0.75 1.0 1.25 1.5]

// PBR customization
#define PBR_ROUGHNESS_MULT 1.0 // [0.5 0.75 1.0 1.25 1.5]
#define PBR_F0_MULT 1.0 // [0.5 0.75 1.0 1.25 1.5]
#define PBR_SSS_MULT 1.0 // [0.5 0.75 1.0 1.25 1.5]
#define AO_STRENGTH 1.0 // [0.5 0.75 1.0 1.25 1.5]
#define NORMAL_STRENGTH 1.0 // [0.5 0.75 1.0 1.25 1.5 2.0]
#define SPECULAR_INTENSITY 1.0 // [0.5 0.75 1.0 1.25 1.5]

// Handheld light strength
#define HANDLIGHT_STRENGTH 1.5 // [0.5 0.75 1.0 1.25 1.5 2.0 3.0]

// Moonlight color tint (0 = neutral, 1 = cool blue)
#define MOON_COOL_TINT 0.8 // [0.0 0.25 0.5 0.75 1.0]

// #define FLOODFILL
#define VOXEL_MAP_SIZE ivec3(256, 128, 256)
const float voxelDistance = 128.0;

#define DYNAMIC_HANDLIGHT
#define DIRECTIONAL_LIGHTMAPS

// #define WAVING_BLOCKS
// #define PATCHY_LAVA

#define EMISSION_STRENGTH 2.0 // [1.0 2.0 4.0 8.0 16.0 32.0 48.0 64.0 80.0 96.0 112.0 128.0 144.0 160.0 176.0 192.0 208.0 224.0 240.0 256.0 272.0 288.0 304.0 320.0 336.0 352.0 368.0 384.0 400.0 416.0 432.0 448.0 464.0 480.0 496.0 512.0]

// (Glow features removed by user request; using only texture-provided emissive.)

const float ambientOcclusionLevel = 1.0; // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]

#define SHADOWS
const float shadowDistance = 192.0; // [16.0 32.0 48.0 64.0 80.0 96.0 112.0 128.0 144.0 160.0 176.0 192.0 208.0 224.0 240.0 256.0 272.0 288.0 304.0 320.0 336.0 352.0 368.0 384.0 400.0 416.0 432.0 448.0 464.0 480.0 496.0 512.0]
const float shadowDistanceRenderMul = 1.0;
const float entityShadowDistanceMul = 0.2; // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]
const int shadowMapResolution = 2048; // [128 256 512 1024 2048 4096 8192]
const float sunPathRotation = 0.0; // [-90.0 -85.0 -80.0 -75.0 -70.0 -65.0 -60.0 -55.0 -50.0 -45.0 -40.0 -35.0 -30.0 -25.0 -20.0 -15.0 -10.0 -5.0 0.0 5.0 10.0 15.0 20.0 25.0 30.0 35.0 40.0 45.0 50.0 55.0 60.0 65.0 70.0 75.0 80.0 85.0 90.0]
#define SHADOW_DISTORTION 0.85
#define SHADOW_SOFTNESS 0.5 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]
#define SHADOW_SAMPLES 4 // [1 2 4 8 16 32]
// Colored shadow transmission through stained/tinted glass
#define COLORED_GLASS_SHADOWS
#define GLASS_SHADOW_STRENGTH 0.8 // [0.25 0.5 0.75 0.8 0.9 1.0]

#define PBR_MODE 1 // [0 1]

#define PIXEL_LOCKED_LIGHTING
#define PIXEL_SIZE 16 // [1 2 4 8 16 32 64]

#define TEMPORAL_FILTER

#define BLOOM
#define BLOOM_RADIUS 1.0 // [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]
#define BLOOM_STRENGTH 0.5 // [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0]
#define BLOOM_QUALITY 0.5 // [0.25 0.5 0.75 1.0]
#define BLOOM_PIXELATION 0 // [0 1 2 3 4]

#define FXAA
#define FXAA_SUBPIXEL 0.5 //[0.00 0.25 0.50 0.75 1.00]
#define FXAA_EDGE_SENSITIVITY 1 //[0 1 2]

#define CLOUDS
#define CLOUD_PLANE_ALTITUDE 192 // [64 96 128 160 192]
#define CLOUD_PLANE_HEIGHT 4 // [1 2 3 4 5 6 7 8]
// #define VANILLA_CLOUD_TEXTURE
// #define BLOCKY_CLOUDS
#define CLOUD_SHADOWS

// Cloud quality and color controls
#define CLOUD_STEPS 8 // [4 6 8 10 12]
#define CLOUD_TINT_STRENGTH 1.0 // [0.0 0.25 0.5 0.75 1.0 1.5 2.0]
#define CLOUD_OPACITY 1.0 // [0.5 0.75 1.0 1.25 1.5]

#define ATMOSPHERIC_FOG
#define CLOUDY_FOG
#define MORNING_FOG_DENSITY 1.6 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]
#define BASE_FOG_DENSITY 0.2 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]
#define FOG_DENSITY 0.009 // [0.002 0.004 0.006 0.008 0.009 0.012 0.016]
#define VANILLA_FOG_DENSITY 5.0 // [1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0]

#define GODRAYS 2 // [0 1 2]
#define GODRAYS_DENSITY 1.0
#define GODRAYS_DECAY 1.0
#define GODRAYS_EXPOSURE 1.2
#define GODRAYS_WEIGHT 1.0
#define GODRAYS_SAMPLES 32 // [4 8 16 32 64]

// Auto exposure (simple day/night adapt using sun visibility)
#define AUTO_EXPOSURE
#define AUTO_EXPOSURE_DAY 1.0 // [0.5 0.75 1.0 1.25 1.5]
#define AUTO_EXPOSURE_NIGHT 1.2 // [0.8 0.9 1.0 1.1 1.2 1.4]

// Screen-space ambient occlusion (very lightweight)
#define SSAO
#define SSAO_RADIUS 1.5 // [0.5 1.0 1.5 2.0 3.0]
#define SSAO_INTENSITY 0.5 // [0.0 0.25 0.5 0.75 1.0]
#define SSAO_SAMPLES 8 // [4 8 12 16]

#define SSR_STEPS 4 // [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]
#define SSR_JITTER
#define REFLECTION_MODE 2 // [0 1 2]
#define FADE_REFLECTIONS
// Adaptive screen-space reflections (keeps look, reduces work)
#define ADAPTIVE_SSR
// #define ROUGH_SKY_REFLECTIONS
// #define RAIN_PUDDLES

// #define REFRACTION
#define CAUSTICS
// Quality-safe controls for caustics look. Always on; these only tune size/intensity.
#define CAUSTICS_SCALE 2.0 // [1.0 1.5 2.0 2.5 3.0 4.0]
#define CAUSTICS_STRENGTH 2.5 // [1.5 2.0 2.5 3.0 3.5]
#define WAVE_MODE 1 // [0 1 2]
#define SNELLS_WINDOW
#define WATER_HEIGHTMAP_HEIGHT 0.025

// #define CUSTOM_SUN

// #define INFINITE_OCEAN
#define SEA_LEVEL 63 // [-60 4 31 63]

#define DH_AO
#ifdef DH_AO
#endif
#define DH_AO_BIAS 0.025
#define DH_AO_RADIUS 4.0
#define DH_AO_SAMPLES 32 // [4 8 16 32 64]

// #define PARALLAX
#define PARALLAX_DISTANCE 32.0 // [4.0 8.0 16.0 32.0 64.0 128.0 256.0 512.0 1024.0]
#define PARALLAX_DISTANCE_CURVE 0.8
#define PARALLAX_SAMPLES 32 // [4 8 16 32 64 128]
#define PARALLAX_HEIGHT 0.25 // [0.05 0.10 0.15 0.20 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.60 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.0]
#define PARALLAX_SHADOW
#define PARALLAX_SHADOW_SAMPLES 16 // [4 8 16 32 64 128]

// Adaptive shadow sampling (distance-aware). Visually identical, faster.
#define ADAPTIVE_SHADOWS

#define GLIMMER_SHADERS 1 // [1 2]
#define WEBSITE 1 // [1 2]

// #define PROGRAM_DISABLED

#ifdef PROGRAM_DISABLED
#endif

#endif // SETTINGS_GLSL
