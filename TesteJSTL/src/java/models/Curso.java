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

public class Curso {
        String codigo;
        String descricao;
        String diretoria;
        String modalidade;
        String situacao;
        String ano_letivo;

    public Curso(String codigo, String descricao, String diretoria, String modalidade, String situacao, String ano_letivo) {
        this.codigo = codigo;
        this.descricao = descricao;
        this.diretoria = diretoria;
        this.modalidade = modalidade;
        this.situacao = situacao;
        this.ano_letivo = ano_letivo;
    }
                    
    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricão(String descricão) {
        this.descricao = descricão;
    }

    public String getDiretoria() {
        return diretoria;
    }

    public void setDiretoria(String diretoria) {
        this.diretoria = diretoria;
    }

    public String getModalidade() {
        return modalidade;
    }

    public void setModalidade(String modalidade) {
        this.modalidade = modalidade;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public String getAno_letivo() {
        return ano_letivo;
    }

    public void setAno_letivo(String ano_letivo) {
        this.ano_letivo = ano_letivo;
    }              
        
}
