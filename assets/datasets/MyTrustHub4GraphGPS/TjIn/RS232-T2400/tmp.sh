#!/bin/bash

# Define the array of string replacements
replacements=(
    "x_STARTbit=2'b00"
    "x_STOPbit=2'b01"
    "x_ShiftReg=2'b10"
    "x_miDataSend=2'b11"
    "DataSend_bit=1'b1"
    "DataCon_bit=1'b1"    
    "r_START=3'b001"
    "r_CENTER=3'b010"
    "r_WAIT=3'b011"
    "r_SAMPLE=3'b100"
    "r_STOP=3'b101"
    "x_IDLE=3'b000"
    "x_START=3'b010"
    "x_WAIT=3'b011"
    "x_SHIFT=3'b100"
    "x_STOP=3'b101"
    "x_DataSend=3'b111"
    "s_idle=3'b000"
    "s_count1=3'b001"
    "s_count2=3'b010"
    "s_count3=3'b011"
    "s_stop=3'b111"
    "LO=1'b0"
    "HI=1'b1"
    "X=1'bx"
    "DataSend=1'b0"
    "WORD_LEN=8"
)

   

# File names
files=("u_rec.v" "u_xmit.v")

# Iterate over each replacement
for replacement in "${replacements[@]}"; do
    # Split the replacement into the original and new string
    original=$(echo "$replacement" | cut -d'=' -f1)
    new=$(echo "$replacement" | cut -d'=' -f2)

    # Iterate over each file
    for file in "${files[@]}"; do
        # Check if file exists
        if [[ -f "$file" ]]; then
            # Use sed to replace the string
            sed -i "s/$original/$new/g" "$file"
        else
            echo "File not found: $file"
        fi
    done
done

echo "All replacements completed."

