# Q8: ML Environment Setup

This guide details how to set up a simple Machine Learning project environment, including creating a virtual environment, installing dependencies, and verifying the setup with a Jupyter Notebook.

## Files
- `requirements.txt`: List of Python dependencies.
- `ml_setup.ipynb`: Jupyter Notebook to verify environment and run a simple model.

## Setup Instructions (For Developer)

### 1. Prerequisites
- Python 3.x installed.
- Git installed.

### 2. Create and Activate Virtual Environment

Run the following commands in your terminal:

**Windows (PowerShell):**
```powershell
python -m venv venv
.\venv\Scripts\Activate
```

**Linux/macOS:**
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Install Dependencies

Install the required packages from `requirements.txt`:

```bash
pip install -r requirements.txt
```

Verify the installation:

```bash
pip freeze | grep -E "numpy|pandas|scikit-learn|jupyter"
# Or on Windows PowerShell:
# pip freeze | Select-String -Pattern "numpy","pandas","scikit-learn","jupyter"
```

### 4. Run the Jupyter Notebook

Launch Jupyter Lab to run the verification notebook:

```bash
jupyter lab
```

1. Open `ml_setup.ipynb` in the Jupyter interface.
2. Run All Cells.
3. Confirm the output matches the expected versions and model coefficients.

**Expected Output:**
```
numpy: 1.26.2
pandas: 2.2.2
coef: [2.] intercept: 0.0
```

### 5. Commit to Git

After verifying the environment, commit the files to the repository:

```bash
git add requirements.txt ml_setup.ipynb
git commit -m "Add ML environment requirements and verification notebook"
git push origin main
```

---

## Instructions for External Users

If you are a new user or collaborator cloning this repository, follow these steps to get the environment running:

1.  **Clone the Repository:**
    ```bash
    git clone <repository-url>
    cd <repository-directory>/Q8
    ```

2.  **Set Up the Environment:**
    It is recommended to use a virtual environment to avoid conflicts.
    ```bash
    # Windows
    python -m venv venv
    .\venv\Scripts\Activate

    # Linux/Mac
    python3 -m venv venv
    source venv/bin/activate
    ```

3.  **Install Dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

4.  **Run the Notebook:**
    ```bash
    jupyter lab ml_setup.ipynb
    ```
    Execute the cells to verify the installation and see the model in action.
