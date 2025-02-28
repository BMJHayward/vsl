module main

import math
import vsl.plot
// import vsl.util
// phi = (1 + np.sqrt(5) )/2. # golden ratio
// xe = [0, 1, 1+(1/(phi**4)), 1+(1/(phi**3)), phi]
// ye = [0, 1/(phi**3), 1/phi**3+1/phi**4, 1/(phi**2), 1]

phi := (1 + math.sqrt(5)) / 2.0
phi_pow_2 := math.pow(phi, 2.0)
phi_pow_3 := math.pow(phi, 3.0)
phi_pow_4 := math.pow(phi, 4.0)
xe := [0.0, 1.0, 1 + (1 / phi_pow_4), 1 + (1 / phi_pow_3), phi]
ye := [0.0, 1 / phi_pow_3, (1 / phi_pow_3) + (1 / phi_pow_4), 1 / phi_pow_2, 1]
z := [[13.0, 3, 3, 5], [13.0, 2, 1, 5], [13.0, 10, 11, 12], [13.0, 8, 8, 8]]

// TODO: Draw Spiral
// a := 1.120529
// b := 0.306349

// theta := util.lin_space(-math.pi/13, 4*math.pi, 1000)
// r := a*math.exp(-b*theta)
// x := r*math.cos(theta)
// y := r*math.sin(theta)

mut plt := plot.new_plot()

plt.add_trace(
	trace_type: .heatmap
	x: xe
	y: ye
	z: z
)
plt.set_layout(
	title: 'Heatmap with Unequal Block Sizes'
	width: 750
	height: 750
)

plt.show()!
