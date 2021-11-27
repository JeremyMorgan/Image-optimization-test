
import subprocess 



for x in range(10):
    subprocess = subprocess.Popen("curl -s -w '%{time_total}' -o /dev/null http://localhost:3000", shell=True, stdout=subprocess.PIPE)
    subprocess_return = subprocess.stdout.read()
    print(subprocess_return)

