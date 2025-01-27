# Go to your terminal, clone this repo
git clone https://github.com/darshhv/InsightX
cd a-commit-a-day

# Connect to Heroku and setup your app
heroku login
heroku git:remote -a a-commit-a-day

# Set buildpack for our app, since my script are shell script, so...
heroku buildpacks:set https://github.com/niteoweb/heroku-buildpack-shell.git

# Provide your GitHub details
# Your commit repo url
heroku config:set GITHUB_CLONE_URL=https://{YOUR_GITHUB_ACCESS_TOKEN}@{YOUR_GITHUB_REPO}
heroku config:set GITHUB_USER_EMAIL={YOUR_GITHUB_EMAIL}
heroku config:set GITHUB_USER_NAME={YOUR_GITHUB_NAME}

# Push my script to your app
git push heroku main
