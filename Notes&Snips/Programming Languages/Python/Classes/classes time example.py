print('\n\n/////****CLASSES_AND_FUNCTIONS****////')

print('\n\n/////TIME////')

class Time:
    """ Represents the time of day

    attributes: hour, minute, second
    """
    max_hour = 23

    def __init__(self,hour,minute,second):
        self.hour = hour
        self.minute = minute
        self.second = second

class Schedule(Time):
    pass
weekly = Schedule(1,1,1)

print(weekly.max_hour)


time = Time(1,2,3) # h m s
time2 = Time(4,2,3)

print(time.max_hour)

time.hour = 1
time.minute = 2
time.second = 3

def print_timex(t):
    print(str(t.hour) + ":" + str(t.minute) + ":" + str(t.second))

#hh:mm:ss

print_timex(time)

def print_time(t):
    print(f"{t.hour:02.0f}:{t.minute:02.0f}:{t.second:02.0f}")


def time_in_hours(x):
    s_to_h = x.second / 60 / 60
    m_to_h = x.minute / 60
    t_in_h = x.hour + s_to_h + m_to_h
    return(int(t_in_h))

def is_after(t1,t2):
    return(time_in_hours(t1) > time_in_hours(t2))

ta = Time(12,59,30)
ta.hour = 12
ta.minute = 59
ta.second = 30

tb = Time(11,59,30)
tb.hour = 11
tb.minute = 59
tb.second = 30

print(is_after(ta,tb))


print('\n\n/////PURE FUNCTIONS////')

def add_time(t1, t2): #pure function because does not modify objects sent to it
    sum = Time(
        t1.hour + t2.hour,
        t1.minute + t2.minute,
        t1.second + t2.second
        )


    if sum.second >= 60:
        sum.second -= 60
        sum.minute += 1

    if sum.minute >= 60:
        sum.minute -= 60
        sum.hour += 1
    return sum

start = Time(9,45,0)
start.hour = 9
start.minute = 45
start.second = 0

duration = Time(1,35,0)
duration.hour = 1
duration.minute = 35
duration.second = 0

done = add_time(start, duration)
print_time(done)

print('\n\n/////MODIFIERS////')


def increment(time, seconds):
    time.seconds += seconds

    if time.second >= 60:
        time.second -= 60
        time.minute += 1

    if time.minute >= 60:
        time.minute -= 60
        time.hour += 1

#///

def div_and_remainder(num, div): # this is divmod(num, div)
    divprod = num / div
    remainder = num % div
    clean_num = num - (num % div)
    clean_divprod = clean_num / div
    return (clean_divprod, remainder)

def seconds_to_hms(seconds_to_add):

    min_and_sec = div_and_remainder(seconds_to_add, 60)
    seconds = min_and_sec[1]
    minutes = min_and_sec[0]

    h_and_min = div_and_remainder(minutes, 60)
    minutes = h_and_min[1]
    hours = h_and_min[0]
    return(hours, seconds, minutes)

def time_to_seconds(time):
    minutes = time.hour * 60 + time.minute
    seconds = minutes * 60 + time.second
    return seconds



def increment(time,seconds):
    actual_time_in_seconds = time_to_seconds(time) + seconds
    hms = seconds_to_hms(actual_time_in_seconds)

    time.hour = hms[0]
    time.minute = hms[1]
    time.second = hms[2]

print_time(start)
increment(start,234187)
print_time(start)


print('\n\n/////DEBUGGING////')

def valid_time(time):
    if time.hour < 0 or time.minute < 0 or time.second < 0:
        return False
    if time.minute >= 60 or time.second >= 60:
        return False
    return True

bad_time = Time(21,90,30)
good_time = Time(21,40,20)

try:
    assert valid_time(bad_time)
except:
    print("this time is not valid")


print('\n\n/////PRINTING OBJECTS////')

def div_and_remainder(num, div): # this is divmod(num, div)
    divprod = num / div
    remainder = num % div
    clean_num = num - (num % div)
    clean_divprod = clean_num / div
    return (clean_divprod, remainder)

def seconds_to_hms(seconds):

    min_and_sec = div_and_remainder(seconds, 60)
    seconds = min_and_sec[1]
    minutes = min_and_sec[0]

    h_and_min = div_and_remainder(minutes, 60)
    minutes = h_and_min[1]
    hours = h_and_min[0]
    return(hours, minutes, seconds)



class Time:
    def __init__(self,hour=0,minute=0,second=0):
        self.hour = hour
        self.minute = minute
        self.second = second

    def __str__(self):
        return(f"{self.hour:02.0f}:{self.minute:02.0f}:{self.second:02.0f}")

    def __add__(self,time):
        seconds = self.time_to_seconds() + time.time_to_seconds()
        new_hms = seconds_to_hms(seconds)
        return Time(new_hms[0],new_hms[1],new_hms[2])

    def __lt__(self, other):
        if self.time_to_seconds() > other.time_to_seconds(): return False
        if self.time_to_seconds() < other.time_to_seconds(): return True


    #this print_time function is obsolete after def __str__
    def print_time(self):
        print(f"{self.hour:02.0f}:{self.minute:02.0f}:{self.second:02.0f}")

    def time_to_seconds(self):
        minutes = self.hour * 60 + self.minute
        time_in_seconds = minutes * 60 + self.second
        return time_in_seconds

    def time_in_hours(self):
        s_to_h = self.second / 60 / 60
        m_to_h = self.minute / 60
        t_in_h = self.hour + s_to_h + m_to_h
        return(t_in_h)

    def increment(self,seconds):
        actual_time_in_seconds = self.time_to_seconds() + seconds
        hms = seconds_to_hms(actual_time_in_seconds)

        self.hour = hms[0]
        self.minute = hms[1]
        self.second = hms[2]

    def is_after(self,time):
        if self.time_to_seconds() > time.time_to_seconds():
            return True
        else:
            return False


my_time = Time(9,30,0)

my_time.print_time()
print(my_time.time_in_hours())

print('\n\n/////ANOTHER EXAMPLE////')

my_time.increment(239)
my_time.print_time()


print('\n\n/////A MORE COMPLICATED EXAMPLE////')

end_time = Time(11,20,33)
before_time = Time(7,42,33)

print(my_time.is_after(end_time))
print(my_time.is_after(before_time))


print('\n\n/////THE INIT METHOD////')

# instead of having
#                 def __init__(self,hour,minute,second):
# we have
#                 def __init__(self,hour=0,minute=0,second=0):
#   the =0 makes the arguments optional

only_hour = Time(9)
only_hour.print_time()

print('\n\n/////THE __str__ METHOD////')

print(only_hour)
print(my_time)

print('\n\n/////OPERATOR OVERLOADING////')

# made the __add__ function

start = Time(9)
duration = Time(2,30,20)

print(start + duration)

print('\n\n/////TYPE-BASED DISPATCH////')

