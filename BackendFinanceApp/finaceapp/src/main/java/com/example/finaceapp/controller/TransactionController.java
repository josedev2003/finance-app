package com.example.finaceapp.controller;

import com.example.finaceapp.models.Transaction;
import com.example.finaceapp.services.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("api/transactions")
@CrossOrigin(origins = "http://localhost:3000")
public class TransactionController {

    @Autowired
    private TransactionService transactionService;

    @GetMapping
    public List<Transaction> getAllTransactions(){
        return transactionService.getAllTransactions();
    }
    @GetMapping("/balance")
    public ResponseEntity<Double> getTotalBalance() {
        double totalBalance = transactionService.calculateTotalBalance();
        return ResponseEntity.ok(totalBalance);
    }


    @PostMapping
    public Transaction createTransaction(@RequestBody Transaction transaction){
        return transactionService.createTransaction(transaction);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Transaction> updateTransaction(@PathVariable Long id, @RequestBody Transaction transactionDetails){
        Transaction updateTransaction = transactionService.updateTransaction(id, transactionDetails);
        return ResponseEntity.ok(transactionDetails);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Transaction> deleteTransaction(@PathVariable Long id){
         transactionService.deleteTransaction(id);
         return ResponseEntity.noContent().build();
    }


}

