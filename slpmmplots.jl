### A Pluto.jl notebook ###
# v0.12.18

using Markdown
using InteractiveUtils

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
mmrrange = [(0,200), (250,200), (500, 225), (750,300), (1000,400), (1250,600), (1500,1200), (1750,1500), (2000,1500),(2250,1500),(2500,1500),(2750,1500),(3000,1500)]

# ╔═╡ 218ba2a0-5b2c-11eb-1d01-772ae2dda87f
distrib = Normal(1500,600)

# ╔═╡ feb3e330-5b2d-11eb-2ae5-d5644ac1c838
begin
	p = plot(distrib,fill=(0, .5,:orange))
	plot!([250,750],[0.0007,0.0007],fill=(0, 0.5,:white))
end

# ╔═╡ 65763142-5b2e-11eb-1a52-51e0731b2d75


# ╔═╡ Cell order:
# ╠═727caee0-5b2a-11eb-02f9-15f3742a957e
# ╠═53142590-5b2c-11eb-280a-3fa47c8e5adb
# ╠═33ea0c30-5b2b-11eb-276b-dd82757b679e
# ╠═218ba2a0-5b2c-11eb-1d01-772ae2dda87f
# ╠═feb3e330-5b2d-11eb-2ae5-d5644ac1c838
# ╠═65763142-5b2e-11eb-1a52-51e0731b2d75
