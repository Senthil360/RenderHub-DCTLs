# 🎨 RenderHub DCTLs & Plugins

> **High-Fidelity Color Tools for DaVinci Resolve Studio**

### These DCTLs are released for free and have one month expiry period and they will be updated each month,  and you need to update it manually each month to avoid expiry
---

## 📥 Downloads & Updates

### [🚀 **LATEST RELEASES**](https://github.com/Senthil360/RenderHub-DCTLs/releases/)
### Latest Version released on - July 31 2026
*Grab the latest versions of all tools here.*

[🏷️ **View All Versions (Tags)**](https://github.com/Senthil360/RenderHub-DCTLs/tags)

---

## 🌟 Welcome
Welcome to the official code repository for **RenderHub Tools**. This collection features high-precision DCTLs and plugins designed to elevate your DaVinci Resolve workflow with subtractive color science and atomic control.

All tools assume:
- Scene-referred input in **DaVinci Wide Gamut / Intermediate (DWG/DI)**
- Proper color management upstream

These are not presets, LUT packs, or one-click film looks.

### 🤝 Join the Community
🌐 [**Website**](https://renderhub.in/pages/plugins) | 🎬 [**YouTube**](https://www.youtube.com/c/SenthilManikandan) | 🎮 [**Discord**](https://renderhub.in/discord) | ❤️ [**Support / Store**](https://renderhub.in/pages/plugins)

---

## 💿 Installation

*Note: Native DCTL support requires **DaVinci Resolve Studio** (the paid version).*

### How to install DCTLs in Davinci Resolve Studio
1. Open DaVinci Resolve.
2. Go to **File > Project Settings** (or press `Shift + 9`).
3. Navigate to the **Color Management** tab.
4. Scroll down to the **Lookup Tables** section and click the **Open LUT Folder** button.
5. Create a new folder called 'RenderHub'
6. Place the downloaded `.dctle` files into this folder.
7. **Restart DaVinci Resolve** for the changes to take effect.
8. The tools will now be available in the Color Page under the **Effects** panel (drag the **DCTL** OpenFX node onto a node and select the tool from the dropdown).

### Manual Installation Paths
If you prefer to copy the files manually, the default directories are:
- **macOS:** `/Library/Application Support/Blackmagic Design/DaVinci Resolve/LUT/`
- **Windows:** `C:\ProgramData\Blackmagic Design\DaVinci Resolve\Support\LUT\`

---

## 🛠️ The Collection

### 🎞️ RH Filmic Colors
> **The Subtractive Film Engine.** A density-based color model that preserves chromatic richness under contrast and exposure changes — built on real dye absorption physics, not LUT approximations.

- Density-based CMY dye simulation in DWG scene-linear space
- Smart Split Toning with hue-selective shadow and highlight toning
- Tonescale with adjustable shape curve
- Global hue, saturation, and exposure controls
- Built-in curve visualiser

👉 [Wiki — RH Filmic Colors](https://github.com/Senthil360/RenderHub-DCTLs/wiki/RH-Filmic-Colors)

---

### 🎚️ RH MidControl
> **Dynamic Contrast & Exposure Engine.** Pivots contrast around a user-definable mid point, allowing asymmetric shadow and highlight control independent of each other.

- User-definable mid point pivot (replaces fixed 0.18 / 0.5 grey)
- Independent shadow and highlight curve types: Hermite, Sine, Quadratic
- Per-channel (RGB) vector controls for low and high regions
- Black point / white point level controls
- Show Mid Selection and Show Curves diagnostic overlays

👉 [Wiki — RH MidControl](https://github.com/Senthil360/RenderHub-DCTLs/wiki/RH-MidControl)

---

### 🎨 RH End Tones Sculptor
> **Shadow & Highlight Sculpting Engine.** Precise, zone-isolated control over the colour character of your shadows and highlights — RGB balance, saturation, and hue rotation per zone, with no bleed into midtones.

- Independent shadow and highlight zones with adjustable pivots and softness
- **Petal Color Model (IQ Projection)** for luminance-decoupled saturation and hue
- Additive RGB balance per zone for targeted tinting
- Optional hue rotation gated by checkbox (no accidental shifts)
- Live RGB curve visualiser with per-channel curves and tint swatches
- Zone mask diagnostic mode

👉 [Wiki — RH End Tones Sculptor](https://github.com/Senthil360/RenderHub-DCTLs/wiki/RH-End-Tones-Sculptor)

---

### 🎡 RH Hue Compressor
> **6-Vector Hue Compression Engine.** Pulls stray hues toward their natural target angle proportionally — the further a hue sits from the target, the stronger the pull. Hues already at centre are untouched.

- 6 independent vectors: Red, Yellow, Green, Cyan, Blue, Magenta
- Per-vector Compression, Center offset, and Range controls
- **Reuleaux (HRO) color model** for perceptually uniform hue spacing
- Global Blend for wet/dry mix across all vectors simultaneously
- Pure angular operation — saturation and luminance are not affected

👉 [Wiki — RH Hue Compressor](https://github.com/Senthil360/RenderHub-DCTLs/wiki/RH-Hue-Compressor)

---

### 🚦 RH Chroma Gate
> **6-Vector Per-Zone Chroma Control.** Saturation control with two axes: hue vector and tonal zone. 18 independent saturation multipliers across 6 hue families × 3 tonal zones.

- 6 hue vectors × 3 tonal zones (shadow / mid / highlight) = 18 controls
- **Reuleaux (HRO) color model** for consistent chroma representation
- Tonal zones derived from Rec.709 luma for perceptually accurate classification
- Adjustable Shadow Pivot, Highlight Pivot, and Zone Softness
- False-colour zone mask visualiser (Red = highlights, Green = mids, Blue = shadows)
- Default is a perfect pass-through — nothing changes unless you move a slider

👉 [Wiki — RH Chroma Gate](https://github.com/Senthil360/RenderHub-DCTLs/wiki/RH-Chroma-Gate)

---

### 🎛️ RH Subtractive Mixer
> **Subtractive Color Grading in CMY Density Space.** A highly specialized film emulation tool that performs true subtractive color mixing by converting your image into CMY Dye Density Space — simulating physical film dye absorption for rich, deep, and thick cinematic colors.

- **CMY Dye Density Space** conversion for true subtractive color shifts (adding color density removes light)
- Mathematically perfect **Luminance Lock** to preserve original perceptual brightness while adding intense saturation
- **Pure Hue Isolation** ensures color shifts only affect saturated objects without tinting neutral gray balance
- 6 independent CMY & RGB subtractive shift sliders for organic hue manipulation
- **Subtractive Saturation** multiplier for achieving thick, dense saturation without video-like brightness boost
- Global **Shift Sensitivity** dampener for fine-grained slider control

👉 [Wiki — RH Subtractive Mixer](https://github.com/Senthil360/RenderHub-DCTLs/wiki/RH-Subtractive-Mixer)

---

### 🎞️ RH Hybrid Dye Engine *(New)*
> **Spectral Film Chemistry & Additive Digital Fusion.** An advanced film emulation and color grading tool that runs two completely distinct image processing pipelines in parallel and intelligently blends them based on scene exposure.

- **Density-Dependent Crossfade Architecture:** Runs spectral film dye simulation in shadows and cleanly crossfades to an additive digital curve in highlights
- **Multi-Layer Emulsion & DIR Couplers:** Simulates Fast and Slow sublayers for organic contrast, with chemical cross-talk to create deep color separation
- **Spectral Integration:** Models light absorption across against Illuminant D65
- **Physical Film Artifact Controls:** True silver retention, physical halation emulation, and adjustable fog levels
- **Dye Tuning:** Tune the spectral absorption multipliers for each individual dye layer before CIE color matching integration
- **Visual Aids:** Built-in curve visualiser for tuning the Fast-Slow Ratio, Contrast, and Blend Transition

👉 [Wiki — RH Hybrid Dye Engine](https://github.com/Senthil360/RenderHub-DCTLs/wiki/RH-Hybrid-Dye-Engine)

---

## 📖 Documentation

Full usage documentation, control references, and workflow guidance are available in the [**Wiki**](https://github.com/Senthil360/RenderHub-DCTLs/wiki).

---

## 📈 Development Status

This repository is under active development. Tools may evolve, controls may change, and behaviour may be refined. There is no fixed roadmap or timeline. Feedback is welcome, but implementation decisions remain scoped intentionally.

---

## 📄 License

Please see the [LICENSE](LICENSE) file for usage terms.
