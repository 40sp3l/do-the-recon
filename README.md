# do-the-recon
Automated, fast, and modular recon tool for bug bounty hunters and red teamers.

---

```md
---

## Features

- Subdomain enumeration using :
  - `subfinder`
  - `assetfinder`
  - `sublist3r`
-  Live host detection via `httpx-toolkit`
-  Wayback URL fetching with limit control
-  SSRF-prone parameter identification ( multi-threaded & filtered )
-  All results saved to `recon-<domain>/` for easy access

---

```

````

---

## Installation

Clone the repo:

```bash
git clone https://github.com/yourusername/do-the-recon.git
cd do-the-recon
````

Run the setup script :

```bash
chmod +x setup.sh
./setup.sh
```

This will install :

* All required tools : `subfinder`, `assetfinder`, `sublist3r`, `httpx-toolkit`
* `waybackurls` via Go
* Python dependencies : `pyfiglet`, `termcolor`

---

## Usage

Basic usage :

```bash
./do-the-recon.py -d target.com
```

Limit waybackurls scan / output ( default: 50 ):

```bash
./do-the-recon.py -d target.com -w 30
```

---


## Author

**40sp3l**
🔗 [GitHub](https://github.com/40sp3l) • [Twitter](https://twitter.com/40sp3l)

---

## Disclaimer

> This tool is intended for **educational and authorized testing purposes only**. Do not use it against systems without explicit permission.

```

