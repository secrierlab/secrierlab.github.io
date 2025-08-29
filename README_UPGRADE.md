# Secrier Lab site — Fix & Modernize Kit

This bundle gives you:
- Data-driven navigation in `_data/navigation.yml`
- Proper Jekyll layouts and includes (no more copy-pasting header/footer)
- A working blog index that auto-lists posts
- Minimal SEO & discovery (`jekyll-seo-tag`, `jekyll-sitemap`, `jekyll-feed`)
- Decap CMS admin at `/admin/` to edit content via a UI (uses GitHub backend)
- Optional GitHub Actions workflow to build with the latest Jekyll

## 1) How to apply (safest path)
1. Create a branch, e.g. `site-refresh`.
2. Copy the folders in this zip into your repo root (it won’t overwrite your existing pages).
3. Commit + push. In GitHub → Settings → Pages, choose “GitHub Actions” as the source (if not already).
4. Visit `/blog/` and `/misc/about/` to confirm they render. The old static pages continue to work.

## 2) Use the new blog
- Add new posts under `_posts/` with filename `YYYY-MM-DD-title.md` (or via `/admin` once auth is set up).
- The list is now at `/blog/` and each post gets its own page automatically.

## 3) Turn on the CMS editor (Decap)
Decap needs GitHub OAuth for the GitHub backend. You have two options:

**A. Self-host a tiny OAuth provider (keeps GitHub Pages hosting)**
- Create a GitHub OAuth App (Settings → Developer settings → OAuth Apps).
- Host a small OAuth proxy (e.g., `vencax/netlify-cms-github-oauth-provider`) and set its URL in the OAuth App callback.
- Keep `backend: github` in `admin/config.yml`. Login happens at `/admin/`.

**B. Use Netlify Identity + Git Gateway (simpler auth, different host)**
- If you’re open to hosting the site on Netlify, switch `backend` to `git-gateway` and follow Netlify Identity docs.
- You can still keep your repo on GitHub; Netlify builds from it.

## 4) Gradual refactor (optional)
- Start converting repeated HTML pages to Markdown pages with `layout: page` front matter.
- Move people/projects/papers into collections (`_people`, `_projects`, `_papers`) and loop them on index pages.
- Delete the old duplicate HTML once the new pages cover everything.

## 5) Remove stray “foo”
- If you see “foo” anywhere, it was likely in a footer. With `_includes/footer.html` in place, remove any literal “foo” from old files.

## 6) Notes
- This kit uses only GitHub Pages–approved plugins.
- The included GitHub Actions workflow (`.github/workflows/jekyll.yml`) uses the official `jekyll-build-pages` action.
- 
