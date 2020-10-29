require 'pry'

def clock_angle(time)
    # 1:00 - 30d
    # 1:01 - 24d
    # 1:04 - 6d
    # 1:05 - 0d

    temp = time.tr(':', '')
    temp = temp.to_i
    if temp >= 1200
        temp -= 1200
    end

    #edge case - devide by 0
    if temp == 0
        return 0
    end

    hours = temp / 100
    minutes = temp - hours*100.0
    hour_extra = minutes / 2.0
    smallDegrees = (hours*30) + hour_extra 
    bigDegrees = minutes * 6

    if(bigDegrees > smallDegrees)
        return (360 + smallDegrees) - bigDegrees
    else 
        return smallDegrees - bigDegrees
    end
end
