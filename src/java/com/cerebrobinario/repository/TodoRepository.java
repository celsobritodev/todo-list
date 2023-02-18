/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cerebrobinario.repository;

import com.cerebrobinario.model.Todo;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Usuario
 */
public class TodoRepository {
    
    private static int AUTO_INCREMENT = 0;
    private List<Todo>  TODOS_DB = new ArrayList<>();
    
    public void create(Todo todo) {
        AUTO_INCREMENT++;
        todo.setId(AUTO_INCREMENT);
        TODOS_DB.add(todo);
    }
    
    public List<Todo> read() {
       return TODOS_DB;
    }
    
    
}
