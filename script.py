import cv2

# Load the colored image
img = cv2.imread('colored_image.jpg')

# Convert it to grayscale
gray_img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# Save the grayscale image
cv2.imwrite('grayscale_image.jpg', gray_img)
