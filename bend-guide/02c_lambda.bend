# Bend has inline functions, like python's lambda functions

def main:
    mul_2 = lambda x: x * 2
    # may also be written as: mul_2 = λ x: x * 2 but λ is hard to type
    return mul_2(3)  # 6