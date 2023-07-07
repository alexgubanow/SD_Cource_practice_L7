OBJ_DIR ?= obj
BIN_DIR ?= bld

CC = clang
CXX = clang++
CXXFLAGS = -Wall -Wextra

# Main executable name
EXECUTABLE = $(BIN_DIR)/main

SRCS += $(wildcard *.cpp)
SRCS += $(wildcard *.c)
OBJS = $(addprefix $(OBJ_DIR)/, $(addsuffix .o, $(basename $(SRCS))))

# Compile the source files into object files
$(OBJ_DIR)/%.o: %.cpp | $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Build the executable
$(EXECUTABLE): $(OBJS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(EXECUTABLE)

.PHONY: clean all test

all: $(EXECUTABLE)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Clean the generated files
clean:
	rm -f $(OBJS) $(EXECUTABLE)

test: $(EXECUTABLE)
	$(EXECUTABLE)
