# TODO List CLI Application

A simple command-line TODO list application written in Python.

## Features

- ✅ Add new tasks
- ✅ List all tasks with status
- ✅ Mark tasks as complete
- ✅ Delete tasks
- ✅ Clear all tasks
- ✅ Persistent storage using JSON

## Requirements

- Python 3.6 or higher

## Usage

### Add a new task
```bash
python todo.py add "Buy groceries"
```

### List all tasks
```bash
python todo.py list
```

### Mark a task as complete
```bash
python todo.py complete 1
```

### Delete a task
```bash
python todo.py delete 1
```

### Clear all tasks
```bash
python todo.py clear
```

### Show help
```bash
python todo.py --help
```

## Example Output

```
📋 TODO List
----------------------------------------
  ✅ [1] Buy groceries
  ⬜ [2] Walk the dog
  ⬜ [3] Read a book
----------------------------------------
Total: 3 | Pending: 2 | Completed: 1
```

## Data Storage

Tasks are stored in a `tasks.json` file in the same directory as the script. The file is created automatically when you add your first task.