#!/bin/sh


marco() {
    MARCO_DIR="$(pwd)"
    echo "Marco! Saved directory: $MARCO_DIR"
}

polo() {
    cd "$MARCO_DIR" || echo "No marco set yet!"
    echo "Polo! Returned to: $(pwd)"
}

pidwait() {
    while kill -0 "$1" 2>/dev/null; do
        sleep 1
    done
}

config_edit()  {
	
     if [ -z "$1" ]; then
        echo "Error: No file path provided." >&2
        echo "Usage: chezmoi_edit_apply /path/to/file" >&2
        return 1
     fi
	

	if chezmoi edit $1; then
	
	chezmoi apply
	else
	echo "Chezmoi edit failed. No changes were made"
	return 1
	fi
}

