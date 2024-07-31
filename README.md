# research_engine


## Overview

The Research Engine is a powerful tool designed to enhance data analysis and research capabilities. By leveraging OpenAI's advanced language models and integrating with Pandas, this application enables users to interact with their CSV data using natural language prompts.

## Features

- **CSV File Upload**: Easily upload your CSV files directly through the Streamlit interface.
- **Data Preview**: View the first few rows of your uploaded data to ensure it's loaded correctly.
- **Natural Language Query**: Enter prompts in natural language to query and interact with your data.
- **Dynamic Responses**: Get responses to your data-related queries powered by OpenAI's GPT-4.
- **Logging**: Track and debug interactions using a log file.

## Getting Started

### Prerequisites

- Python 3.10 or later
- An OpenAI API key with access to GPT-4o
- Docker (for containerization)
- Docker Compose (for managing Docker containers)

### Installation

1. Fork and Clone the repository:

    ```sh
    git clone https://github.com/yourusername/research-engine.git
    cd research-engine
    ```

2. Create a virtual environment and Install the required dependencies:

    ```sh
    pip install -r requirements.txt
    ```

### Running the Application

### Local Machine

1. Set your OpenAI API key:

    ```sh
    export OPENAI_API_KEY='your_openai_api_key'
    ```

2. Start the Streamlit application:

    ```sh
    streamlit run main.py
    ```

3. Open your web browser and navigate to `http://localhost:8501` to access the Research Engine interface.

### Using Docker

#### Building the Docker Image

Navigate to the directory containing the `Dockerfile` and `docker-compose.yml` files, then run:

```sh
docker-compose up --build
```



References:
- Panadas AI: https://docs.pandas-ai.com/intro
- Langchain: https://python.langchain.com/v0.2/docs/integrations/chat/openai/
- streamlit: https://docs.streamlit.io/ 

