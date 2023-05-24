from datetime import datetime

log_funct = print
def log(log_str):
    now = datetime.now()
    log_funct(now.strftime("%H:%M:%S\t%d/%m/%Y\t") + log_str)


class Logger:

    logs = ""
    def __init__(self, initial_log=""):
        now = datetime.now()
        self.logs = now.strftime("%H:%M:%S\t%d/%m/%Y\t") + initial_log + "\n"
        

    def log(self, string):
        now = datetime.now()
        self.logs += now.strftime("%H:%M:%S\t%d/%m/%Y\t") + string + "\n"


    def get_logs(self):
        return self.logs

