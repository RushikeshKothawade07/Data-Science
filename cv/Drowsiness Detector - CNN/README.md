# Drowsiness Detection Project - CNN

This project is aimed at detecting drowsiness in individuals using computer vision techniques. It utilizes facial landmarks and eye movement analysis to determine if a person's eyes are closed for an extended period, indicating drowsiness or fatigue.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Dataset](#dataset)
- [Model Training](#model-training)
- [Demo](#demo)
- [Dependencies](#dependencies)
- [Contributing](#contributing)
- [License](#license)

## Features

- Real-time drowsiness detection using a webcam feed
- Detection of closed eyes through Haar cascade classifiers
- Utilization of pre-trained deep learning models for eye status classification
- Audio alarm system triggered upon detecting drowsiness
- Display of drowsiness score to monitor the level of drowsiness

## Installation

1. Clone the repository:

git clone https://github.com/RushikeshKothawade07/Data-Science/tree/main/cv/Drowsiness%20Detector%20-%20CNN


2. Change into the project directory:

cd Drowsiness Detector - CNN

3. Install the required dependencies:

pip install -r requirements.txt


## Usage

1. Run the drowsiness detection script:

python app.py


2. The webcam feed will open, and the program will start detecting drowsiness in real-time.

3. If the eyes are closed for an extended period, an audio alarm will be triggered, indicating drowsiness.

4. The drowsiness score will be displayed on the screen to monitor the level of drowsiness.

## Dataset

The drowsiness detection model was trained using a custom dataset comprising images of individuals with open and closed eyes. The dataset was collected from [MRL Eye Dataset](http://mrl.cs.vsb.cz/eyedataset) and manually labeled for eye status.

## Model Training

The drowsiness detection model was trained using a deep learning framework. The code for training the model, including data preprocessing, model architecture, and training pipeline, is available in the `model_training` directory.

## Demo

To view a demo of the drowsiness detection system, refer to the `demo` directory. It includes a video showcasing the system in action.

## Dependencies

The project relies on the following dependencies:

- OpenCV
- TensorFlow
- Pygame

Refer to the `requirements.txt` file for specific versions of the dependencies.

## Contributing

Contributions to this project are welcome. If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
