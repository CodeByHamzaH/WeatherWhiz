# agent/graph.py

from langgraph.graph import StateGraph, END
from langchain.tools import tool
from langchain_core.runnables import RunnableLambda
from agent.weather_tool import get_weather
from agent.model import load_model

@tool
def weather_lookup(city: str) -> str:
    """Returns the current weather for the given city."""
    return get_weather(city)

llm = load_model()

def query_llm(state):
    user_input = state["input"]
    return {"output": llm.invoke(user_input)}

def entry_node(state):
    return {"input": state["input"]}

graph = StateGraph()

graph.add_node("entry", RunnableLambda(entry_node))
graph.add_node("llm_response", RunnableLambda(query_llm))

graph.set_entry_point("entry")
graph.add_edge("entry", "llm_response")
graph.add_edge("llm_response", END)

weather_agent = graph.compile()
