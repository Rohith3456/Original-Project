ip a
poeroff
poweroff
ip a
poweroff
ip a
ls
git init
ls -l
poweroff
lsb_release -a
logout
ip a
powoff
poweroff
ip a
clear
mkdir app/app.py
touch app/app.py
mkdir app.py
vi app.py
ls
rm app.py
clear
poweroff
clear
ls
rm app.py
rm -r app.py
ls
clear
hostnamectl set-hostname Project
bash
clear
touch package.json
vi package.json
touch index.js
vi index.js
touch app.test.js
vi app.test.js
touch Dockerfile
vi dockerfile
vi Dockerfile
touch docker-compose.yml
vi docker-compose.yml
docker-compose up --build
docker --version
clear
sudo yum install -y docker
sudo systemctl enable docker
docker --version
sudo systemctl enable docker
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
docker --version
systemctl status docker
clear
sudo docker run hello-world
clear
docker-compose up --build
docker compose version
docker compose up --build
docker-compose up --build
docker compose up --build
docker-compose up --build
# open http://localhost:3000
clear
sudo curl -L "https://github.com/docker/compose/releases/download/v2.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version
docker-compose up --build
clear
touch k8s/deployment.yaml
mkdir -p k8s
touch k8s/deployment.yaml
vi k8s/deployment.yaml
vi k8s/service.yaml
docker login
docker tag my-app:latest <DOCKERHUB_USERNAME>/my-app:latest
docker tag my-app:latest rohith242/my-app:latest
docker images
docker build -t my-app:latest .
docker tag my-app:latest rohith242/my-app:latest
ls
cd /path/to/folder
find . -name Dockerfile
cd my-app
./my-app/Dockerfile
cd my-app
ls
ls ~/projects
ls ~/my-app
poweroff
ip a
clear
ls
clear
ls
git init
yum install git
git add .
pwd
git init
git add .
git commit -m "Initial commit"
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
git config --global user.name "Your Name"
git config --global user.email "katamaneni.rohith@gmail.com"
git config --global user.name "Rohith3456"
git config --list
git commit -m "Initial commit"
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/<Rohith3456>/<Original Project>.git
git remote add origin https://github.com/Rohith3456/Original Project.git
git remote -v
git branch -M main
git push -u origin main
git remote -v
git remote add origin https://github.com/Rohith3456/Original-Project-.git
git remote -v
git branch -M main
git push -u origin main
lear
clear
git remote remove origin
git remote add origin https://github.com/Rohith3456/Original-Project-.git
git remote -v
git branch -M main
git push -u origin main
git pull origin main --allow-unrelated-histories
git commit -m "Merge remote changes"
git push -u origin main
git push -u origin main --force
clear
mkdir -p .github/workflows
nano .github/workflows/ci-cd.yml
vi .github/workflows
vi .github/workflows/ci-cd.yml
ls
mkdir -p .github/workflows
cat > .github/workflows/ci-cd.yml <<EOL
name: CI/CD

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build-and-push:
    runs-on: ubuntu-latest
    env:
      IMAGE_NAME: \${{ secrets.DOCKERHUB_USERNAME }}/my-app
      IMAGE_TAG: \${{ github.sha }}

    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 18

      - name: Install dependencies
        run: npm install

      - name: Start app (background) for tests
        run: |
          node index.js &
          echo \$! > server.pid

      - name: Run tests
        run: npm test

      - name: Stop background server
        if: always()
        run: |
          kill \$(cat server.pid) || true

      - name: Log in to Docker Hub
        uses: docker/login-action@v2
        with:
          username: \${{ secrets.DOCKERHUB_USERNAME }}
          password: \${{ secrets.DOCKERHUB_TOKEN }}

      - name: Build image
        run: docker build -t \$IMAGE_NAME:latest -t \$IMAGE_NAME:\$IMAGE_TAG .

      - name: Push image
        run: |
          docker push \$IMAGE_NAME:latest
          docker push \$IMAGE_NAME:\$IMAGE_TAG
EOL

ls
ls -la
ls -la .github/workflows
mkdir -p .github/workflows   # ensures folder exists
nano .github/workflows/ci-cd.yml
vi .github/workflows/ci-cd.yml
ls -la .github/workflows
git add .github/workflows/ci-cd.yml
git commit -m "Add GitHub Actions workflow"
git push
docker build -t my-app:latest .
cd /path/to/your/project
poweroff
