def analyze_logs(logs):
    log_count = len(logs)
    error_count = 0
    warning_count = 0
    info_count = 0

    for log in logs:
        if 'ERROR' in log:
            error_count += 1
        elif 'WARNING' in log:
            warning_count += 1
        elif 'INFO' in log:
            info_count += 1

    print("Log Analysis Report")
    print("-------------------")
    print(f"Total logs: {log_count}")
    print(f"Error logs: {error_count}")
    print(f"Warning logs: {warning_count}")
    print(f"Info logs: {info_count}")

# Example usage:
logs = [
    "INFO: User logged in",
    "ERROR: Invalid input",
    "INFO: Application started",
    "WARNING: Disk space low",
    "ERROR: Connection failed"
]

analyze_logs(logs)
