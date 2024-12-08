from fastapi import FastAPI

app = FastAPI()

# Root route
@app.get("/")
def read_root():
  return {"message": "Welcome to CheckInstont!"}


@app.get("/api/status")
def check_status():
  return {"status": "Ok"}

# Root route
@app.get("/api/health")
def check_health():
  return {"health": "Ok"}

# Example route with a query parameter
@app.get("/api/items/")
def read_item(skip: int = 0, limit: int = 10):
    return {"skip": skip, "limit": limit}