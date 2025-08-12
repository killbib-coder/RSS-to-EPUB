# RSS-to-EPUB

## Description :

This project retrieves RSS feeds from one or more websites, converts them into EPUB format, and automatically transfers the resulting EPUB files to a local Nginx server. Additionally, it updates the index file to provide easy access to the newly created EPUB files.

## How to use :

1. Ensure that Docker is properly installed and that you have Docker Compose.
2. Clone the repository: `git clone https://github.com/killbib-coder/RSS-to-EPUB.git && cd RSS-to-EPUB`
3. Start Docker Compose with the command: `docker-compose up -d`
4. Run the script `main_script.sh` located in the scripts folder to retrieve all RSS feeds, convert them to EPUB, transfer them to the web server, and automatically update the `index.html` files.
5. Connect to your Nginx server (usually at `localhost:8080`) to download the EPUB files from any device (eReader, etc.).

## How It Works

This project utilizes several components to automate the process of retrieving RSS feeds, converting them into EPUB format, and updating a web server. The main components include:

- **Docker Compose**: This is used to set up the environment, including an Nginx web server to serve the EPUB files.
- **Calibre**: The `ebook-convert` command from Calibre is used to convert the RSS feeds defined in the recipe files into EPUB format.
- **Bash Scripts**: Automation is handled through Bash scripts that orchestrate the entire workflow.

### Directory Structure

.
├── docker-compose.yml
├── README.md
├── recipes
│   ├── example.recipe
│   └── multi_recipe_example.recipe
├── scripts
│   ├── main_script.sh
│   ├── scrap.sh
│   └── update_index.sh
└── www
    ├── data
    └── index.html

### Author

killbib-coder
