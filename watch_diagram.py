# watch_diagram.py
import time
import subprocess
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

class DiagramHandler(FileSystemEventHandler):
    def on_modified(self, event):
        if event.src_path.endswith("generate_diagram.py"):
            print("🔁 ファイル変更を検知、図を再生成します...")
            subprocess.run(["python", "generate_diagram.py"])

if __name__ == "__main__":
    path = "."  # カレントディレクトリを監視
    event_handler = DiagramHandler()
    observer = Observer()
    observer.schedule(event_handler, path=path, recursive=False)
    observer.start()
    print("👀 generate_diagram.py を監視中...")

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()