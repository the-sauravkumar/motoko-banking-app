# DBank - Decentralized Banking Application

DBank is a decentralized banking application built using the Internet Computer (IC) platform. It allows users to manage their finances securely and transparently on the blockchain.

## Overview

This project consists of two main components:
- **Backend**: The backend of the application is implemented in Motoko, a programming language designed for building smart contracts and dApps on the Internet Computer.
- **Frontend**: The frontend interface is built using HTML, CSS, and JavaScript. It provides a user-friendly interface for interacting with the decentralized banking system.

## Features

- **Account Management**: Users can create accounts, deposit funds, withdraw funds, and check their account balances.
- **Interest Calculation**: The application automatically calculates interest based on the elapsed time since the last transaction.
- **Transaction History**: Users can view their transaction history and monitor their financial activities.
- **Security**: All transactions are executed securely on the blockchain, ensuring transparency and immutability.

## Getting Started

To get started with DBank, follow these steps:

1. Clone the repository:
git clone <repository_url>

2. Install dependencies:
cd DBank
npm install

3. Build and deploy the application:
dfx deploy


4. Access the frontend interface:
Open `index.html` in your web browser.

## Backend Implementation

The backend of the application is implemented in Motoko. Below is a brief overview of the main functionalities implemented in the `main.mo` file:

- **Initialization**: Initializes the banking system with default values.
- **Top-up and Withdraw**: Functions for depositing and withdrawing funds from user accounts.
- **Check Balance**: Query function to retrieve the current balance of a user account.
- **Compound Interest**: Calculates and updates the account balance based on compound interest.
- **Reset**: Resets the banking system to its initial state.
- **Transfer**: Transfers funds from one account to another.
- **Calculate Interest**: Calculates the accrued interest based on the elapsed time.

For more details, refer to the `main.mo` file in the `src/hello_backend` directory.

## Contributing

Contributions to DBank are welcome! If you have any ideas for improvements or new features, feel free to open an issue or submit a pull request.

### Contributors

- [Saurav Kumar](https://github.com/the-sauravkumar)
- [Bishal Ranjan Das](https://github.com/bishalTheUnpredictable)

## License

This project is licensed under the [MIT License](LICENSE/LICENSE.txt).
