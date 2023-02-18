/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.cerebrobinario.controller;

import com.cerebrobinario.model.Todo;
import com.cerebrobinario.repository.TodoRepository;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "TodoController", urlPatterns = {"/"})
public class TodoController extends HttpServlet {

    private final TodoRepository repository = new TodoRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String title = request.getParameter("title");
        
        Todo todo = new Todo();
        
        todo.setTitle(title);
        todo.setDone(false);
        
        repository.create(todo);
        
        List<Todo> todos = repository.read();
        
        request.setAttribute("todos", todos);
        
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/index.jsp");
        rd.forward(request, response);
        
    }

   
}
