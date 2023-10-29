from flask import Flask, request, render_template
import cv2

app = Flask(__name)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        # Process the uploaded image using your script
        uploaded_file = request.files['file']
        # Run your image processing logic here
        # ...

        # Return the processed image or display it in the HTML template
        return render_template('result.html', processed_image=processed_image)

    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)
