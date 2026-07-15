# dotmatrix gallery — sigal tasks

# Serve locally (http://127.0.0.1:8000) with rebuilds on change.
serve:
	nix develop --command sigal serve

# Build the static site into ./build.
build:
	nix develop --command sigal build

# Build the site as a nix package into ./result.
pkg:
	nix build .#gallery --out-link result

# Remove generated output.
clean:
	rm -rf build _build result
