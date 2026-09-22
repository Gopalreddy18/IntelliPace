# 🎓 IntelliPace — AI-Enabled Student Learning Analytics & Performance Portal

[![Streamlit App](https://static.streamlit.io/badges/streamlit_badge_black_white.svg)](https://intellipace.streamlit.app)
[![GitHub Repository](https://img.shields.io/badge/GitHub-Repository-181717?style=flat&logo=github)](https://github.com/Gopalreddy18/IntelliPace)
[![Python Version](https://img.shields.io/badge/Python-3.11+-3776AB?style=flat&logo=python&logoColor=white)](https://www.python.org/)
[![Database](https://img.shields.io/badge/Database-Supabase%20PostgreSQL-3ECF8E?style=flat&logo=supabase&logoColor=white)](https://supabase.com/)
[![LLM Engine](https://img.shields.io/badge/LLM-Groq%20%7C%20LLaMA--3.3--70B-F55036?style=flat)](https://groq.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## 🌐 Live Demo

Experience the live interactive application directly in your web browser:

👉 **[Launch IntelliPace Live Demo on Streamlit Community Cloud](https://intellipace.streamlit.app)**

IntelliPace is hosted on Streamlit Community Cloud and backed by a Supabase cloud database alongside high-speed Groq AI inference. You can register an account, enroll in custom subjects, generate AI-tailored study modules, take automated quizzes, and inspect real-time visual progress analytics immediately without installing any software locally.

---

## 📖 About the Project

Modern education often leaves students overwhelmed with fragmented study materials, rigid curricula, and insufficient feedback on their personal learning velocity. **IntelliPace** is an end-to-end, AI-enabled educational companion engineered to solve these challenges. Built on top of Streamlit, Python, Supabase, and Groq's ultra-fast LLaMA-3.3-70B model, the portal adapts dynamically to each learner's unique strengths, target difficulties, and academic schedules.

Rather than offering static, one-size-fits-all textbooks, IntelliPace analyzes student performance continuously. It auto-generates contextual study plans, concise cheat sheets, curated video suggestions, and multi-format assignments, while maintaining an interactive dashboard with Plotly visual analytics. The platform bridges the gap between passive reading and active recall, empowering learners to study smarter, retain longer, and master complex subjects at their own pace.

---

## ✨ Comprehensive Features

### 🔐 Secure Identity & Session Management
User authentication is built with industry-standard bcrypt encryption to safeguard student profiles, credentials, and academic data. Students can create an account, log in securely across sessions using browser-persisted state, and manage personal preferences, academic goals, and account details in a dedicated profile management workspace.

### 📚 Adaptive Subject Enrollment
Learners can enroll in multiple academic subjects, specifying their current mastery level from Easy to Hard. This baseline enables the underlying AI services to calibrate the depth, vocabulary, and conceptual difficulty of all generated materials, preventing beginners from feeling intimidated while challenging advanced learners.

### 📖 Generative AI Learning Modules & Video Discovery
For every enrolled subject, IntelliPace synthesizes structured study modules broken down into conceptual overviews, fundamental principles, real-world examples, and key takeaways. Complementing the textual curriculum, the system dynamically curates topic-focused YouTube educational videos so auditory and visual learners can grasp difficult topics effortlessly.

### 📝 Diagnostic Quizzes & Immediate Explanations
Active recall is reinforced through on-demand, AI-generated multiple-choice quizzes linked directly to each module. Each submission produces immediate score breakdowns, detailed rationales explaining why choices are correct or incorrect, and updates the student's mastery records in the PostgreSQL database.

### 📋 Rapid-Revision AI Cheat Sheets
When preparing for exams or quick reviews, students can generate high-yield, one-page cheat sheets. These documents consolidate critical mathematical formulas, core concepts, edge cases, best practices, and common interview questions into a scannable format designed for retention and rapid revision.

### ✍️ Multi-Format AI Assignments & Assessments
To test deeper analytical comprehension, IntelliPace formulates diverse homework tasks spanning theoretical explanations, practical problem-solving scenarios, multiple-choice questions, and programming exercises. Students can submit solutions directly through the portal to receive systematic evaluations and personalized suggestions for improvement.

### 🗓️ Smart Weekly Study Planner
Balancing multiple deadlines is simplified through an automated scheduling engine. By factoring in remaining tasks, enrolled subjects, difficulty tiers, and student-specified available hours, the portal generates a balanced weekly timetable that prevents burnout and ensures consistent syllabus coverage.

### ✅ Integrated Task Manager
Students can track day-to-day academic deliverables with a streamlined task organizer. Each task includes status indicators, priority markers, and deadline tracking, allowing users to transition study milestones from pending to completed while feeding completion data directly into the progress analytics engine.

### 📈 Visual Analytics & Performance Dashboard
The central dashboard provides actionable visual insights powered by Plotly charts. Students and educators can inspect completion gauges, subject distribution charts, quiz score progression over time, and task productivity metrics, providing transparent feedback on academic growth and areas needing intervention.

---

## 🏗️ Architecture & Technical Workflow

IntelliPace is constructed using a decoupled, modular multi-tier architecture designed for maintainability and responsiveness.

The **Presentation Layer** is driven by Streamlit's reactive components with custom CSS styling, organized into dedicated view controllers for subjects, assignments, quizzes, and analytics. User interactions trigger asynchronous calls to the **Backend Business Layer**, which enforces validation, session consistency, and domain logic. 

When dynamic educational content is requested, the **AI Services Layer** formats prompt templates and queries the **Groq API** utilizing the `llama-3.3-70b-versatile` model, delivering near-instantaneous streaming inference. Finally, the **Data Persistence Layer** communicates with a **Supabase PostgreSQL** cloud instance through secure REST and SQL drivers, ensuring ACID-compliant transaction safety for student profiles, enrollments, quiz histories, and analytics metrics.

---

## 🛠️ Technology Stack

* **Frontend & UI Framework**: Streamlit (v1.30+) paired with custom theme styling and Extra Streamlit Components for state and cookie persistence.
* **Programming Language & Runtime**: Python 3.11+ providing type annotations, robust standard libraries, and clean module organization.
* **Database & Cloud Storage**: Supabase (PostgreSQL) hosted in the cloud with relational integrity, foreign key cascades, and automated indexing.
* **Artificial Intelligence Engine**: Groq Cloud running LLaMA-3.3-70B Versatile for high-speed, cost-effective natural language synthesis.
* **Data Visualization**: Plotly and Matplotlib delivering responsive radar charts, gauge meters, and timeline graphs.
* **Security & Encryption**: Bcrypt for cryptographic password hashing and Dotenv for zero-leak environment variable isolation.

---

## 💻 Local Installation & Setup

To run IntelliPace on your local machine, follow the instructions below:

### 1. Clone the GitHub Repository
Clone the repository using Git and navigate to the project directory:

```bash
git clone https://github.com/Gopalreddy18/IntelliPace.git
cd IntelliPace
```

### 2. Create and Activate a Python Virtual Environment
Isolate project dependencies by setting up a dedicated virtual environment:

```bash
# On Windows:
python -m venv venv
venv\Scripts\activate

# On macOS / Linux:
python3 -m venv venv
source venv/bin/activate
```

### 3. Install Required Dependencies
Install the required packages from `requirements.txt`:

```bash
pip install -r requirements.txt
```

### 4. Configure Environment Credentials
Duplicate the sample environment configuration file and provide your API credentials:

```bash
copy .env.example .env     # Windows
cp .env.example .env       # macOS / Linux
```

Open `.env` in any text editor and supply your Supabase and Groq keys:

```env
SUPABASE_URL="https://your-project.supabase.co"
SUPABASE_KEY="your-supabase-anon-key"
GROQ_API_KEY="your-groq-api-key"
GROQ_MODEL="llama-3.3-70b-versatile"
```

### 5. Initialize the Database Schema
Navigate to your Supabase project dashboard, open the **SQL Editor**, and execute the SQL definitions found in `database/schema.sql`. This initializes tables for users, subjects, modules, quizzes, tasks, assignments, and study plans.

### 6. Run the Application
Launch the portal using the Streamlit development server:

```bash
streamlit run app.py
```

The web application will open automatically in your default browser at `http://localhost:8501`.

---

## ☁️ Deploying to Streamlit Community Cloud

You can deploy your own instance of this repository to the cloud for free using Streamlit Community Cloud:

1. Visit [Streamlit Community Cloud](https://share.streamlit.io/) and sign in with your GitHub account.
2. Click **Create app** and select the repository `Gopalreddy18/IntelliPace`.
3. Select `main` as the branch and specify `app.py` as the main file path.
4. Click **Advanced settings**, select **Secrets**, and paste the key-value pairs from your `.env` file (such as `SUPABASE_URL`, `SUPABASE_KEY`, and `GROQ_API_KEY`).
5. Click **Deploy**. Your live web application will be live at `https://<your-custom-subdomain>.streamlit.app` within a few minutes.

---

## 🔮 Future Roadmap

Future iterations of IntelliPace will introduce expanded collaborative and mobile-friendly capabilities:

* **Spaced-Repetition Flashcard Engine**: Automated generation of Leitner-style active recall decks with difficulty scheduling.
* **Document & PDF Export**: Instant generation of downloadable PDF guides, cheat sheets, and study reports.
* **Interactive AI Voice & Chat Tutor**: Conversational real-time doubt solving powered by contextual vector retrieval (RAG).
* **Cross-Student Study Rooms & Leaderboards**: Gamified learning modules, collaborative quizzes, and cohort achievement badges.
* **Calendar Synchronization**: Bidirectional synchronization with Google Calendar and Outlook to automatically schedule study sessions.

---

## 📄 License

This project is licensed under the **MIT License**. You are free to inspect, modify, adapt, and distribute this software for educational and personal endeavors.

<p align="center">
  Crafted with ❤️ for students worldwide &bull; Powered by <b>IntelliPace</b>
</p>
