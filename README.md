# **n8n Production Deployment on AWS EC2 – DevOps Case Study**

This project demonstrates a complete, production-grade deployment of **n8n** on an **AWS EC2 Ubuntu server**, using **Docker**, **Docker Compose**, **Caddy reverse proxy**, **automatic SSL**, and **domain binding**.
It’s designed as a hands-on DevOps showcase reflecting real-world practices: containerization, networking, security, automation, and infrastructure readiness.

---

## **1. Overview**

The goal of this deployment is to run n8n as a fully secure and scalable automation system on EC2 using modern DevOps tooling.
The setup focuses on **HTTPS-by-default**, **data persistence**, **reverse proxy routing**, and **high-availability configuration**, making it suitable for production workflows and integration-heavy use cases.

This documentation summarizes the entire journey: server provisioning, container orchestration, networking, SSL automation, error resolutions, and performance considerations.

---

## **2. Project Structure**

The project uses a clean and modular structure:

* A Dockerfile for customizing and extending n8n
* A production-ready Docker Compose setup
* A Caddy reverse proxy for HTTPS automation
* A readable, maintainable README as documentation

This layout reflects best practices for agile DevOps deployments on cloud infrastructure.

---

## **3. Domain & SSL Integration (Production-Ready)**

A key part of making this deployment production-grade is binding n8n to a **dedicated subdomain** such as:

> n8n.[domain].in

By attaching it to a subdomain of the main website, Caddy automatically issues and renews SSL certificates using **Let’s Encrypt**.
This ensures:

* End-to-end HTTPS
* Secure webhook execution
* Trustable public URLs
* Compliance for production automation workflows

The environment is configured to trust the reverse proxy and operate exclusively over HTTPS.

---

## **4. Server Setup & Configuration**

The project includes a complete EC2 setup, covering:

* Launching an Ubuntu EC2 instance
* Installing Docker with the official repository
* Enabling non-root Docker usage
* Creating persistent Docker volumes
* Creating an isolated Docker network for services

This section demonstrates strong foundational knowledge of Linux server administration and container environments.

---

## **5. n8n Deployment Details**

The deployment covers:

* Initial container verification using a basic `docker run`
* Persistent storage for workflows, credentials, logs, and settings
* Environment variables mapped for production behavior
* Secure cookie handling
* HTTPS protocol enforcement
* Webhook URL configuration for stable external automation

This makes the n8n instance ready for real-world automation pipelines.

---

## **6. Reverse Proxy with Automatic HTTPS**

Caddy handles:

* Reverse proxying
* Domain routing
* Automatic SSL with Let’s Encrypt
* Certificate renewal
* Connection upgrades
* Basic security headers

This highlights experience with edge networking, gateway services, and secure traffic management — a strong DevOps competency.

---

## **7. Networking Architecture**

A private Docker network is used to isolate services.
Both n8n and Caddy communicate internally over this network, ensuring:

* No direct exposure of n8n
* Clean routing
* Safer architecture
* Low operational complexity

This demonstrates the understanding of container networking in real environments.

---

## **8. Issues Identified & Resolved**

Several real-world production issues were debugged and fixed:

* Docker socket permission errors
* n8n not responding through the proxy
* Let’s Encrypt DNS and challenge failures
* Proxy trust headers (`X-Forwarded-For`)
* Restart loops in containers

These problem-solving steps show practical experience handling live infrastructure challenges.

---

## **9. Performance Notes**

Testing on multiple instance sizes revealed:

* Micro instances work but feel slow
* t3.small or t3.medium are better fits for n8n
* Performance scales with workflow complexity

This demonstrates an understanding of cloud resource planning and cost-performance balancing.

---

## **10. Data Persistence & Backup Strategy**

All n8n data is stored inside a Docker volume.
This ensures:

* No data loss across restarts
* Credentials and workflows remain intact
* Easier migration and backup
* Predictable recovery in disaster scenarios

A key DevOps responsibility.

---

## **11. Final Outcome**

The deployment now includes:

* A live domain
* Automatic SSL
* A stable reverse proxy
* Persistent data
* Production-ready execution
* Containerized services
* Scalable design
* Clean, secure architecture
---
