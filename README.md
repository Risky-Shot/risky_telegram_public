# 📬 Risky Telegram [VORP]
A fully-featured Telegram system for VORP based RedM servers with an intuitive UI, Tebex support, and item export functionality. Built with extensibility and roleplay immersion in mind.

### Purchase Link : [**Buy**](https://riskyshot-developments.tebex.io/package/telegram)

## Showcase
<details>
  <Summary>View Screenshots</Summary>
  
  ### Telegrams Tab
  ![{993159F6-8756-496F-9B21-CCC5B925E30D}](https://github.com/user-attachments/assets/d1546d27-e518-4a8e-b262-3afe98f77961)

  ### Compose Tab
  ![{8A05C7C3-A9A7-4A34-A99D-9098E57114C4}](https://github.com/user-attachments/assets/bb605806-a784-478d-9808-c557a44bbd5a)

  ### Directory Tab
  ![{A4E7429D-CE0F-4870-B4C1-FFF549474D9A}](https://github.com/user-attachments/assets/edc50100-f320-4288-ba3e-c5176af10601)
  ![{E6153873-5F90-441D-852F-7A119DFE5600}](https://github.com/user-attachments/assets/12691ad6-0b9d-4944-878e-4167ee71a7cb)

  ### Extras Tab
  ![{FE8FB96E-A52D-44C9-9C3B-A5AF2EE6B66D}](https://github.com/user-attachments/assets/4e39b148-2be5-4b61-adb5-0b106b23dca9)

  ### Item Telegram
  ![{B25FE2EB-2446-48DB-BD84-86CEA96AA722}](https://github.com/user-attachments/assets/376aeb86-fd44-4178-81f3-7b8d9ab2798d)

</details>

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

## 🔮 Roadmap
- [] Discord Webhook For Logging
- [] Share and Job Specific Telegrams
