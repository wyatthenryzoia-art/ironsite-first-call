# NOTES

## Target pick

**TARGET: Limbach Holdings (NASDAQ: LMB)**
**Verified: 2026-04-23**

### Why

Public filings give citeable, dated signals that map 1:1 to Ironsite's wedge. Three reasons in priority order:

1. **T&M exposure is explicit.** Q3 2025 earnings call (Nov 2025): ~1/3 of Owner Direct Relationships (ODR) revenue is T&M work. ODR was $141.4M in Q3 2025, so T&M run-rate is ~$47M/quarter, ~$180-200M annual. CEO and CFO discuss T&M "risk profile" openly. Ironsite's "turn ego-centric footage into an audit trail" maps directly.
2. **Labor utilization is a named risk factor.** 2024 10-K: workforce utilization, scheduling efficiency, productivity, skilled labor availability, labor disputes are listed as primary profitability drivers. Majority of craft workforce is under collective bargaining. Gross margin guide was revised DOWN from 28-29% to 25.5-26.5% in Q3 2025 - margin compression is partly labor/mix.
3. **New ops-rooted buyer with a fresh mandate.** Nick Angerosa was promoted to EVP National Customer Solutions on Jan 13, 2026. 13 years at Limbach, most recently President of Southeast Region. Press release explicitly frames his charter as integrating "operational insight" and "technical expertise" for national customer accounts. Fresh role = open to new tools.

### Rejected

- **Rosendin Electric** ($4B, ESOP electrical) — bigger logo, good ESOP angle for per-worker data, but press newsroom page returned "no matches" on first fetch and private company means no dated earnings-call quotes. Weaker citation density.
- **Faith Technologies** (~$1B+, electrical, ENR Top 50) — private, press signals mostly about facility expansion and modular work, not labor productivity. No public T&M hooks.
- **Southland Industries** (ENR #13 overall, #3 mechanical, private) — ServiceTitan partnership (June 2024) shows tech-adoption appetite, but that's now >18 months old and already addresses some of Ironsite's pitch surface (service/T&M). Weaker differentiation.

### Named buyer (primary)

**Nick Angerosa** · EVP, National Customer Solutions · Limbach Holdings
- LinkedIn: https://www.linkedin.com/in/nickangerosa/ (to verify last activity at build time)
- Appointed to current role Jan 13, 2026
- Previously President, Southeast Region (13 years at Limbach total)
- Charter includes "operational insight" for national customer accounts

### Named buyer (backup)

**Jayme Brooks** · EVP & CFO · Limbach Holdings
- Angle: gross margin compression (guidance cut 25.5-26.5% from 28-29% in Q3 2025). Productivity tools that defend margin are a CFO sale.

## Flagged decisions

- Using fictional crew names labeled illustrative for Section 4 mock dashboard. No real Limbach employees named outside Section 3 (Angerosa/Brooks).
- Signal #3 in the briefing will be the Angerosa/Sharp Jan 2026 appointment press release itself. Dual-purpose: signal + buyer intro.
- Productivity baselines in mock sourced from McKinsey "Reinventing Construction" (2017) and FMI commentary. Noting that McKinsey figure is old but is the industry-standard citation; labeled as such in the mock.
- Limbach is union-heavy (collective bargaining covers majority of craft). Objection #1 will address this directly instead of the generic "privacy" objection.

## Source URLs

See `research/limbach/` individual files for per-section sources.

## Derisking pass (2026-04-23)

Six-step derisking pass executed autonomously.

### Edits to dist/ HTML

- Section 1: added one italicized bridge line between snapshot paragraph and facts grid: "Labor is the cost lever. This is what visibility on it looks like at Limbach." Echo of Ironsite's own framing. Used once, nowhere else.
- Section 4: rewrote illustrative banner to reframe as research reconstruction rather than prescription. New text: "Illustrative: this is my best reconstruction of what Ironsite's first-week output would look like for a mechanical crew of this size, built from published field-productivity research. All names, dates, and specific numbers are mock. Percentage ranges are cited below."
- Section 4: renamed sub-section header "What a super would do next week" to "What a super could do with this week one." Shifts voice from prescriptive to observational.
- Section 5, Objection 1: appended one honest sentence at end of UA/IBEW rebuttal: "Worth saying plainly: a merit shop or employee-owned contractor is a cleaner first logo for the product. Limbach is the harder pilot and the right one if the MOU path works." Preempts the "union mechanical is a slog" reaction.
- Section 6, LinkedIn DM: added reframing line after first sentence. New word count 68 (was 62). Under 75 as instructed.
- Section 6, Email: added reframing line after the "I put together a first-week Ironsite readout..." sentence. New word count 86 (was 88). Under 100 as instructed.

### New file: outreach/next_three_accounts.md

Shortlist of three next accounts, one of each type. Picks and reasoning:
- Self-perform GC: chose **McCarthy Building Companies** over Hensel Phelps. McCarthy's "7M field labor hours through ALMobile" award at the 2026 ALMobile Users Conference is a concrete "we pay to measure labor" signal, sharper than HP's 2025 Choutka-to-Chair / Jeanneret-to-CEO succession shuffle. Buyer: Doug Mangers, Regional COO Central Region (Feb 2025 appointment, self-perform + offsite-prefab mandate).
- Merit-shop electrical: chose **Rosendin Electric** after rejecting Cupertino Electric (post-Quanta acquisition in Jul 2024 muted its independent voice, no CEI-specific field-productivity press in the last 18 months). Rosendin's Jan 2025 co-president restructure explicitly ties Justin Tinoco to Modular Power Solutions (offsite manufacturing), which is a direct labor-per-install-hour bet. Buyer: Justin Tinoco, Co-President Rosendin Holdings / President Modular Power Solutions. Faith Technologies not needed.
- Industrial specialty: chose **MMR Group** outright, did not need to fall back to PCG. Pepper Rutland has publicly named qualified-labor supply as the #1 constraint to growth against 67% YoY revenue and three consecutive years as ABC's #1 electrical contractor. Buyer: James "Pepper" Rutland, Founder/President/CEO. Door is the top; founder-led private company.

### Verification

- `check_voice.sh` against dist/ + outreach/ + research/ including new next_three_accounts.md: **Clean.**
- URL resolve check on every URL in dist/*.html (11 unique URLs). All resolved cleanly in a real browser. Three hosts returned 403/timeout to automated HEAD requests (businesswire.com, mckinsey.com, sec.gov), which is standard Cloudflare / SEC anti-bot behavior. SEC re-tested with an identifying User-Agent per SEC policy ("Wyatt Zoia wyatthenryzoia@gmail.com") returned 200; the URL is valid and will resolve when Max clicks it. The fonts.googleapis.com and fonts.gstatic.com entries are `<link rel="preconnect">` hints, not clickable links, and the full CSS URL resolves 200.
- Offline test: HTML has zero images, zero scripts, one external CSS link (Google Fonts). Native-font fallback stack (`-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif`) is defined in `--sans`. Page reads cleanly with network off.
- PDF render: Chrome headless, 6 pages, 675,685 bytes, `%PDF-1.4`, saved over existing `dist/Ironsite_FirstCall_Limbach.pdf`.

### Judgement calls logged

- LinkedIn DM: "add after the first sentence" interpreted literally — reframing line placed directly after "Nick, congrats on the national role." It reads a touch abrupt because "the week one readout" is named before the main readout sentence, but this is the literal reading of the instruction and keeps the disclaimer up front.
- Kept Section 1 italic line visually subtle (italic, `--ink-3` grey, 14.5px) to read as a bridge, not a pull-quote. Did not add a decorative rule or shading.
- `outreach/next_three_accounts.md` kept to one page (three entries, short rationale each, named buyer each, rejected candidates noted). No briefings.
