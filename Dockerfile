FROM continuumio/miniconda3

# Install MLflow
RUN conda install -c conda-forge mlflow -y

# Expose the MLflow tracking server port (default: 5000)
EXPOSE 5000

# Define the command to run the MLflow tracking server
CMD ["mlflow", "server", "--port", "5000"]