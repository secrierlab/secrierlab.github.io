This PR modernizes the site with a small, safe set of changes:

### What’s included
- **Blog auto-index** at `/blog/` (clickable titles; future posts appear automatically).
- **Centralized layouts/includes** so header/footer live in `_includes/`, not copy‑pasted.
- **Minimal SEO & discovery**: `jekyll-seo-tag`, `jekyll-sitemap`, `jekyll-feed`.
- **Decap CMS** at `/admin/` to edit content via a UI (GitHub backend).
- **GitHub Actions** workflow to build/deploy with the latest Jekyll on pushes to `main` or `master`.

### Files added
- `_layouts/`, `_includes/`, `_data/navigation.yml`, `_posts/` (sample post), `blog/index.md`, `misc/about.md`, `misc/contact.md`, `admin/`, `.github/workflows/jekyll.yml`, `robots.txt`.

### After merge
1. In **Settings → Pages**, confirm "GitHub Actions" is the source.
2. Visit `/blog/` and `/misc/about/`.
3. (Optional) Create a GitHub OAuth App + tiny OAuth proxy to enable login at `/admin/` (Decap).

This is additive and won’t delete your existing pages. You can migrate sections gradually to the new layouts.
