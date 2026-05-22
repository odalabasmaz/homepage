# orhundalabasmaz.com

Personal homepage of Orhun Dalabasmaz — Principal Software Engineer & SRE.

Built with [Hugo](https://gohugo.io) and the custom **Aurora** theme.
Hosted as a static site on AWS S3 + CloudFront.

---

## Stack

| Concern   | Tool |
|-----------|------|
| Generator | Hugo v0.161+ |
| Theme     | `themes/aurora` (custom, built from scratch) |
| Hosting   | AWS S3 (static website) |
| CDN       | AWS CloudFront (`E2BUG1YD638VC1`) |
| Domain    | Route 53 |

---

## Local Development

**Prerequisites:** Hugo extended (`brew install hugo`)

```bash
git clone <repo-url>
cd homepage
hugo server
open http://localhost:1313
```

---

## Content

All content is rendered from `themes/aurora/layouts/index.html` as a single-page scroll site.
Separate content files under `content/` are kept for reference but not linked in navigation.

| Section    | Location in index.html |
|------------|------------------------|
| Hero       | `#hero`                |
| About      | `#about`               |
| Experience | `#experience`          |
| Stack      | `#stack`               |
| Writing    | `#writing` → odalabasmaz.medium.com |

---

## Theme — Aurora

A custom dark theme built from scratch. Located at `themes/aurora/`.

**Design:**
- Deep midnight dark background with subtle grid pattern
- Electric indigo + cyan gradient accents
- Glassmorphism cards with backdrop blur
- Ambient animated gradient blobs
- Spinning conic-gradient profile photo ring
- Typing animation on hero (cycles through roles)
- Scroll-reveal via IntersectionObserver
- Active section detection in navbar
- Terminal-style `orhun@home:~$` navbar brand
- Zero framework dependencies — pure CSS + vanilla JS

**Theme structure:**
```
themes/aurora/
├── layouts/
│   ├── index.html              # Single-page homepage (all sections)
│   ├── 404.html
│   ├── _default/
│   │   ├── list.html           # Fallback list layout
│   │   └── single.html         # Fallback single layout
│   └── partials/
│       ├── head.html
│       ├── header.html         # Hardcoded anchor nav
│       ├── footer.html
│       ├── social.html
│       └── scripts.html
└── static/
    └── css/
        └── style.css           # All styles, no framework
```

---

## Configuration

`config.toml`:

```toml
[params]
  Name            = "..."
  About           = "..."
  ProfilePicture  = "images/profile4.jpg"
  Email           = "..."
  GithubID        = "..."
  LinkedInID      = "..."
  MediumID        = "..."
  TwitterID       = "..."
  StackOverflowID = "..."
  YoutubeID       = "..."
```

Profile photo goes in `static/images/`.

---

## Deployment

```bash
# Deploy only
./deploy.sh

# Deploy + invalidate CloudFront cache
./deploy.sh --invalidate
```

The script:
1. Runs `hugo` to build `public/`
2. Syncs to S3 with `--delete` and `--acl public-read`
3. Cleans up `public/`
4. With `--invalidate`: creates a `/*` invalidation on CloudFront (`E2BUG1YD638VC1`)

**Requires:** AWS CLI configured with the `homepage` profile.

```bash
aws configure --profile homepage
```

---

## License

Content © Orhun Dalabasmaz. All rights reserved.
Theme (Aurora) — MIT.
