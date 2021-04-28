# Execute with chmod +x <filename.sh>

# Step 1 : Local project folder path
echo "What is your local project path?"
read PROJECT_PATH
# Step 4 : Go to project path
cd ${PROJECT_PATH}
# Step 5 : initialize the repo localy, add file
git init
touch README.md
git add README.md
# Step 6 : Commit the file
git commit -m "initial commit -setup with .sh script"
# Step 1 : Get the remote repo name
echo "What is your repo name?"
read REPO_NAME
# Step 2 : Get the remote repo description
echo "What is your repo decription name?"
read DESCRIPTION
# Step 7 : Get the username
echo "What is your username?"
read USERNAME
# Step 8: Create a remote repo by API
curl -u ${USERNAME} https://api.github.com/user/repos -d "{\"name\":\"${REPO_NAME}\", \"description\":\"${DESCRIPTION}\"}"
# Step 9 : Push the files to remote repo
git remote add origin https://github.com/${USERNAME}/${REPO_NAME}.git
git push --set-upstream origin master
# step 10 change to your project's root directory.
cd "$PROJECT_PATH"
# Step 11 : Now you can check the repo
echo "Done. Go to https://github.com/$USERNAME/$REPO_NAME to see." 
echo " *** You're now in your project root. ***"


