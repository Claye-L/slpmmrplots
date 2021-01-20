### A Pluto.jl notebook ###
# v0.12.15

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 53142590-5b2c-11eb-280a-3fa47c8e5adb
begin
	using Plots;
	using Distributions;
	using StatsPlots;
end

# ╔═╡ 727caee0-5b2a-11eb-02f9-15f3742a957e
begin
	import Pkg; 
	Pkg.add("Plots");
	Pkg.add("Distributions");
	Pkg.add("StatsPlots");
end

# ╔═╡ 33ea0c30-5b2b-11eb-276b-dd82757b679e
mmrrange = [(0,200), (250,200), (400,210), (500, 225), (600,250), (750,300), (1000,400), (1250,600), (1400, 1000), (1500,1200), (1750,1500), (2000,1500),(2250,1500),(2500,1500),(2750,1500),(3000,1500)]

# ╔═╡ 218ba2a0-5b2c-11eb-1d01-772ae2dda87f
distrib = Normal(1500,600)

# ╔═╡ af273600-5b3c-11eb-0126-07f745b6f0e7
@bind currentmmr html"<input type=range min=0 max=3000>"

# ╔═╡ f237d800-5b41-11eb-3ff8-f3275717060e
currentmmr

# ╔═╡ 753b93e0-5b42-11eb-0079-516ccba652eb
maxmmrsearch = first(filter(x -> x[1] >= currentmmr, mmrrange))

# ╔═╡ da5b2e70-5b42-11eb-3ca4-676f3cab0c9e
matchable = filter(x -> x[1]-x[2] <= currentmmr && currentmmr <= x[1] + x[2] && maxmmrsearch[1] + maxmmrsearch[2] >= x[1] + x[2], mmrrange)

# ╔═╡ feb3e330-5b2d-11eb-2ae5-d5644ac1c838
begin
	
	#find min and max matchable mmr
	
	matchablemin = first(matchable)[1]
	matchablemax = last(matchable)
	
	
	
	p = plot(distrib,fill=(0, .7,:red))
	plot!([maxmmrsearch[1] - maxmmrsearch[2], matchablemin], [0.0007, 0.0007], fill=(0,0.5,:blue))
	plot!([matchablemin, matchablemax[1] + matchablemax[2]],[0.0007,0.0007],fill=(0, 0.9,:white))
	plot!([currentmmr - 25, currentmmr + 25], [0.0007,0.0007], fill=(0,0,:black))
end

# ╔═╡ 65763142-5b2e-11eb-1a52-51e0731b2d75
png(raw"C:\Users\Claye_L\Pictures\Saved Pictures\plot7.png")

# ╔═╡ Cell order:
# ╠═727caee0-5b2a-11eb-02f9-15f3742a957e
# ╠═53142590-5b2c-11eb-280a-3fa47c8e5adb
# ╠═33ea0c30-5b2b-11eb-276b-dd82757b679e
# ╠═218ba2a0-5b2c-11eb-1d01-772ae2dda87f
# ╠═af273600-5b3c-11eb-0126-07f745b6f0e7
# ╠═f237d800-5b41-11eb-3ff8-f3275717060e
# ╠═753b93e0-5b42-11eb-0079-516ccba652eb
# ╠═da5b2e70-5b42-11eb-3ca4-676f3cab0c9e
# ╠═feb3e330-5b2d-11eb-2ae5-d5644ac1c838
# ╠═65763142-5b2e-11eb-1a52-51e0731b2d75
