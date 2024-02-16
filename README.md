# Motorola Automation Lead Test - Eduardo Beger Sangali



## Project Requisites
- Intellij IDE (optional)
- Python
- Flask
- Robot Framework
- Selenium
- ChromeDriver

## Structure

This project was created to keep together all the test files and to make easy
a local execution, if necessary.
The main files are displayed in this structure: <br><br>
- **Binary Tree Test:** The code created to check if the tree is a binary tree is in
"binaryTree.py" file on the root directory. <br><br>
- **Flask Web Page**: The code created using flask is in "flask_web_page.py" file on
the root directory.<br><br>
- **Automation Folder:** Contains all robot automation files. The resources (file with
    the functions, variables, environment) are inside the "resources/resources.robot" file
    and the test cases files are inside the "testCases" folder. <br><br>
- **Automation Report:** After all automation execution, a report is created and it is possible
to check opening the "report.html" file in some browser. This file is located on the root folder.<br><br>
- **Docker File:** It is possible to run all project using Docker and all configuration for this execution
is inside the "Dockerfile" file located on the root folder. These are some Docker commands
that can be useful to start the container:
- - docker build -t flask_web_page.py .
- - - used to create a docker image for this project.
- - docker run --name flask_web_page -p 5050:5050 flask_web_page.py 
- - - used to create the container and start the flask server, making possible accessing the "http://localhost:5050/interview" web page.
- - docker start flask_web_page
- - - used to start again the created container, if it was stopped.
- - docker exec -it flask_web_page /bin/bash
- - - used to go to the docker folder that allow run the automation scripts.
- - robot automation/
- - - used to run the robot automation (this command need to be executed after the previous step, when 
the user will be inside the correct folder on Docker).