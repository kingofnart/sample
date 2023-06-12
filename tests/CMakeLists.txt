# This is a CMake file for the tests directory of the sample project.
#
# Andrew King, 6/5/23

# Run each shell test.
function(sh_test name)
  # Copy the test script from the source dir to the build dir.
  file(COPY "${CMAKE_SOURCE_DIR}/tests/${name}.sh"
    DESTINATION ${CMAKE_BINARY_DIR}/tests
    FILE_PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE)
  # Add the shell script as a test.
  add_test(NAME ${name}.sh COMMAND bash ${name}.sh)
endfunction()

# Copy the reference file that contains expected output for hello program.
FILE(COPY ${CMAKE_CURRENT_SOURCE_DIR}/ref_hello.txt
    DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

# Copy the reference file that contains expected output for fizzbuzz program.
FILE(COPY ${CMAKE_CURRENT_SOURCE_DIR}/ref_fizzbuzz.txt
    DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

# Run the test script.
sh_test(run_hello_test)