class DateTime:

    day_duration = 24 * 3600
    hour_duration = 3600
    minute_duration = 60

    def __init__(self, day, hour, minute, second):
        self.day = day
        self.hour = hour
        self.minute = minute
        self.second = second

    def convert_to_seconds(self) -> int:
        total_seconds = 0
        total_seconds += self.day * 24 * 3600
        total_seconds += self.hour * 3600
        total_seconds += self.minute * 60
        total_seconds += self.second
        return total_seconds

    def __sub__(self, other):
        t1 = self.convert_to_seconds()
        t2 = other.convert_to_seconds()
        seconds = t1 - t2
        date = DateTime(0, 0, 0, 0)

        if (seconds > self.day_duration):
            day = seconds // self.day_duration
            seconds = seconds - day * self.day_duration
            date.day = day
        if (seconds > self.hour_duration):
            hour = seconds // self.hour_duration
            seconds = seconds - hour * self.hour_duration
            date.hour = hour
        if (seconds > self.minute_duration):
            minute = seconds // self.minute_duration
            seconds = seconds - minute * self.minute_duration
            date.minute = minute

        date.second = seconds

        if (date.second == 60):
            date.second = 0
            date.minute += 1
        if (date.minute == 60):
            date.minute = 0
            date.hour += 1
        if (date.hour == 24):
            date.hour = 0
            date.day += 1

        return date

def read_and_parse_input() -> DateTime:
    input_line_1 = input()
    input_list_1 = input_line_1.split(' ')
    day = int(input_list_1[1])

    input_line_2 = input()
    input_list_2 = input_line_2.split(' : ')
    hour = int(input_list_2[0])
    minute = int(input_list_2[1])
    second = int(input_list_2[2])

    return DateTime(day, hour, minute, second)

d1 = read_and_parse_input()
d2 = read_and_parse_input()

d3 = d2 - d1

print(f"{d3.day} dia(s)")
print(f"{d3.hour} hora(s)")
print(f"{d3.minute} minuto(s)")
print(f"{d3.second} segundo(s)")
