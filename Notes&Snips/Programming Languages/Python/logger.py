class Logger(object):
    """
    A file based singleton message logger

    Attributes:
        file_name: a string representing the full path of the log file
        to which this logger will write its messages.

    To use:
        from logger import Logger
        logger_object = Logger(path)
        logger_object.info("this is FYI")
    """

    class __Logger():
        def __init__(self, file_name):
            """Return a Logger object whose file_name is *file_name*"""
            self.file_name = file_name

        def _write_log(self, level, msg):
            """
                Write a message to the file_name for a specific
                Logger instance
            """
            with open(self.file_name, "a") as log_file:
                log_file.write(f"[{level}] {msg}\n")

        def critical(self, msg):
            self._write_log("CRITICAL", msg)

        def error(self, msg):
            self._write_log("ERROR", msg)

        def warn(self, msg):
            self._write_log("WARN", msg)

        def info(self, msg):
            self._write_log("INFO", msg)

        def debug(self, msg):
            self._write_log("DEBUG", msg)

    instance = None

    def __new__(cls, file_name):
        if not Logger.instance:
            Logger.instance = Logger.__Logger(file_name)

        return Logger.instance

    def __getattr__(self, name):
        return getattr(self.instance, name)

    def __setattr__(self, name):
        return setattr(self.instance, name)
