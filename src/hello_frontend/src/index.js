import { hello_backend } from "../../declarations/hello_backend";

async function registerUser(event) {
  event.preventDefault();
  const formData = new FormData(event.target);
  // const account = formData.get('account');
    const hasAllowed = await window.ic.plug.requestConnect();
  
    if (hasAllowed) {
      console.log('Plug wallet is connected');
    } else {
      console.log('Plug wallet connection was refused')
    }

  // const response = await fetch('/register', {
  //     method: 'POST',
  //     headers: {
  //         'Content-Type': 'application/json'
  //     },
  //     body: JSON.stringify({ account })
  // });

  // const data = await response.json();
  // console.log(data);
}

async function depositTokens(event) {
  event.preventDefault();
  const formData = new FormData(event.target);
  const account = formData.get('depositAccount');
  const amount = formData.get('amount');

  const response = await fetch('/deposit', {
      method: 'POST',
      headers: {
          'Content-Type': 'application/json'
      },
      body: JSON.stringify({ account, amount })
  });

  const data = await response.json();
  console.log(data);
}

async function withdrawTokens(event) {
  event.preventDefault();
  const formData = new FormData(event.target);
  const account = formData.get('withdrawAccount');
  const amount = formData.get('withdrawAmount');

  const response = await fetch('/withdraw', {
      method: 'POST',
      headers: {
          'Content-Type': 'application/json'
      },
      body: JSON.stringify({ account, amount })
  });

  const data = await response.json();
  console.log(data);
}

async function getBalance(event) {
  event.preventDefault();
  const formData = new FormData(event.target);
  const account = formData.get('balanceAccount');

  const response = await fetch(`/balance/${account}`);
  const data = await response.json();
  console.log(data);
}

document.getElementById('registerForm').addEventListener('submit', registerUser);
document.getElementById('depositForm').addEventListener('submit', depositTokens);
document.getElementById('withdrawForm').addEventListener('submit', withdrawTokens);
document.getElementById('getBalanceForm').addEventListener('submit', getBalance);
