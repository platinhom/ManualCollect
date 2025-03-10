import numpy as np
from scipy import signal, misc
import matplotlib.pyplot as plt

image = misc.lena().astype(np.float32)
derfilt = np.array([1.0, -2, 1.0], dtype=np.float32)
ck = signal.cspline2d(image, 8.0)
deriv = (signal.sepfir2d(ck, derfilt, [1]) +
         signal.sepfir2d(ck, [1], derfilt))

# Alternatively we could have done::

# laplacian = np.array([[0,1,0], [1,-4,1], [0,1,0]], dtype=np.float32)
# deriv2 = signal.convolve2d(ck,laplacian,mode='same',boundary='symm')

plt.figure()
plt.imshow(image)
plt.gray()
plt.title('Original image')
plt.show()

plt.figure()
plt.imshow(deriv)
plt.gray()
plt.title('Output of spline edge filter')
plt.show()
