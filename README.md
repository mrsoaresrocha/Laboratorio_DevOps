# 🚀 Laboratório DevOps na AWS

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![Docker](https://img.shields.io/badge/Docker-Container-blue?logo=docker)
![Linux](https://img.shields.io/badge/Linux-Amazon%20Linux-yellow?logo=linux)
![GitHub](https://img.shields.io/badge/GitHub-Codespaces-black?logo=github)
![Terraform](https://img.shields.io/badge/Terraform-Coming%20Soon-623CE4?logo=terraform)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-Coming%20Soon-2088FF?logo=githubactions)

---

## 📖 Sobre o Projeto

Este projeto foi desenvolvido como laboratório prático para aprimorar conhecimentos em **Cloud Computing**, **Docker**, **AWS**, **Linux**, **Infraestrutura como Código (IaC)** e **DevOps**.

O objetivo é construir um ambiente semelhante ao utilizado em empresas, automatizando o ciclo completo de desenvolvimento e implantação de aplicações containerizadas.

---

# 🏗 Arquitetura

```text
                GitHub
                   │
                   ▼
         GitHub Codespaces
                   │
          Desenvolvimento
                   │
                   ▼
            Docker Build
                   │
                   ▼
           Amazon ECR
                   │
         Docker Pull (EC2)
                   │
                   ▼
        Amazon EC2 (IAM Role)
                   │
                   ▼
          Docker Container
                   │
                   ▼
           🌍 Landing Page
```

---

# 🛠 Tecnologias Utilizadas

- Amazon Web Services (AWS)
- Amazon EC2
- Amazon Elastic Container Registry (ECR)
- IAM
- IAM Roles
- Security Groups
- Docker
- Dockerfile
- Linux (Amazon Linux 2023)
- Bash Script
- Git
- GitHub
- GitHub Codespaces

---

# 📂 Estrutura do Projeto

```
Laboratorio_DevOps/

├── website/
│   ├── css/
│   ├── js/
│   └── index.html
│
├── scripts/
│   ├── build.sh
│   ├── run.sh
│   ├── login-ecr.sh
│   └── deploy-ecr.sh
│
├── docs/
│
├── Dockerfile
├── README.md
├── .gitignore
└── .dockerignore
```

---

# 🚀 Fluxo de Deploy

```text
Código

↓

Docker Build

↓

Docker Image

↓

Amazon ECR

↓

Amazon EC2

↓

Docker Pull

↓

Docker Run

↓

Website Online
```

---

# ⚙️ Como Executar Localmente

### Construir a imagem

```bash
./scripts/build.sh
```

### Executar o container

```bash
./scripts/run.sh
```

A aplicação ficará disponível em:

```
http://localhost:8080
```

---

# ☁️ Deploy na AWS

### Login no Amazon ECR

```bash
./scripts/login-ecr.sh
```

### Enviar imagem para o Amazon ECR

```bash
./scripts/deploy-ecr.sh
```

### Na EC2

```bash
docker pull <ECR_URI>:v1

docker run -d \
--name laboratorio-devops \
-p 80:80 \
--restart unless-stopped \
<ECR_URI>:v1
```

---

# 📸 Demonstração

Adicionar imagens em:

```
docs/screenshots/
```

Sugestões:

- Landing Page Online
- Docker Build
- Amazon ECR
- Amazon EC2
- Docker Container em execução
- GitHub Codespaces

---

# 📌 Funcionalidades

- ✅ Landing Page Responsiva
- ✅ Docker
- ✅ Dockerfile
- ✅ Bash Scripts
- ✅ Amazon ECR
- ✅ Amazon EC2
- ✅ IAM Role
- ✅ Security Groups
- ✅ Deploy Manual

---

# 🚧 Roadmap

## Sprint 1

- [x] Landing Page

## Sprint 2

- [x] Docker
- [x] Dockerfile
- [x] Bash Scripts

## Sprint 3

- [x] Amazon ECR
- [x] Amazon EC2
- [x] Deploy Manual

## Sprint 4

- [ ] Terraform
- [ ] Infraestrutura como Código

## Sprint 5

- [ ] GitHub Actions
- [ ] CI/CD

## Sprint 6

- [ ] HTTPS
- [ ] Nginx Reverse Proxy
- [ ] Domínio próprio

## Sprint 7

- [ ] Monitoramento
- [ ] CloudWatch
- [ ] Prometheus
- [ ] Grafana

## Sprint 8

- [ ] Kubernetes
- [ ] Amazon EKS

---

# 🎯 Objetivo

Construir um ambiente DevOps completo utilizando as melhores práticas de Cloud Computing e automação, simulando um cenário real de produção.

---

# 👨‍💻 Autor

**Marcelo Rocha**

Cloud Infrastructure • AWS • Docker • Linux • DevOps • Cybersecurity

GitHub:

https://github.com/mrsoaresrocha

LinkedIn:

https://www.linkedin.com/in/marcelo-cybersecurity-network/

---

# ⭐ Próximos Passos

- Automatizar toda a infraestrutura com Terraform
- Automatizar o deploy utilizando GitHub Actions
- Implantar monitoramento
- Implementar HTTPS
- Evoluir para Kubernetes
