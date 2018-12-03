/**
 * Ticket.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package gestion.cinema.service;

public class Ticket  implements java.io.Serializable {
    private gestion.cinema.service.Film film;

    private java.lang.Long id;

    private gestion.cinema.service.Utilisateur utilisateur;

    public Ticket() {
    }

    public Ticket(
           gestion.cinema.service.Film film,
           java.lang.Long id,
           gestion.cinema.service.Utilisateur utilisateur) {
           this.film = film;
           this.id = id;
           this.utilisateur = utilisateur;
    }


    /**
     * Gets the film value for this Ticket.
     * 
     * @return film
     */
    public gestion.cinema.service.Film getFilm() {
        return film;
    }


    /**
     * Sets the film value for this Ticket.
     * 
     * @param film
     */
    public void setFilm(gestion.cinema.service.Film film) {
        this.film = film;
    }


    /**
     * Gets the id value for this Ticket.
     * 
     * @return id
     */
    public java.lang.Long getId() {
        return id;
    }


    /**
     * Sets the id value for this Ticket.
     * 
     * @param id
     */
    public void setId(java.lang.Long id) {
        this.id = id;
    }


    /**
     * Gets the utilisateur value for this Ticket.
     * 
     * @return utilisateur
     */
    public gestion.cinema.service.Utilisateur getUtilisateur() {
        return utilisateur;
    }


    /**
     * Sets the utilisateur value for this Ticket.
     * 
     * @param utilisateur
     */
    public void setUtilisateur(gestion.cinema.service.Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Ticket)) return false;
        Ticket other = (Ticket) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.film==null && other.getFilm()==null) || 
             (this.film!=null &&
              this.film.equals(other.getFilm()))) &&
            ((this.id==null && other.getId()==null) || 
             (this.id!=null &&
              this.id.equals(other.getId()))) &&
            ((this.utilisateur==null && other.getUtilisateur()==null) || 
             (this.utilisateur!=null &&
              this.utilisateur.equals(other.getUtilisateur())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getFilm() != null) {
            _hashCode += getFilm().hashCode();
        }
        if (getId() != null) {
            _hashCode += getId().hashCode();
        }
        if (getUtilisateur() != null) {
            _hashCode += getUtilisateur().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Ticket.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://service.cinema.gestion/", "ticket"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("film");
        elemField.setXmlName(new javax.xml.namespace.QName("", "film"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://service.cinema.gestion/", "film"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("id");
        elemField.setXmlName(new javax.xml.namespace.QName("", "id"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "long"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("utilisateur");
        elemField.setXmlName(new javax.xml.namespace.QName("", "utilisateur"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://service.cinema.gestion/", "utilisateur"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
