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
public class Produto {
    private String codigo;
    private String descricao;
    private String valor;

    public Produto(String codigo, String descricao, String valor) {
        this.codigo = codigo;
        this.descricao = descricao;
        this.valor = valor;
    }
   
        
    public String getCodigo() {
        return codigo;
    }

    public String getDescricao() {
        return descricao;
    }


    public String getValor() {
        return valor;
    }
        
}
