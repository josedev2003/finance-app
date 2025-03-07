package com.example.finaceapp.services;



import com.example.finaceapp.models.Transaction;
import com.example.finaceapp.repositories.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TransactionService {

    @Autowired
    private TransactionRepository transactionRepository;


    public List<Transaction> getAllTransactions(){
        return transactionRepository.findAll();
    }

    public Transaction createTransaction(Transaction transaction){
        return transactionRepository.save(transaction);
    }

    public Transaction updateTransaction(Long id, Transaction transactionDetails){
        Transaction transaction = transactionRepository.findById(id).orElseThrow(() -> new RuntimeException("Transação não encontrada"));

        transaction.setType(transactionDetails.getType());
        transaction.setCategory(transactionDetails.getCategory());
        transaction.setAmount(transactionDetails.getAmount());
        transaction.setDate(transactionDetails.getDate());

        return transactionRepository.save(transaction);
    }

    public void deleteTransaction(Long id){
        transactionRepository.deleteById(id);
    }


    public double calculateTotalBalance() {
        List<Transaction> transactions = transactionRepository.findAll();
        return transactions.stream()
                .mapToDouble(transaction -> "Receita".equalsIgnoreCase(transaction.getType()) ? transaction.getAmount() : -transaction.getAmount())
                .sum();
    }

}
