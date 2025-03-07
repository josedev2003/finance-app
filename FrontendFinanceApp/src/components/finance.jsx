import axios from "axios";
import { useEffect, useState } from "react";
import "./finance.css";

const Form = () => {
  const [transactions, setTransactions] = useState([]);
  const [form, setForm] = useState({
    type: "",
    category: "",
    amount: "",
    date: "",
  });
  const [totalBalance, setTotalBalance] = useState(0);

  useEffect(() => {
    // Fetch transactions
    axios
      .get("http://localhost:8080/api/transactions")
      .then((response) => setTransactions(response.data))
      .catch((error) => console.error("Erro ao buscar transações", error));

    // Fetch total balance
    axios
      .get("http://localhost:8080/api/transactions/balance")
      .then((response) => setTotalBalance(response.data))
      .catch((error) => console.error("Erro ao buscar saldo total", error));
  }, []);

  const handleSubmit = (e) => {
    e.preventDefault();

    axios
      .post("http://localhost:8080/api/transactions", form)
      .then((response) => {
        setTransactions([...transactions, response.data]);

        // Fetch updated total balance
        axios
          .get("http://localhost:8080/api/transactions/balance")
          .then((res) => setTotalBalance(res.data))
          .catch((error) => console.error("Erro ao buscar saldo total", error));
      })
      .catch((error) => console.error("Erro ao enviar transação", error));
  };

  return (
    <div className="container">
      <h1>Controle Financeiro</h1>
      <h2>Saldo Total: R$ {totalBalance.toFixed(2)}</h2>

      <input
        type="text"
        placeholder="Receita ou Despesa"
        value={form.type}
        onChange={(e) => setForm({ ...form, type: e.target.value })}
      />
      <input
        type="text"
        placeholder="Serviço ou Produto"
        value={form.category}
        onChange={(e) => setForm({ ...form, category: e.target.value })}
      />
      <input
        type="text"
        placeholder="Valor"
        value={form.amount}
        onChange={(e) => setForm({ ...form, amount: e.target.value })}
      />
      <input
        type="date"
        placeholder="Data"
        value={form.date}
        onChange={(e) => setForm({ ...form, date: e.target.value })}
      />
      <button onClick={handleSubmit}>Enviar</button>

      <ul>
        {transactions.map((t) => (
          <li
            key={t.id}
            className={t.type === "receita" ? "receita" : "despesa"}
          >
            <span>
              {t.type} - {t.category}
            </span>
            <span>R$ {t.amount}</span>
          </li>
        ))}
      </ul>
    </div>
  );
};
export default Form;
