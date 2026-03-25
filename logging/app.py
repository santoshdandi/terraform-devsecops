import time
import random

log_file = "/var/log/myapp.log"

messages = [
    "User login success",
    "User login failed",
    "File downloaded",
    "Unauthorized access attempt",
    "Admin login",
    "Malware detected",
    "Connection timeout"
]

while True:
    with open(log_file, "a") as f:
        f.write(random.choice(messages) + "\n")
    time.sleep(5)