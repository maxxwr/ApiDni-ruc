package com.fartmastdev.ApiProject.models;
import java.time.LocalDateTime;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "contribuyentesRUC")
public class RucTable {

    @Id
    private String ruc;

    @Column(name = "NOMBRE_RAZON_SOCIAL")
    private String nombreRazonSocial;

    @Column(name = "ESTADO_CONTRIBUYENTE")
    private String estadoContribuyente;

    @Column(name = "CONDICION_DOMICILIO")
    private String condicionDomicilio;

    @Column(name = "UBIGEO")
    private String ubigeo;

    @Column(name = "TIPO_DE_VIA")
    private String tipoVia;

    @Column(name = "NOMBRE_DE_VIA")
    private String nombreVia;

    @Column(name = "CODIGO_DE_ZONA")
    private String codigoZona;

    @Column(name = "TIPO_DE_ZONA")
    private String tipoZona;

    @Column(name = "NUMERO")
    private String numero;

    @Column(name = "KILOMETRO")
    private String kilometro;

    @Column(name = "INTERIOR")
    private String interior;

    @Column(name = "LOTE")
    private String lote;

    @Column(name = "DEPARTAMENTO")
    private String departamento;

    @Column(name = "MANZANA")
    private String manzana;

    @Column(name = "CREATED_AT")
    private LocalDateTime createdAt;

    @Column(name = "UPDATED_AT")
    private LocalDateTime updatedAt;

    
    public String getRuc() {
        return ruc;
    }

    public void setRuc(String ruc) {
        this.ruc = ruc;
    }

    public String getNombreRazonSocial() {
        return nombreRazonSocial;
    }

    public void setNombreRazonSocial(String nombreRazonSocial) {
        this.nombreRazonSocial = nombreRazonSocial;
    }

    public String getEstadoContribuyente() {
        return estadoContribuyente;
    }

    public void setEstadoContribuyente(String estadoContribuyente) {
        this.estadoContribuyente = estadoContribuyente;
    }

    public String getCondicionDomicilio() {
        return condicionDomicilio;
    }

    public void setCondicionDomicilio(String condicionDomicilio) {
        this.condicionDomicilio = condicionDomicilio;
    }

    public String getUbigeo() {
        return ubigeo;
    }

    public void setUbigeo(String ubigeo) {
        this.ubigeo = ubigeo;
    }

    public String getTipoVia() {
        return tipoVia;
    }

    public void setTipoVia(String tipoVia) {
        this.tipoVia = tipoVia;
    }

    public String getNombreVia() {
        return nombreVia;
    }

    public void setNombreVia(String nombreVia) {
        this.nombreVia = nombreVia;
    }

    public String getCodigoZona() {
        return codigoZona;
    }

    public void setCodigoZona(String codigoZona) {
        this.codigoZona = codigoZona;
    }

    public String getTipoZona() {
        return tipoZona;
    }

    public void setTipoZona(String tipoZona) {
        this.tipoZona = tipoZona;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getKilometro() {
        return kilometro;
    }

    public void setKilometro(String kilometro) {
        this.kilometro = kilometro;
    }

    public String getInterior() {
        return interior;
    }

    public void setInterior(String interior) {
        this.interior = interior;
    }

    public String getLote() {
        return lote;
    }

    public void setLote(String lote) {
        this.lote = lote;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getManzana() {
        return manzana;
    }

    public void setManzana(String manzana) {
        this.manzana = manzana;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }
}
