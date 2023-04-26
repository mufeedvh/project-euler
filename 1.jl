function sum_naive(N::Int)
    sum = 0
    for i in 1:(N-1)
        if i % 3 == 0 || i % 5 == 0
            sum += i
        end
    end
    return sum
end

function sum_optimal(N::Int)
    N = N - 1
    function sequence_sum(N::Int, K::Int)
        d = N ÷ K
        return K * (d * (d + 1)) ÷ 2
    end    
    return sequence_sum(N, 3) + sequence_sum(N, 5) - sequence_sum(N, 15)
end

println(sum_naive(1000))
println(sum_optimal(1000))