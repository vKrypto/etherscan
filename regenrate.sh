# sol2uml 0x603Bb6909Be14f83282E03632280D91bE7fB83b2 -o .\uml\ethersacn.svg
# sol2uml class  .\@etherscan\contracts\utils\ProxyTarget.sol -o ./uml/proxytarget.svg

BASE_INPUT_DIR="./@etherscan"
COMMANDS_OUTPUT_FILE="./generate_commands.sh"

> "$COMMANDS_OUTPUT_FILE"

find "$BASE_INPUT_DIR" -type f -name "*.sol" ! -name "I*.sol" | while read -r sol_file; do
    relative_path="${sol_file#$BASE_INPUT_DIR/}" 
    output_file="./uml/${relative_path%.sol}.svg" 

    echo "sol2uml class \"$sol_file\" -o \"$output_file\"" >> "$COMMANDS_OUTPUT_FILE"
done

echo "Commands have been saved to $COMMANDS_OUTPUT_FILE"
