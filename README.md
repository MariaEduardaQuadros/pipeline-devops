# Pipeline DevOps - Fase 1

Este projeto faz parte da **Fase 1 - Configuração e Automação Inicial** da disciplina *DevOps na Prática*, pela faculdade da PUCRS.  
O objetivo é configurar um **pipeline de integração contínua (CI)** e criar **scripts de Infraestrutura como Código (IaC)** para provisionamento em nuvem.

---

## 📋 Objetivos do Projeto

- Criar uma estrutura inicial de DevOps para automatizar:
  - Integração contínua de código.
  - Execução automática de testes.
  - Provisionamento de infraestrutura em nuvem.
- Garantir entregas rápidas, seguras e padronizadas.
- Aplicar práticas de automação desde o início do desenvolvimento.

---

## 🛠️ Tecnologias Utilizadas

- **Controle de versão:** Git + GitHub
- **Integração Contínua (CI):** GitHub Actions
- **Infraestrutura como Código (IaC):** AWS CloudFormation
- **Provedor de Nuvem:** AWS

---

## ⚙️ Pipeline de Integração Contínua
![CI Pipeline](https://github.com/MariaEduardaQuadros/pipeline-devops/actions/workflows/ci.yml/badge.svg)

O pipeline é executado automaticamente nas seguintes situações:
- Push para as branches principais (`main` ou `master`).
- Abertura ou atualização de Pull Requests.

### Etapas do Pipeline
1. **Checkout do código**  
2. **Instalação de dependências** (se necessário)  
3. **Lint e verificação de qualidade**  
4. **Execução de testes automatizados**  
5. **Build da aplicação** (quando aplicável)  
6. **Notificações** (status de execução no GitHub)

---

## ☁️ Provisionamento de Infraestrutura

O arquivo [`infra.yml`](infra.yml) utiliza **AWS CloudFormation** para criar recursos em nuvem.  
Atualmente, ele está configurado para criar um **bucket S3 de teste**.

### Criando a pilha na AWS
1. Acesse o console AWS.
2. Vá em **CloudFormation > Create Stack**.
3. Faça upload do arquivo `infra.yml`.
4. Clique em **Next**, defina um nome para a stack e confirme.
5. Aguarde a criação.

---

## 📦 Como Executar Localmente

> Requisitos:
> - Conta AWS configurada
> - Git instalado
> - Permissões para criar recursos no CloudFormation

```bash
# Clonar o repositório
git clone https://github.com/MariaEduardaQuadros/pipeline-devops.git

# Entrar na pasta do projeto
cd pipeline-devops
