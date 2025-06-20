import sys
import os
from fastapi.testclient import TestClient

# Set up path to import app from app/main.py
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from app.main import app

client = TestClient(app)

# ----- Test 1: /api/health returns status code 200 -----
def test_health_check_status_code():
    response = client.get("/api/health")
    assert response.status_code == 200

# ----- Test 2: /api/health response content -----
def test_health_check_response():
    response = client.get("/api/health")
    json_data = response.json()
    assert json_data["status"] == "healthy"
    assert "message" in json_data
    assert isinstance(json_data["message"], str)

# ----- Test 3: /api/message returns status code 200 -----
def test_message_status_code():
    response = client.get("/api/message")
    assert response.status_code == 200

# ----- Test 4: /api/message response content -----
def test_message_response():
    json_data = client.get("/api/message").json()
    assert "message" in json_data
    assert isinstance(json_data["message"], str)
