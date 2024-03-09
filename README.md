# goPackage Project

This project creates a go package for performing a trimmed mean on integers or floating point numbers.

### Project Details:

This project follows the tutorial "How to Create Your Own Package in Golang" found here, https://www.tutorialspoint.com/how-to-create-your-own-package-in-golang. The goal was to build a trimmed mean package that accepts integers or floating point numbers as input and return a 5% trimmed mean calculation. Testing was incorporated in the program but R was also used as a check to determine if the same data can be replicated in both programming languages. 

### R 
The base mean function `mean(x, trim = 0.05)` was used on randomly generated data within the R program. The R script shows that randomly generated data for both integers and floats was performed and then the trimmed mean function was carried out on that data, as well as the mean. The results show that from that randomly generated set of 100 data points the integer trimmed mean was: 49.989010989011 and the float trimmed mean was: 54.6912222222222.

### Go
As outlined above, the package was created following the steps in the tutorial, but challenges arouse with this approach. The author guides the user through adding the package directly to the $GOPATH in the source code files. However, once the program was written and the go mod was initialize, I was not able to push the code to GitHub nor was I able to build the executable in the source code directory. I took a different approach to the package build. Instead of adding directly to my source code I made it in its own root project, successfully pushed it to GitHub, and then downloaded it to my source code files via the go module for use in a "test" program. The repository for the package can be found here, https://github.com/jremsza/mathutil. A new root directory was then established that holds the R script and the Go program. The go program imports the mathutil package from GitHub and uses the same randomly generated data, copied and pasted from the R script, to perform the calculation. When the go program is run the integer trimmed mean result: 49 and the float trimmed mean result: 54.69122222222222. The package appears to match the R script perfectly and the testing performed in the mathutil package supports that the trimmed mean calculation is correct. It should be noted that Go returns the same type as was the imput. So while R returns a float for the list of integers, Go will return a integer from the list of integers.

### Package Use Instructions:

To use the mathutil package for 5% trimmed mean calculations:

1. Create a main.go program that will run the program

2. Initialize a module to manage packages using the `go mod init mod_name` in the 
terminal of the root directory

3. Download the package to the GOPATH src file using the go get command. For this project, at the terminal, use the command `go get github.com/jremsza/mathutil`. If this is done correctly the package should appear in the go.mod file as a dependency.

4. Import the package into the program the same way all other packages are imported with the import statement and github.com/jremsza/mathutil

5. Write the program by calling the Average function with a slice of numerical values. See the main.go file in this repo for an example. 

#### To run the Test Go Program 

1. Clone the git repository https://github.com/jremsza/goPackgeProject.git

2. From the terminal, in the go project folder, run the command:

`./test.exe` 

