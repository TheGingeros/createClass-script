#!/bin/bash

# Default directory is the current directory
output_dir="."

# Function to display usage information
usage() {
  echo "Usage: createClass [-dir <output_directory>] <class_name>"
  echo "Options:"
  echo ""
  echo "Specify output directory:"
  echo "  		-dir <output_directory>"
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

class ${class_name}
{
public:
    // Constructor
    ${class_name}();

    // Get and Set methods

    // Methods
private:

};
EOL

# Write the template code to the implementation file
cat > $cpp_file <<EOL
#include "${class_name}.hpp"

${class_name}::${class_name}(){}

// Get and Set Methods

// Methods

EOL

echo "Created files: $header_file and $cpp_file"
