# Fees - Mobile Payment Application

Fees is a mobile payment application built on the Solana blockchain, leveraging USDC (USD Coin) for fast, secure, and cost-effective cross-border transactions. The application provides users with a seamless experience for sending, receiving, and exchanging USDC with XOF (West African CFA franc).

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Architecture](#architecture)
- [Technology Stack](#technology-stack)
- [Installation](#installation)
- [Usage](#usage)
- [Folder Structure](#folder-structure)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction

Fees aims to simplify cross-border payments within the African economy by offering a decentralized, blockchain-based solution that minimizes transaction costs and improves transaction speed. Built on the Solana blockchain, Fees utilizes USDC to provide a stable, reliable, and scalable payment experience.

## Features

- **Instant Transactions**: Near-instant transfers of USDC between users with low latency.
- **Reduced Fees**: Leveraging Solana’s low transaction costs to provide affordable cross-border payments.
- **Enhanced Security**: Utilizing blockchain technology to ensure transaction security and integrity.
- **Intuitive Interface**: A user-friendly mobile interface for easy navigation and transaction management.
- **Currency Exchange**: Integrated service to exchange USDC to XOF (West African CFA franc).

## Architecture

The architecture of Fees is designed to provide a scalable and secure platform for mobile payments. The key components include:

1. **Frontend**: A Flutter-based mobile application providing the user interface.
2. **Backend**: A NestJS API that handles business logic, interacts with the Solana blockchain, and processes user requests.
3. **Blockchain**: Solana blockchain serves as the decentralized ledger for all transactions.
4. **Circle API**: Used for converting USDC to XOF and for managing USDC transactions.

### High-Level Architecture Diagram

```plaintext
+-------------------+      +-------------------+      +-------------------+
|                   |      |                   |      |                   |
|  Mobile App       |<---->|  NestJS Backend   |<---->|  Solana Blockchain|
|  (Flutter)        |      |  (Node.js)        |      |                   |
+-------------------+      +-------------------+      +-------------------+
           |                         |
           v                         v
  +-------------------+      +-------------------+
  |                   |      |                   |
  |  Circle API       |<---->|  Database (PostgreSQL)|
  +-------------------+      +-------------------+

## Design

The design used to develop this application can be found at the following link:

[Krypt - Crypto Wallet App UI Kit (Figma)](https://www.figma.com/design/XaeybdCMJW9hkFO5wgtgFA/Krypt---Cypto-Wallet-App-UI-Kit-(Community)?node-id=226-1567&node-type=CANVAS&t=pF01I2EmsfsGlyn8-0)
