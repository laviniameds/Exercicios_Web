/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author lavinia
 */
public class Livro {

    private String isbn;
    private String titulo;
    private String preco;
    
    public Livro(String isbn, String titulo, String preco){
        this.isbn = isbn;
        this.titulo = titulo;
        this.preco = preco;
    }
    
    public String getIsbn() {
        return isbn;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getPreco() {
        return preco;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setPreco(String preco) {
        this.preco = preco;
    }
}
