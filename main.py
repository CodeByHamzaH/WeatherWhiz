# main.py

from agent.graph import weather_agent

if __name__ == "__main__":
    while True:
        user_input = input("Ask ClimaMind 🌤️: ")
        if user_input.lower() in ["exit", "quit"]:
            break
        response = weather_agent.invoke({"input": user_input})
        print(response.get("output"))
