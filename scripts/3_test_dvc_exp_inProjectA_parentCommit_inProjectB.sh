# Add a new line to some_root_content file
echo "$(date '+%Y-%m-%d %H:%M:%S') - 3-test_dvc_exp_inProjectA_parentCommit_inProjectB.sh" >> project_b/some_projectB_content

# Commit changes to Git
git add project_b/some_projectB_content
git commit -m "3-test_dvc_exp_inProjectA_parentCommit_inProjectB.sh"

# Change directory to dproject_a
cd project_a

# Run dvc experiment
dvc exp run -f


# (step 1) Commit changes to Git
# -> no commit here, screenshots are taken 


# (step 2) Push changes to remote repository
git push origin main # -> only changes in project_b/some_projectB_content


# (step 3) Push DVC experiment from Project A
git add project_a/*
git commit -m "Commit dvc exp: 3-test_dvc_exp_inProjectA_parentCommit_inProjectB.sh"
git push origin main 
