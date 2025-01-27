# Make params
.RECIPEPREFIX = > 
# Compiler and flags
CC = cc
CFLAGS = -Wall -g
LDFLAGS = $(shell pkg-config --libs sqlite3)

BUILD_DIR = build

# Source and output files
SRC = open.c
TARGET = open

# Default target
all: $(TARGET)

# Build the target
$(TARGET): $(SRC)
> mkdir -p $(BUILD_DIR)
> $(CC) $(CFLAGS) $(SRC) -o $(BUILD_DIR)/$(TARGET) $(LDFLAGS)

# Clean build artifacts
clean:
> rm -f $(BUILD_DIR)/$(TARGET)

# Phony targets
.PHONY: all clean
