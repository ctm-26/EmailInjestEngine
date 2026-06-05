# EmailInjestEngine

A clean SwiftUI + SwiftData starter app for an email intelligence layer.

The goal is to turn inbox messages into structured local records:

- contact and company timelines
- receipts for a finance review queue
- active deals and coupon codes
- account/security notices
- medical/doctor message summaries that require review

> Note: The repo name uses `Injest` because that is the repository name provided. Internally, the app uses the concept name **Inbox Kernel**.

## Current status

This is an MVP framework. It does **not** connect to Gmail yet. It includes a mock provider that simulates incoming emails and writes structured records into SwiftData.

## Architecture

```text
InboundEmail
   ↓
EmailProvider
   ↓
EmailIngestionEngine
   ↓
EmailClassifier
   ↓
EntityResolver
   ↓
SwiftData records
   ↓
Dashboard / Entity Timeline / Review Queue
```

## How to run

1. Open `EmailInjestEngine.xcodeproj` in Xcode.
2. Select an iPhone simulator.
3. Build and run.
4. Open **Ingest Demo**.
5. Tap **Run Mock Ingest**.
6. Check **Dashboard**, **Entities**, and **Review Queue**.

## Safety defaults

The app begins as local-first and review-first:

- no auto-delete
- no auto-send
- no automatic finance ledger posting
- no medical interpretation beyond cautious summarization
- every extracted record keeps a source message ID
