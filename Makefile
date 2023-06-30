CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra

# Main executable name
EXECUTABLE = main

# Source files
SRCS = main.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Compile the source files into object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Build the executable
$(EXECUTABLE): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(EXECUTABLE)

# Clean the generated files
clean:
	rm -f $(OBJS) $(EXECUTABLE)

test: $(EXECUTABLE)
	./$(EXECUTABLE)

