# 再帰処理  関数の中でその関数自身を呼び出す処理
def factorial(n)
    return 1 if n == 0
    n * factorial(n - 1) # 関数の中で自身を呼び出している
end

p factorial(5)