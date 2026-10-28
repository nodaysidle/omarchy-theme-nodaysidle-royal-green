-- nodaysidle Royal Green — Hyprland Configuration (Lua)
-- Haute Horology & British Racing Atelier: Champagne Gold & Emerald Velvet
-- Zero-Overhead Spec: No looping shaders, no heavy blur, cool thermals

local active_border_color = {
  colors = {
    "rgb(d4af37)", -- Polished Champagne Gold
    "rgb(4ade80)", -- Vivid Emerald Mint
    "rgb(1b4332)", -- Deep British Racing Green
  },
  angle = 45,
}

local inactive_border_color = {
  colors = {
    "rgb(18261e)", -- Muted Spruce Leather
    "rgb(0c140e)", -- Deep Peat Noir
  },
  angle = 45,
}

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
    gaps_in = 6,
    gaps_out = { top = 4, right = 10, bottom = 10, left = 10 },
    border_size = 2,
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
      border_locked_active = active_border_color,
      border_locked_inactive = inactive_border_color,
    },

    groupbar = {
      col = {
        active = "rgba(212, 175, 55, 0.25)",
        inactive = "rgba(12, 20, 14, 0.70)",
      },
      text_color = "rgb(d4af37)",
      text_color_inactive = "rgba(149, 163, 152, 0.7)",
      blur = false,
      gradient_rounding = 8,
    },
  },

  decoration = {
    rounding = 12,
    rounding_power = 4.0,

    active_opacity = 1.0,
    inactive_opacity = 1.0,

    dim_inactive = true,
    dim_strength = 0.15,
    dim_special = 0.30,

    blur = { enabled = false },
    glow = { enabled = false },
    shadow = { enabled = false },
  },
})

-- ── Atelier Smooth Velvet Ease ──
hl.curve("atelierEase", { type = "bezier", points = { { 0.25, 0.10 }, { 0.25, 1.00 } } })

hl.animation({ leaf = "borderangle", enabled = false })
hl.animation({
  leaf = "windows",
  enabled = true,
  speed = 3.5,
  bezier = "atelierEase",
})

hl.animation({ leaf = "layersIn", enabled = true, speed = 3.0, bezier = "atelierEase", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.0, bezier = "atelierEase", style = "fade" })

o.window({ tag = "terminal" }, { tag = "-default-opacity", opacity = "1.0 1.0" })
o.window({ tag = "default-opacity" }, { opacity = "1.0 1.0" })
o.window({ tag = "chromium-based-browser" }, { opacity = "1.0 1.0" })
o.window({ tag = "firefox-based-browser" }, { opacity = "1.0 1.0" })

hl.layer_rule({ match = { namespace = "^(omarchy-bar|omarchy-notifications|omarchy-osd|omarchy-reminders)$" }, blur = false })

hl.env("XCURSOR_THEME", "Omarchy-Royal-Green")
hl.env("HYPRCURSOR_THEME", "Omarchy-Royal-Green")
