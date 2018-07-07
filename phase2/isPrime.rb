isPrime( x )
    if x < 2
        return false #2よりも小さい値の場合は素数ではない
    for i = 2 to x-1
        if x % i == 0
            return false #2から(対象の数-1)までの数で割り切れる場合は素数ではない
    return true #上記の条件に当てはまらない場合は素数である