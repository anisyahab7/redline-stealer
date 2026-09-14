# redline-stealer

> infostealer · logs · ioc

[![.NET 10](https://img.shields.io/badge/.NET-10.0-512BD4)](https://dot.net)
[![Stealer](https://img.shields.io/badge/type-stealer-red)]()
[![Infostealer](https://img.shields.io/badge/family-infostealer-orange)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

RedLine stealer layout for malware analysis — browser grab modules, log schema, IOC examples.

SOC analysts search redline-stealer directly.

Lab / research build. All I/O is simulated — no live data exfiltration in default configuration.

---

## Target coverage

### Browsers — Chromium

Google Chrome, Microsoft Edge, Brave, Opera, Opera GX, Vivaldi, Yandex Browser, Chromium,
Epic Privacy Browser, CentBrowser, 7Star, Iridium, Comodo Dragon, Torch, Amigo, Sputnik, Slimjet.

Collected: cookies, saved logins, autofill, credit cards, bookmarks, history, extension list.

### Browsers — Gecko

Mozilla Firefox, Waterfox, Pale Moon, LibreWolf, Thunderbird.

Collected: cookies, logins.json / key4.db, bookmarks, history.

### Crypto wallets

Desktop: Exodus, Electrum, Atomic, Jaxx, Coinomi, Guarda, Wasabi, Bitcoin Core, Litecoin Core,
Dash Core, Monero GUI, Ledger Live, Binance Desktop.

Extensions: MetaMask, Phantom, Ronin, Coinbase Wallet, Trust Wallet, TronLink, Solflare, Keplr, Rabby, OKX.

### Messengers

Discord (+ Canary, PTB), Telegram Desktop, Signal, Skype, Slack, Microsoft Teams, Element.

### System

Hostname, username, OS, HWID, locale, timezone, screen resolution, installed software, process list.

---

## Build

```bash
dotnet restore redline-stealer.slnx
dotnet build redline-stealer.slnx -c Release
dotnet test redline-stealer.slnx -c Release
```

## CLI

```bash
dotnet run --project src/redline-stealer.Agent -- harvest
dotnet run --project src/redline-stealer.Agent -- scan
dotnet run --project src/redline-stealer.Agent -- status
dotnet run --project src/redline-stealer.Agent -- anti
```

| Command | Description |
|---------|-------------|
| `harvest` | Run full grab pipeline (lab mode) |
| `scan` | Enumerate all target paths |
| `status` | Print system fingerprint |
| `anti` | Run anti-analysis checks |

## Project structure

```
redline-stealer/
├── src/
│   ├── redline-stealer.Grabber/
│   │   ├── Grabbers/        # browser, wallet, messenger, system
│   │   ├── Parsers/         # chromium, gecko, cookie decryptor
│   │   ├── Exfil/           # log builder, zip packer, fingerprint
│   │   └── Core/            # pipeline orchestrator, anti-analysis
│   └── redline-stealer.Agent/        # CLI entry point
└── tests/
    └── redline-stealer.Grabber.Tests/
```

## Anti-analysis checks

Sandbox username list, VM process detection, debugger attach, low-resource machine, fresh boot (uptime < 2 min).

## IOC reference

All file paths, registry keys, and token formats documented in source code for SOC/IR training.

## License

MIT — Copyright (c) 2026


---

## Topics

![redline](https://img.shields.io/badge/redline-111827?style=flat-square) ![stealer](https://img.shields.io/badge/stealer-111827?style=flat-square) ![infostealer](https://img.shields.io/badge/infostealer-111827?style=flat-square) ![malware](https://img.shields.io/badge/malware-111827?style=flat-square) ![malware-analysis](https://img.shields.io/badge/malware%20analysis-111827?style=flat-square) ![security-research](https://img.shields.io/badge/security%20research-111827?style=flat-square) ![threat-intelligence](https://img.shields.io/badge/threat%20intelligence-111827?style=flat-square) ![ioc](https://img.shields.io/badge/ioc-111827?style=flat-square)

`redline` `stealer` `infostealer` `malware` `malware-analysis` `security-research` `threat-intelligence` `ioc` `credential-harvesting` `reverse-engineering` `csharp`

Search: redline-stealer · infostealer · logs · ioc · RedLine stealer analysis — browser grabber, crypto wallet paths, IOC reference

---

<sub>RedLine stealer analysis — browser grabber, crypto wallet paths, IOC reference</sub>
