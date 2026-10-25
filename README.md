# BridgeHome

A native iOS application built with Swift and SwiftUI, designed to help individuals and families navigate the path toward stable housing with dignity, clarity, and calm.

---

## Design Direction: Apple Music, Simplified

BridgeHome takes inspiration from the restraint, proportion, and typographic confidence of Apple Music:

- **Typography First:** Large, confident San Francisco headings (`largeTitle`, `title2`), clear differences between headings and supporting text, and small amounts of muted secondary information.
- **Mandatory Whitespace:** Ample vertical breathing room (`28pt` section spacing) without walls of cards or nested containers.
- **Restrained Color Palette:** Clean white and warm off-white surfaces (`systemBackground`), deep black/gray text, subtle hairline dividers, and a single consistent Apple Music rose-crimson accent tint (`#E63954` / `#FF3B61`).
- **Natural Dark Mode:** Seamless, high-contrast dark mode using standard dynamic system colors.
- **Human & Dignified:** No gamification, no artificial streaks, no corporate dashboards, no SaaS metrics, and no tracking.

---

## Navigation & Architecture

The app is structured into four focused, native tabs:

1. **Today (`house.fill`):**
   - Single priority focus step for the day to avoid overwhelm.
   - Immediate 24/7 emergency hotline dispatch (Call 2-1-1).
   - Saved trusted resources for fast one-tap access.
2. **Guide (`map.fill`):**
   - 4-stage stabilization pathway:
     - **Stage 1: Immediate Safety** (Shelter, securing belongings, coordinated entry)
     - **Stage 2: Vital Documents** (State ID fee waivers, birth certificate, proof of income)
     - **Stage 3: Search & Vouchers** (Section 8 rules, voucher deadlines, rental scam protection)
     - **Stage 4: Move-In & Stability** (Lease review, deposit assistance, eviction prevention)
   - Step detail views with interactive checklists, legal rights callouts, and local notes.
3. **Resources (`building.2.fill`):**
   - Searchable directory of verified community resources (shelters, food pantries, legal aid, ID clinics).
   - Category filtering pills (Saved, All, Shelter, Meals, Legal Aid, Documents, Healthcare).
   - Direct one-tap phone calls and Apple Maps routing.
4. **Binder (`folder.fill`):**
   - Housing application document readiness checklist (State ID, SSN, income proof, bank records).
   - Step-by-step instructions on obtaining fee waivers and replacements.
   - Trusted contacts directory (caseworkers, housing navigators, advocates) with one-tap Call and SMS.

---

## Technical Stack & Quality

- **Language:** Swift 5.9+ / Swift 6
- **Framework:** SwiftUI (iOS 17.0+ deployment target)
- **State Management:** `@Observable` with local persistence (`UserDefaults` / JSON)
- **Privacy:** 100% on-device data storage; zero network tracking or external analytics.
- **Testing:** Comprehensive XCTest suite in `BridgeHomeTests` covering store persistence, step toggling, document tracking, and contact management.

### Building & Running

Generate and build the project using standard tools:

```bash
# Generate project with XcodeGen
xcodegen generate

# Run unit tests
xcodebuild test -scheme BridgeHome -destination 'platform=iOS Simulator,name=iPhone 16'

# Build app
xcodebuild -scheme BridgeHome -destination 'platform=iOS Simulator,name=iPhone 16' build
```
