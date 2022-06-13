using Printf

# Straight Julia implementation of the Java bytecount function.
# Outputs a nice, human-readable string representation of the 
# (input) number of bytes.
function bytecount(bytes::Integer, si::Bool = true)
    bytes < 0 && throw(ArgumentError("Negative inputs not allowed (was $bytes)"))
    unit = si ? 1000 : 1024
    if bytes < unit
        return string(bytes) * "B"
    end
    exp = floor(Int, log(bytes) / log(unit))
    pre = (si ? "kMGTPE" : "KMGTPE")[exp] * (si ? "" : "i")
    @sprintf("%.1f %sB", bytes / (unit^exp), pre)
end

using Test

@testset "bytecount" begin

@testset "normal, positive tests" begin
    @test bytecount(99) == "99B"
    @test bytecount(7865) == "7.9 kB"
    @test bytecount(Int(1e6)) == "1.0 MB"
    @test bytecount(Int(1e9)) == "1.0 GB"
end

@testset "negative tests" begin
    @test_throws ArgumentError bytecount(-100)
end

@testset "boundary value testing" begin
    @test_throws ArgumentError bytecount(-1)
    @test bytecount(0) == "0B"
    @test bytecount(1) == "1B"
    @test bytecount(999999) == "1000.0 kB" # Check with customer, seems wrong!
end

NumRepetitions = 100

@testset "random testing, parameterized unit tests" begin
    for _ in 1:NumRepetitions
        b = rand(1:999)
        @test bytecount(b) == "$(b)B"
    end

    for (low, high, suffix) in [(1000000, 1000499, "MB"), (1000000000, 1000000499, "GB")]
        for _ in 1:NumRepetitions
            b = rand(low:high)
            @test bytecount(b) == "1.0 " * suffix
        end
    end
end

end

# bit uniform random testing"
for _ in 1:NumRepetitions
    bits = rand(10:128)
    low, high = BigInt(1) << (bits-1), BigInt(1) << bits
    b = rand(low:high)
    try
        res = bytecount(b)
        m = match(r"(.)B$", res)
        if !occursin(m.captures[1], "kMGTPE")
            println("False for $b, output was $res")
        end
    catch err
        println("Error for $b, output was $err")
    end
end
