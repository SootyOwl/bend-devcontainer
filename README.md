# Bend DevContainer Project

This project provides a development environment for the Bend programming language using Visual Studio Code and Docker. The environment is configured to support GPU acceleration with NVIDIA CUDA.


## Getting Started

### Prerequisites

- Docker
- Visual Studio Code
- Remote - Containers extension for Visual Studio Code

### Setup

1. **Clone the repository:**

    ```sh
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Open the project in Visual Studio Code:**

    ```sh
    code .
    ```

3. **Reopen in Container:**

    - Press `F1` and select `Remote-Containers: Reopen in Container`.

### Features

- **CUDA Support:** The development container is based on `nvidia/cuda:12.4.1-devel-ubuntu20.04` and is configured to use GPU acceleration.
- **Bend Language Support:** The container installs the Bend language and the necessary extensions for Visual Studio Code.

### Customizations

The `.devcontainer/devcontainer.json` file includes customizations for Visual Studio Code:

- **Extensions:** The `RohanVashisht.bend` extension is installed for Bend language support.
- **Remote User:** The container runs as the `vscode` user.

### Example Bend Scripts

The `bend-guide` directory contains example Bend scripts to help you get started:

- `01_hello_world.bend`: A simple "Hello, World!" program.
- `02_basic_functions_and_datatypes.bend`: Basic functions and data types in Bend.
- `02a_shape.bend`: Custom data types and pattern matching.
- `02b_list.bend`: Working with lists.
- `02c_lambda.bend`: Inline functions (lambdas).
- `03_recursive_datatypes.bend`: Recursive data types.
- `03a_fold_consuming.bend`: Folding data structures.
- `03b_bend_generating.bend`: Generating data structures.
- `04_parallel_sum_using_bend.bend`: Parallel sum using Bend.

### Running Bend Scripts
To run a Bend script, use the following command inside the container:

```sh
bend <script-name>.bend
```

For example:

```sh
bend bend-guide/01_hello_world.bend
```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.