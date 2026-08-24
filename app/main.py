from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"status": "online", "message": "Pipeline active!"}

@app.get("/health")
def health_check():
    return {"health": "healthy"}