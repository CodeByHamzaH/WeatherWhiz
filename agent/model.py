# agent/model.py

from langchain_community.llms import Ollama

def load_model():
    return Ollama(model="gemma:3.2b")  # Ensure this model is pulled with `ollama pull gemma:3.2b`
