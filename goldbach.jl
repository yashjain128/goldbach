using Plots
theme(:dark)

n = 300

# Sieve for primes
pn = n*2
is_prime = trues(pn)
is_prime[1] = false

i = 2
while i^2<=pn
    for c in i*i:i:pn
        if is_prime[i]
            is_prime[c] = false
        end
    end
    i+=1
end

primes = scatter(is_prime)


# y = n±a   {y∈P and n,a∈N}
# O(n^2)

data_x = Vector{Int}()
data_y = Vector{Int}()

for n::Int in 1:1:n
    for a::Int in 0:1:x-1
        if is_prime[n-a] && is_prime[n+a]
            append!(data_x, [n, n])
            append!(data_y, [n-a, n+a])
        end
    end
end

fig2 = scatter(data_x, data_y, ms=0.25, mc="white")

plot(primes, fig2, layout=(2,1), dpi=1000)



