#!/bin/bash

echo "Enter project name:"
read project_name

# Create project directory
mkdir $project_name
cd $project_name

# Create necessary files and directories
touch README.md pyproject.toml .gitignore .env
mkdir src data src/input src/output

# Create source files
touch src/main.py src/module1.py src/module2.py

# Write default content to README.md
echo "# $project_name" >> README.md
echo "" >> README.md
echo "Short description of the project." >> README.md
echo "" >> README.md
echo "## Project Structure" >> README.md
echo "" >> README.md
echo "```
$project_name/
├── README.md
├── pyproject.toml
├── .gitignore
├── .env
├── src/
│   ├── main.py
│   ├── module1.py
│   └── module2.py
└── data/
    ├── input/
    └── output/
```" >> README.md

echo "Project created successfully!"

echo "Enter GitHub repo link:"
read github_link

git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin $github_link
git push -u origin main
