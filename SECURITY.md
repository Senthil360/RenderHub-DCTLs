# Security & Stability Policy

## Execution & Environment Security

RenderHub DCTLs (`.dctl` and `.dctle`) run directly within DaVinci Resolve’s native GPU compute engine (CUDA, Metal, OpenCL). 

* **No System Access:** DCTL scripts operate strictly within DaVinci Resolve's image-processing pipeline. They cannot execute OS commands, access local storage outside the host application, or make external network calls.
* **Sandboxed by Host:** Runtime security, GPU memory safety, and decryption are managed entirely by Blackmagic Design DaVinci Resolve.

---

## Supported Versions

Security and stability maintenance is prioritized for the following host and tool versions:

| Software / Tool | Supported Versions | Status |
| :--- | :--- | :--- |
| **DaVinci Resolve Studio** | 19.x, and newer | :white_check_mark: Supported |
| **DaVinci Resolve (Free)** | Any version | :x: Free version not supported |

---

## Verified Downloads & Authenticity

To protect your system from tampered or malicious distributions:
* Only download releases directly from this official GitHub repository or verified RenderHub distribution channels.
* Do not install `.dctle` binaries distributed through unverified third-party archives or re-upload sites.

---

## Reporting Stability Issues & Vulnerabilities

If you discover a script behavior that causes repeatable GPU crashes, kernel panics, or unhandled exceptions in DaVinci Resolve:

1. **Do not disclose crashing edge cases in public issues** if they contain sensitive client project data or logs.
2. Submit a private report via **GitHub Private Vulnerability Reporting** (Security tab > "Report a vulnerability") or **[Open Support Ticket](https://renderhub.in/support)**.
3. Please include:
   * DaVinci Resolve version & OS build.
   * GPU model and driver version.
   * Minimal reproducible steps or sample project settings.

We aim to review and respond to reports within 3–5 business days.
