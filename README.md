# nodaysidle Royal Green — Omarchy Theme

> *"Precision horology meets British racing heritage: crafted for relentless shipping."*

An ultra-refined dark atelier theme for **Omarchy / Hyprland**, custom-tailored for the **nodaysidle** ecosystem and tuned specifically for the **32" Samsung Odyssey G5 (2560×1440 @ 120Hz)** on Intel Arc / Wayland.

Rooted in the visual DNA of British racing greens, bespoke leathercraft, and haute horology (Aston Martin, Rolex Daytona, Patek Philippe Calibre), it replaces generic desktop palettes with an understated, luxurious developer cockpit designed for 14+ hour sprints with zero eye strain.

---

## Design System & Color Tokens

Anchored in a deep peat and spruce-noir ground with polished champagne gold and racing emerald accents:

| Token | Hex | Role in Ecosystem |
| :--- | :--- | :--- |
| **Spruce Noir** | `#0C140E` | Primary deep background (calm, zero glare on curved panels) |
| **Peat Void** | `#040705` | Deep sunken ground, tooltips, and lock surfaces |
| **Elevated Atelier** | `#142018` | Elevated card surfaces, popups, and active tab fills |
| **Champagne Gold** | `#D4AF37` | Primary luxury accent (active borders, clocks, key indicators) |
| **Emerald Spark** | `#4ADE80` | Active workspace indicators, connected status, git clean |
| **Racing Green** | `#2E8B57` | Syntax strings, directory trees, success signals |
| **Terracotta Rust** | `#D98236` | Warnings, telemetry alerts, branch indicators |
| **Atelier Ivory** | `#ECEADD` | Primary crisp typography (JetBrains Mono Nerd Font) |
| **Muted Sage** | `#718274` | Hairline borders, secondary metadata, comments |

---

## Key Architectural Features

### 1. Dual-Tone Champagne & Emerald Borders
A refined 2px active border flowing at a 45° angle from **Polished Champagne Gold (`#D4AF37`)** through **Emerald Spark (`#4ADE80`)** into **British Racing Green (`#1B4332`)**. Rendered without continuous animation loops to guarantee zero GPU overhead on Intel Arc iGPUs.

### 2. Apple / Tauri Superellipse Curvature
Window geometry utilizes continuous superellipse rounding (`rounding = 12`, `power = 4.0`), creating fluid, tactile corners matching native macOS Swift/Metal aesthetics.

### 3. Foot Terminal Cockpit
Tuned with a true spruce noir background (`#0C140E`), beam cursor in gleaming gold (`#D4AF37`), and crisp ivory typography (`#ECEADD`) calibrated for long-form code reviews and terminal workflows.

### 4. Bespoke Top Menu Bar Surfaces
`shell.toml` configures a distinct haute horology aesthetic:
- **Translucent Spruce Glass**: `background = "#0C140E"` with `alpha = 0.90`
- **Antique Brass Controls**: Normal controls outlined in deep forest brass with warm gold hover cursor (`#D4AF37`)
- **Emerald Active Badges**: Workspaces and active pills illuminated in Vivid Mint (`#4ADE80`)

### 5. Curated 2560×1440 120Hz Wallpapers
Includes 4 bespoke wallpapers at native 2560×1440:
- `00-nodaysidle-lv-monogram-royal-green.png`: Luxury LV-style NODAYSIDLE monogram in deep racing green.
- `00-nodaysidle-multicolor-royal-green.png`: High-chroma royal green monogram weave.
- `01-royal-green-horology-dial.png`: Concentric guilloché horology dial rings with 12 luminous green hour markers and gold vector wordmark.
- `02-royal-green-racing-livery.png`: Aerodynamic Valkyrie racing twin-stripes in champagne gold and vivid mint with corner telemetry brackets.

---

## Installation & Activation

### 1. Register the Theme
Run the installer from within the theme repository:

```bash
chmod +x install uninstall hooks/nodaysidle-royal-green
./install
```

### 2. Activate with Omarchy
```bash
omarchy theme set nodaysidle-royal-green
```

### 3. Cycle Wallpapers
```bash
omarchy theme bg next
```

---

## File Architecture

```
omarchy-theme-nodaysidle-royal-green/
├── colors.toml               # Master color tokens for Omarchy templates
├── hyprland.lua              # 45° champagne/emerald gradient, superellipse rounding
├── shell.toml                # Quickshell bar surfaces, controls, popups, and OSD
├── foot.ini                  # Foot terminal palette & cursor definition
├── btop.theme                # Telemetry skin for system monitoring
├── preview.png               # 2560×1440 preview render for Omarchy theme picker
├── install / uninstall       # Symlink & hook registration scripts
├── hooks/
│   └── nodaysidle-royal-green # Omarchy theme-set lifecycle hook
└── backgrounds/              # High-resolution 2560×1440 wallpapers
    ├── 00-nodaysidle-lv-monogram-royal-green.png
    ├── 00-nodaysidle-multicolor-royal-green.png
    ├── 01-royal-green-horology-dial.png
    └── 02-royal-green-racing-livery.png
```

---

## Built for NODAYSIDLE
Part of the [nodaysidle](https://github.com/nodaysidle) workspace — relentless shipping, zero compromise.
