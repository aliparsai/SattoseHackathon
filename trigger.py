import uuid
import subprocess

randomStatement = uuid.uuid4().hex
with open("triggerfile", "w") as triggerFile:
  triggerFile.write(randomStatement)

subprocess.call(["git", "add", "./triggerfile"])
subprocess.call(["git", "commit", "-m", "\"triggercommit-"+randomStatement+"\""])
subprocess.call(["git", "push", "origin", "master"])



