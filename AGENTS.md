# AGENTS.md

## Project Overview

React + Vite wedding invitation website (NIKAHFIX) with Supabase backend. Netflix-inspired UI for wedding invitations with guest messages and RSVP.

## Commands

```bash
npm run dev      # Start dev server on port 5174 (not 5173)
npm run build    # Production build to dist/
npm run lint     # ESLint check
npm run preview  # Preview production build
```

Dev server runs on port **5174** (configured in vite.config.js), not the Vite default 5173.

## Environment Setup

Required env vars in `.env.local`:
- `VITE_SUPABASE_URL` - Supabase project URL
- `VITE_SUPABASE_ANON_KEY` - Supabase anon key
- `VITE_APP_TABLE_NAME` - Database table name (default: `nikahfix`)

The app has hardcoded fallback credentials in `src/lib/supabaseClient.js` if env vars are missing (logs warning to console).

## Architecture

- **Entry**: `src/main.jsx` → `src/App.jsx`
- **Config**: Wedding content lives in `src/data/config.json` (bride/groom info, gallery URLs, love story, feature toggles)
- **Supabase client**: `src/lib/supabaseClient.js` (handles env fallback)
- **Components**: `src/components/section/` and `src/components/ui/`
- **Styling**: TailwindCSS + PostCSS

## Key Files

- `src/data/config.json` - All wedding content and feature flags (`show_menu` object controls which sections display)
- `src/lib/supabaseClient.js` - Supabase initialization with fallback credentials
- `vercel.json` - SPA routing config (rewrites all routes to `/`)
- `nikahfix_rows.sql` - Database schema reference

## Deployment

Hosted on Vercel. Build outputs to `dist/`. SPA routing handled via `vercel.json` rewrites.

## Query Parameters

`?to=name` - Personalizes invitation for specific guest (e.g., `?to=tajul+dan+gorbon`)

## Dependencies of Note

- `indonesian-badwords` - Content filtering for guest messages
- `react-google-recaptcha` - Bot protection for forms
- `lodash` - Utility functions
