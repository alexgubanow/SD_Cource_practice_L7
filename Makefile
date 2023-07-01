OBJ_DIR ?= obj
BIN_DIR ?= bld

CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra

# Main executable name
EXECUTABLE = $(BIN_DIR)/main

SRCS += $(wildcard *.cpp)
SRCS += $(wildcard *.c)
OBJS = $(addprefix $(OBJ_DIR)/, $(addsuffix .o, $(basename $(SRCS))))

# Compile the source files into object files
$(OBJ_DIR)/%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Build the executable
$(EXECUTABLE): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(EXECUTABLE)

# Clean the generated files
clean:
	rm -f $(OBJS) $(EXECUTABLE)

test: $(EXECUTABLE)
	$(EXECUTABLE)

