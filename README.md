# 🌤️ ClimaMind

ClimaMind is an AI-powered weather assistant built using [LangGraph](https://github.com/langchain-ai/langgraph), [LangChain](https://www.langchain.com/), and [Ollama](https://ollama.com/) running the lightweight **Gemma 3.2 1B** model. It provides real-time weather information for any city using the OpenWeatherMap API.

---

## 🚀 Features

- 🤖 AI Agent powered by LangGraph
- 🧠 Local LLM via Ollama (Gemma 3.2 1B)
- ☁️ Real-time weather data from OpenWeatherMap
- 🧰 Modular, clean architecture
- 🧪 Basic unit tests included

---

## 📁 Project Structure

```
climamind/
├── README.md
├── requirements.txt
├── .env                     # API keys, config
├── main.py                  # Entry point
├── config.py                # Config management
├── agent/
│   ├── __init__.py
│   ├── graph.py             # LangGraph logic
│   ├── weather_tool.py      # Weather tool using OpenWeatherMap
│   └── model.py             # Ollama + Gemma model setup
├── utils/
│   ├── logger.py            # Logging configuration
│   └── helpers.py           # Miscellaneous utilities
└── tests/
    ├── test_weather_tool.py
    └── test_graph.py
```

---

## 🧰 Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/climamind.git
cd climamind
```

### 2. Create a virtual environment

```bash
python3 -m venv .venv
source .venv/bin/activate
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Set up environment variables

Create a `.env` file in the project root:

```
OPENWEATHER_API_KEY=your_openweather_api_key_here
```

> Get your free API key from: https://openweathermap.org/api

### 5. Pull the Gemma model using Ollama

```bash
ollama pull gemma:3.2b
```

### 6. Run the project

```bash
python main.py
```

---

## 📬 License

MIT License. Free to use and modify.
