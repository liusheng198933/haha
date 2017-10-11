import numpy as np
import matplotlib.pyplot as plt

# some fake data
data = np.random.normal(150, 50, 1000)
# evaluate the histogram
values, base = np.histogram(data, bins=40)
#evaluate the cumulative
cumulative = np.cumsum(values)
# plot the cumulative function
plt.plot(base[:-1], cumulative, c='blue')

plt.show()
