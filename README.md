# speakers_sentiment_analyzer
This repository contains an application designed to analyze the sentiment of speakers in audio files. The application offers a comprehensive solution for extracting dialogue from audio, performing sentiment analysis on the extracted text, and deploying the entire system on Amazon Web Services (AWS) Elastic Container Service (ECS) using Fargate, fronted by an Application Load Balancer (ALB) and accessible via a secure HTTPS URL from Amazon CloudFront.

## Setup and Configuration
To use the application, follow these steps:

API Keys: Obtain API keys for Deepgram and OpenAI. Create a .env file in the root directory of the project and specify your API keys as follows:
```python
dotenv
DEEPGRAM_API_KEY=your_deepgram_api_key
OPENAI_API_KEY=your_openai_api_key
```
OpenAI API Transaction: Note that to use the OpenAI API, you may need to perform a transaction of $5 USD. Ensure your OpenAI account is funded accordingly.

## Audio to Text Conversion
The application utilizes the Deepgram API to convert audio files to text. Through scripted processes, dialogue from each speaker is extracted from the audio files. This extracted dialogue serves as the input for the subsequent sentiment analysis.

## Sentiment Analysis
Sentiment analysis is performed using the OpenAI API. The application leverages prompts defined in the code, customized to elicit nuanced sentiment analysis. The sentiment analysis encompasses a spectrum of emotions, providing insights into the speakers' sentiments throughout the conversation.

## Deploying the Application on AWS
The deployment process involves deploying the application as a Docker container on AWS ECS Fargate. An Application Load Balancer (ALB) fronts the service, ensuring scalable and reliable access to the application. Additionally, the deployment utilizes Amazon CloudFront to provide a secure HTTPS URL for accessing the application.

## To deploy the application:

Install the AWS Cloud Development Kit (CDK) if you haven't already.
Run the cdk deploy command from the project root directory. This command automates the deployment process, creating the necessary infrastructure on AWS.
Accessing the Hosted Application
Once deployed, the application can be accessed via a secure HTTPS URL provided by Amazon CloudFront. The URL will be generated as part of the deployment process. Users can visit the URL to interact with the application and analyze the sentiment of speakers in audio files.

For more information or assistance, please refer to the documentation provided by AWS or contact the repository owner.

