# dotmatrix — sigal configuration
# Sigal 2.5. Full option reference: the bundled defaults in sigal's
# src/sigal/settings.py.

source = "pictures"
destination = "build"

title = "dotmatrix"
author = "starbaser"

# photoswipe: mobile-first lightbox with pinch / double-tap zoom to full
# resolution. Best theme for reading fine graph detail.
theme = "photoswipe"

# Serve originals verbatim. Bypasses resize, autorotate, and recompress so
# PNG line art stays pixel-perfect — the whole point for technical diagrams.
use_orig = True

# Thumbnail grid: show each complete graph (no crop) inside a uniform box.
make_thumbs = True
thumb_size = (320, 240)
thumb_fit = False

# Clean index URLs.
index_in_url = False

links = [("GitHub", "https://github.com/starbaser/dotmatrix-gallery")]
