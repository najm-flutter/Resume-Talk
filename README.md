# Resume-Talk

Resume-Talk is a Flutter project that transforms a resume into an AI-powered conversation. The application provides an interactive user interface where users can engage with their resume through a smart chat.

## Features

- Transform your resume into an intelligent conversation
- Interactive and user-friendly interface
- AI capabilities powered by Google Generative AI library
- Ability to customize and train the model data

## Libraries Used

- `get: ^4.6.5`
- `uicons: ^1.0.1`
- `lottie: ^3.1.1`
- `url_launcher: ^6.1.13`
- `dartz: ^0.10.1`
- `clipboard: ^0.1.3`
- `firebase_core: ^2.24.2`
- `rename: ^3.0.1`
- `get_storage: ^2.1.1`
- `google_generative_ai: ^0.4.0`
- `flutter_markdown: ^0.6.20`

## Installation

1. Ensure that [Flutter](https://flutter.dev/docs/get-started/install) is installed on your machine.
2. Clone the project to your local machine:
    ```sh
    git clone https://github.com/najm-flutter/Resume-Talk.git
    ```
3. Navigate to the project directory:
    ```sh
    cd Resume-Talk
    ```
4. Install the required packages:
    ```sh
    flutter pub get
    ```

## Customization

### Modify the API Key

You can modify the API key in the `lib/core/constant/api_key.dart` file.

### Edit and Train Model Data

You can edit and train the model data through the files located in the `lib/data/data_source/static` directory.

## Running the Application

To run the application, use the following command:
```sh
flutter run
