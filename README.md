# ⚡ GameNet Packet Loss Tracker & Auto-Repair Engine

A native desktop background application that continuously monitors packet loss, isolates root causes across network hops (Wi-Fi vs ISP vs Game Server), and provides **automated one-click network optimization fixes**. Built for **Computer Networks (CN)** laboratory evaluation and faculty viva defense.

---

## 🚀 How to Run the Application

### Option 1: Standard Desktop Runner (One-Click)
Double-click:
```cmd
run_tracker.bat
```
This immediately launches the native desktop HUD window. It runs smoothly in the background, tracks packet loss in real-time, and lets you apply fixes anytime.

### Option 2: Run as Administrator (For Full System-Level Fixes)
Right-click and select **"Run as Administrator"**:
```cmd
run_tracker_admin.bat
```
*(Running as Administrator allows the tool to modify persistent Windows network adapter settings like MTU, Winsock resets, and DNS changes).*

---

## 🌟 Key Features

1. **Continuous Real-Time Packet Loss Tracking:**
   - Real-time and cumulative Packet Loss Rate (%).
   - Color-coded HUD (🟢 0% Normal, 🟡 1-3% Warning, 🔴 >5% Critical Loss).
   - Round-trip ping latency (ms) and **RFC 3550 Interarrival Jitter (ms)**.
   - Total packets transmitted vs packets lost counter.
2. **Multi-Hop Root-Cause Isolation:**
   - **Hop 1: Local Gateway (`192.168.1.1`):** Identifies local Wi-Fi interference or router congestion.
   - **Hop 2: Public Anycast DNS (`1.1.1.1`):** Identifies ISP fiber gateway or routing issues.
   - **Hop 3: Game Cluster (`162.254.192.1`):** Identifies remote server transit congestion and bufferbloat.
3. **One-Click Automated Fixes & Optimizations:**
   - ⚡ **AUTO-FIX ALL ISSUES (Recommended):** Runs the full automated remediation pipeline and resets counters.
   - 📏 **Discover & Tune Optimal MTU:** Automatically tests Path MTU with the Don't-Fragment (DF) flag, discovers unfragmented MTU (e.g., 1492 for PPPoE vs 1500), and configures the adapter!
   - 🧹 **Flush DNS & Reset Winsock:** Clears corrupt resolver caches (`ipconfig /flushdns`) and resets the Windows socket catalog (`netsh winsock reset`).
   - 🚀 **Optimize TCP for Gaming:** Enables TCP Receive Window Auto-Tuning and Receive-Side Scaling (RSS) to eliminate CPU core queue bottlenecks.
   - 🌐 **Set Fast Gaming DNS:** Configures low-latency Anycast DNS (Cloudflare `1.1.1.1` & `1.0.0.1`).
   - 🔄 **Release & Renew IP:** Flushes the ARP cache and re-negotiates DHCP IP leases.
4. **Live Diagnostic Event Log:**
   - Displays real-time probe events, warnings when packet drops occur, and detailed execution logs for all applied fixes.

---

## 📚 Viva Preparation & Academic Notes
- Read **[VIVA_PREPARATION_NOTES.md](file:///c:/Users/rajsh/Desktop/cn%20project/VIVA_PREPARATION_NOTES.md)**: Contains 35+ faculty questions & model answers, textbook-accurate CN theory on packet loss, Path MTU discovery, TCP flow/congestion control, and formula reference.
- Read **[PROJECT_REPORT.md](file:///c:/Users/rajsh/Desktop/cn%20project/PROJECT_REPORT.md)**: Academic project report ready for submission to your Computer Networks faculty.

---

## 📁 Project Structure

```
cn project/
├── gamenet_loss_tracker.py    # Native Tkinter desktop packet loss tracker & auto-repair engine
├── run_tracker.bat            # One-click launcher for the desktop application
├── run_tracker_admin.bat      # Elevated administrator launcher for full network tuning
├── VIVA_PREPARATION_NOTES.md  # Comprehensive CN Theory & 35+ Viva Questions & Answers
├── PROJECT_REPORT.md          # Full academic project report for faculty submission
└── README.md                  # Project documentation & usage guide
```
