# 💕 Sedie — Your Personal AI Assistant

Sedie is a local, offline-first personal AI assistant built with JavaFX, SQLite, and Ollama. She lives on your laptop, remembers everything you tell her, and never sends your data anywhere.

Built for personal use. No cloud. No subscriptions. No accounts.

## Features

| Feature | Description |
|---------|-------------|
| AI Chat | Talk to Sedie naturally using a local LLM (Ollama) |
| Memory | Remembers what you tell her across sessions |
| Profile | Stores your name, age, hobbies, personality, etc. |
| Tasks | Add tasks with natural language (e.g. "call mom tomorrow at 7pm") |
| Reminders | Rings every minute until you click STOP |
| Recurring Tasks | Daily, weekly, and monthly reminders |
| File Search | Find files across your Documents, Desktop, and Downloads |
| History | Keeps the last 2 conversations automatically |
| Photos | Send images directly in chat |
| Local Database | SQLite — everything stays on your machine |

## How to Run Sedie

There are two ways. Pick the one that fits you.

### Option A — For Regular Users (Recommended)

You need: Windows 10 or 11, plus Java 21 or newer.

Step 1 — Install Java
- Download from adoptium.net and pick JDK 21 (LTS), Windows x64 installer
- Run the installer and click Next through everything
- Open Command Prompt and type java -version. You should see "21.x.x"

Step 2 — Download Sedie
- Go to the Releases page on this GitHub repo
- Download Sedie-1.0.0-Windows.zip
- Unzip it anywhere, for example D:\Sedie-Portable\

Step 3 — Run Sedie
- Double-click Sedie.bat
- Sedie opens.

Step 4 — Optional: Enable AI Chat

Sedie works without AI, but the chat is only "smart" when Ollama is running.

1. Download Ollama from ollama.com/download
2. Install it. It runs silently in the background.
3. Open PowerShell and run: ollama pull llama3.2:3b
   This is a one-time 2 GB download.
4. Restart Sedie. AI chat is now live.

### Option B — For Developers (Build from Source)

You need: JDK 21+ and Maven.

git clone https://github.com/srujan214/Sedie-Personal-AI-Assistant-JavaFX-ollama-.git
cd Sedie-Personal-AI-Assistant-JavaFX-ollama-
mvn clean javafx:run

To build a portable version:

mvn clean package

Then create a Sedie.bat file inside the target folder with these lines:

@echo off
cd /d "%~dp0"
java -cp "sedie-desktop-1.0.0.jar;libs/*" com.sedie.Launcher
if errorlevel 1 pause

## How to Use Sedie

Once open, just type in the chat box. Here are some examples.

### Talk to her
hello
how are you
i love you

### Save personal info
my name is Srujan
i'm 21 years old
my hobby is chess
i'm introvert
my birthday is 15 August

### Add tasks
add task finish project
remind me in 30 minutes to study
add task call mom tomorrow at 7pm
remind me every morning from tomorrow for AICTE activity

### Search files
find file resume
find file project report

### Manage memory
remember I want to learn Spring Boot
what do you remember

### Manage tasks
show my tasks
mark task 1 done

## Screenshots

Add 2 or 3 screenshots of your app here by dragging and dropping them into the GitHub editor.

## Tech Stack

| Layer | Technology |
|-------|------------|
| Language | Java 21 |
| UI Framework | JavaFX 21 |
| Database | SQLite via sqlite-jdbc |
| AI Engine | Ollama (local LLM) |
| Build Tool | Maven |
| Packaging | jpackage and manual fat-jar |

## Project Structure

sedie-desktop/
├── src/main/java/com/sedie/
│   ├── ai/           # Ollama HTTP client
│   ├── files/        # File search
│   ├── history/      # Conversation storage
│   ├── memory/       # Long-term memory
│   ├── notify/       # Reminder popups
│   ├── profile/      # User profile
│   ├── scheduler/    # Reminder scheduler
│   ├── tasks/        # Task manager
│   ├── ui/           # JavaFX views
│   ├── Launcher.java # Main entry point
│   └── SedieApp.java # Application class
├── src/main/resources/styles/style.css
└── pom.xml

## Notes

- Sedie is designed for a single user. All data is stored in sedie.db on your machine.
- AI features require Ollama to be installed and running.
- No internet is required once Ollama and the model are downloaded.
- Your data never leaves your computer.

## License

Personal project. Free to use, modify, and learn from. Attribution appreciated.

## Credits

Built with love by Srujan.

Powered by Ollama (ollama.com), JavaFX (openjfx.io), and SQLite (sqlite.org).
