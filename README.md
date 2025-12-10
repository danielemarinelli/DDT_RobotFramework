Install the SeleniumLibrary, DataDriver and DataDriver[XLS] with the following cmd:
 pip install -U robotframework-datadriver[XLS]

Run from root (selecting the test file):
robot -d results ./Tests/DDT-XLS.robot 

To run all tests:
robot -d results .

logs and reports will be stored under folder /results
