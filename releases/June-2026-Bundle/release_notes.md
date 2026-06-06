## 🆕 RenderHub DCTLs June 2026 - Bundled Release

---

## Three new DCTLs.

### RH End Tones Sculptor
*Shadow & Highlight Sculpting Engine*

Precise, zone-isolated control over the character of your shadows and highlights — independently. RGB balance, saturation, and hue rotation are all available per zone, with no bleed into midtones.

**Key Features:**
- Independent **Shadow** and **Highlight** zones with adjustable Black/White Level pivots and softness
- **Petal Color Model (IQ Projection)** for saturation and hue — luminance-decoupled chroma scaling
- **Additive RGB balance** per zone for targeted tinting
- **Optional hue rotation** (gated by checkbox to prevent accidental shifts)
- Built-in **live RGB curve visualiser** with per-channel curves and shadow/highlight tint swatches
- **Zone mask diagnostic mode** to verify zone placement before grading

---

### RH Hue Compressor
*6-Vector Hue Compression Engine*

Pulls stray hues toward their natural target angle. Unlike a hue rotation (which shifts everything uniformly), compression is proportional — hues far from centre are pulled harder, hues already at centre are untouched.

**Key Features:**
- **6-vector coverage**: Red, Yellow, Green, Cyan, Blue, Magenta — each independent
- Per-vector **Compression**, **Center offset**, and **Range** controls
- Uses the **Reuleaux (HRO) color model** for perceptually uniform hue spacing
- **Global Blend** for a single wet/dry master mix across all vectors
- Pure hue-angle operation — **saturation and luminance are not affected**

---

### RH Chroma Gate
*6-Vector Per-Zone Chroma Control*

Saturation control with two axes: hue vector and tonal zone. Every one of the six hue families has independent saturation multipliers for shadows, midtones, and highlights — 18 controls total.

**Key Features:**
- **6 hue vectors × 3 tonal zones** = 18 independent chroma multipliers
- **Reuleaux (HRO) color model** for consistent chroma representation across the gamut
- Tonal zones derived from **Rec.709 luma** for perceptually accurate shadow/mid/highlight classification
- Adjustable **Shadow Pivot**, **Highlight Pivot**, and **Zone Softness**
- **False-colour zone mask visualiser** (Red = highlights, Green = mids, Blue = shadows)
- Default is a perfect **pass-through** — nothing changes unless you move a slider

### RH Filmic Colors
* Existing version is added for convenient access*

### RH MidControl
* Exisiting version is added for convenient access*
