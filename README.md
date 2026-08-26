# GAMA - CAPSIS link (CAPSIS server + GAMA agent)

This repository contains a **single GAMA (GAML) file** that demonstrates how to **connect a GAMA model to CAPSIS** by communicating with CAPSIS through a **TCP server**.

It is primarily an **experimental / exploratory model**: it provides a set of **functions** that wrap the interactions with the CAPSIS server, and exposes these functions as **manual controls (buttons)** that the user can click **while the GAMA experiment is running**.

## What’s inside

- A small “library-like” set of **GAML functions** to:
  - start/stop CAPSIS (depending on your setup),
  - send commands to the CAPSIS TCP server,
  - read and parse responses,
  - manage the communication channel (IP/port).
- An example experiment (typically named **`test`**) that adds a **CAPSIS panel** on the left side with **buttons**.
  - Each button triggers one of the functions, so you can test the connection and behaviors interactively.
 

## Intended usage

This model is meant **to experiment and understand the integration**.

In a real project, you would probably not use buttons but instead you would:

- **reuse the functions** provided in this file, and
- **call them at the appropriate moments** in your own GAMA model logic (e.g., during `init`, at specific simulation steps, or in response to events/agents’ decisions).


## Requirements

### 1) GAMA
You need a working GAMA installation to run the `.gaml` file. The model has been developed to work with GAMA-2025-06 and is not compatible with the 2026 versions.

### 2) CAPSIS + the TCP server script/class
The connection requires a CAPSIS-side TCP server component (referenced in the model as something like `forceps.maelia.TCPServer`).

This CAPSIS script/class **is not included** in this repository. It was developed separately and is available in the **CAPSIS SVN repository**.

It is necessary for the coupling to work.

## Configuration

### Update input/output paths
The example includes file paths that must be adapted to your machine. Replace them with valid local paths.

### Server IP and port
Two parameters typically control the connection:

- **Forceps server ip** (default: `localhost`)
- **Forceps server port** (default: `9123`)

- `localhost` means CAPSIS runs on the **same computer** as GAMA, if not you must give the actual IP of the machine running CAPSIS and make sure that it is reachable from the one running gama.
- The port must match on both sides. In this example workflow, **GAMA starts CAPSIS and specifies the port**, then communicates on that same port.
  - Change it only if you have a port conflict or if CAPSIS is started separately with another port.

## How to run (interactive testing)

1. Open the `.gaml` file in GAMA.
2. Update machine-specific paths in the model.
3. Ensure CAPSIS can run with the required TCP server component.
4. Run the experiment **`test`**.
5. Use the **buttons** in the CAPSIS panel to manually trigger the available functions and observe the interaction.

## Notes

- This repository focuses on **demonstrating the communication pattern** (GAMA client ↔ CAPSIS server).
- For production usage, integrate the functions into your model and automate when they are called.

## License

MIT. See [LICENSE](LICENSE).
