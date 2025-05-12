# 📬 Risky Telegram [VORP]
A fully-featured Telegram system for VORP based RedM servers with an intuitive UI, Tebex support, and item export functionality. Built with extensibility and roleplay immersion in mind.

## ✨ Features
### UI Features
- **Inbox Tab:**
  - Filter between sent and received telegrams.
  - Search bar for quick filtering.
  - Tabular display with read status, sender's Telegram ID, and timestamps.
  - Telegrams can be:
    - Read
    - Exported as a physical item
    - Deleted from view
      
- **Compose Tab:**
  - Inputs for Title, Recipient, and Rich Text Editor for messages.
  - Rich text features:
    - Bold
    - Italic
    - Underline,
    - Strikethrough
    - Text Highlight
    - Heading Styles
    - Text Alignment

- **Directory Tab:**
  - Add or delete contacts.
  - Send telegrams directly from this page.

- **Extras Tab (Optional):**
  - Change your Telegram ID, integrated with Tebex purchase validation.

### Telegram Logic
  - Exported telegrams are permanent items — remain readable even if deleted from the post office.
  - Sent telegrams are viewable to sender even if deleted by the receiver and vice versa.
    
### Security:
  All operations are server-side protected.

## ⚙️ Configuration
  - Post Offices / Access Points:
    - Add locations and postal codes (shown on telegrams).
  - Send Pricing:
    - Set telegram sending costs and
  - Reserve special Telegram IDs like "POLICE" or "DOCTOR".
  - Telegram ID Generation:
    - Open-source logic provided. *Default ID is 6 characters (update both script and SQL if you modify this).*
  - Localization:
    - Fully translatable UI and system notifications via a translation file.
  - Monetary Logic:
    - Open-source implementation for:
      - Checking and Deducting money on send
      - Checking and Deducting money on export

## 📦 Dependencies
  - vorp_core
  - vorp_inventory
  - oxmysql

## 🚀 Installation

1. Import the SQL file from the `_install` folder into your database.
2. Add the telegram item image to your vorp_inventory.
3. Set config options to suit your server.
4. Add `ensure risky_telegram` to your server.cfg.

## 🎧 Support
For support or feature requests, feel free to open an issue or contact the developer.
