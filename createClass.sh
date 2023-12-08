#!/bin/bash

# Default directory is the current directory
output_dir="."

# Function to display usage information
usage() {
  echo "Usage: $0 [-dir <output_directory>] <class_name>"
  echo "Options:"
  echo "  -dir <output_directory>   Specify the output directory for the new files"
  exit 1
}

# Parse command line options
while [ "$#" -gt 0 ]; do
  case "$1" in
    -dir)
      shift
      if [ -n "$1" ]; then
        output_dir="$1"
        
        # Check if the specified directory exists
        if [ ! -d "$output_dir" ]; then
          echo "Error: Directory '$output_dir' does not exist."
          exit 1
        fi
        
        shift
      else
        usage
      fi
      ;;
    *)
      class_name=$1
      shift
      ;;
  esac
done

# Check if a class name is provided
if [ -z "$class_name" ]; then
  usage
fi

# Create the header file with the class name in the specified directory
header_file="${output_dir}/${class_name}.hpp"
touch $header_file

# Create the implementation file with the class name in the specified directory
cpp_file="${output_dir}/${class_name}.cpp"
touch $cpp_file

# Write the template code to the header file
cat > $header_file <<EOL
#pragma once

class ${class_name} {
public:
    ${class_name}();
    ~${class_name}();
    
    // Add class methods and members here
};
EOL

# Write the template code to the implementation file
cat > $cpp_file <<EOL
#include "${class_name}.hpp"

${class_name}::${class_name}() {
    // Constructor implementation
}

${class_name}::~${class_name}() {
    // Destructor implementation
}

// Implement class methods here
EOL

echo "Created files: $header_file and $cpp_file"

