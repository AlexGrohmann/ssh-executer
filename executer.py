import paramiko

# SSH connection details
hostname = "your_hostname"
port = 22
username = "your_username"
password = "your_password"
command = "ls -l"  # Example command to execute

# Establish SSH connection
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

try:
    ssh.connect(hostname, port, username, password)
    print("SSH connection established successfully.")

    # Execute command
    stdin, stdout, stderr = ssh.exec_command(command)

    # Read the output
    output = stdout.read().decode()
    error = stderr.read().decode()

    if output:
        print("Command output:")
        print(output)
    if error:
        print("Error:")
        print(error)

finally:
    # Close the SSH connection
    ssh.close()
