To download and run **LLaMA 2 7B** using **Ollama**, you can follow the steps below. I'll also explain how to specify the directory where the model is stored and how to run it locally.

### Step 1: Install Ollama
If you haven't installed **Ollama** yet, follow the installation instructions for your system:

1. Visit the [Ollama website](https://ollama.com) to download the appropriate package for your operating system.
2. Install it on your system. For example, on Linux:

   ```bash
   sudo tar -C /usr/local/bin -xzf ollama-linux-amd64.tgz
   ```

   This places the `ollama` binary in `/usr/local/bin`.

### Step 2: Download LLaMA 2 7B Using Ollama

To download the **LLaMA 2 7B** model using Ollama, you can run the following command in your terminal:

```bash
ollama pull llama2
```

This command will:
- Download the **LLaMA 2 7B** model from Ollama's servers.
- Store the model in a default directory on your system (usually within `~/.ollama/models`).

### Step 3: Specify a Custom Directory for Model Storage
If you want to store the model in a custom directory, you can set the environment variable `OLLAMA_HOME` to point to the desired location.

For example, if you want to store models in a directory called `/path/to/ollama_models`, you would do the following:

```bash
export OLLAMA_HOME=/path/to/ollama_models
```

Then, when you run the `ollama pull` command, the model will be downloaded and stored in the specified directory.

### Step 4: Running the Model Locally

Once the model is downloaded, you can run it using the following command:

```bash
ollama run llama2
```

This command will:
- Load the **LLaMA 2 7B** model.
- Start a session where you can interact with the model via the command line.

### Step 5: Interactive Example

Here's a sample interaction where you prompt the model to generate a response:

```bash
ollama run llama2 --prompt "Tell me a fun fact about space."
```

The `--prompt` flag allows you to specify the input for the model, and it will generate and return a response.

### Example Command Summary:

1. **Download LLaMA 2 7B:**
   ```bash
   ollama pull llama2
   ```

2. **Specify Custom Model Directory:**
   ```bash
   export OLLAMA_HOME=/path/to/ollama_models
   ```

3. **Run the Model:**
   ```bash
   ollama run llama2
   ```

4. **Run with a Prompt:**
   ```bash
   ollama run llama2 --prompt "Tell me a fun fact about space."
   ```

This setup allows you to download and run the **LLaMA 2 7B** model on your local machine using Ollama, with the option to specify where the model is stored.

Let me know if you need further assistance with this setup!