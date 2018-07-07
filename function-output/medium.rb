#最大値を見つける関数
def biggest(a, b, c)
 if a > b 
    if a > c
        return a
    else
        return c
    end
 else
    if b > c 
        return b
    else
        return c
    end
 end
end


# 最小値をみつけ、最小値でなかった方を返却する
def smallest(a,b,c)
 if a > b 
    if b > c
        return c
    else
        return b
    end
 else
    if a > c 
        return c
    else
        return a
    end
 end
end

def median(a, b, c)
    # 最大値を代入する
    biggest_number = biggest(a, b, c)

    # 最小値をみつけ、最小値でなかった方を返却する
    smallest_number = smallest(a, b, c)

    if biggest_number==a && smallest_number==b 
        return c
    elsif biggest_number==a && smallest_number==c
        return b
    elsif biggest_number==b && smallest_number==c
        return a    
    elsif biggest_number==b && smallest_number==a
        return c        
    elsif biggest_number==c && smallest_number==b
        return a
    else
        return b
    end
end 

puts(median(5,7,2))
puts(median(7,3,2))
puts(median(1,4,2))
