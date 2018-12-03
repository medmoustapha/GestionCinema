/**
 * Salle.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package gestion.cinema.service;

public class Salle  implements java.io.Serializable {
    private gestion.cinema.service.Cinema cinema;

    private java.lang.String disponible;

    private java.lang.String etat;

    private java.lang.Long id;

    private int nbPlaces;

    public Salle() {
    }

    public Salle(
           gestion.cinema.service.Cinema cinema,
           java.lang.String disponible,
           java.lang.String etat,
           java.lang.Long id,
           int nbPlaces) {
           this.cinema = cinema;
           this.disponible = disponible;
           this.etat = etat;
           this.id = id;
           this.nbPlaces = nbPlaces;
    }


    /**
     * Gets the cinema value for this Salle.
     * 
     * @return cinema
     */
    public gestion.cinema.service.Cinema getCinema() {
        return cinema;
    }


    /**
     * Sets the cinema value for this Salle.
     * 
     * @param cinema
     */
    public void setCinema(gestion.cinema.service.Cinema cinema) {
        this.cinema = cinema;
    }


    /**
     * Gets the disponible value for this Salle.
     * 
     * @return disponible
     */
    public java.lang.String getDisponible() {
        return disponible;
    }


    /**
     * Sets the disponible value for this Salle.
     * 
     * @param disponible
     */
    public void setDisponible(java.lang.String disponible) {
        this.disponible = disponible;
    }


    /**
     * Gets the etat value for this Salle.
     * 
     * @return etat
     */
    public java.lang.String getEtat() {
        return etat;
    }


    /**
     * Sets the etat value for this Salle.
     * 
     * @param etat
     */
    public void setEtat(java.lang.String etat) {
        this.etat = etat;
    }


    /**
     * Gets the id value for this Salle.
     * 
     * @return id
     */
    public java.lang.Long getId() {
        return id;
    }


    /**
     * Sets the id value for this Salle.
     * 
     * @param id
     */
    public void setId(java.lang.Long id) {
        this.id = id;
    }


    /**
     * Gets the nbPlaces value for this Salle.
     * 
     * @return nbPlaces
     */
    public int getNbPlaces() {
        return nbPlaces;
    }


    /**
     * Sets the nbPlaces value for this Salle.
     * 
     * @param nbPlaces
     */
    public void setNbPlaces(int nbPlaces) {
        this.nbPlaces = nbPlaces;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Salle)) return false;
        Salle other = (Salle) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.cinema==null && other.getCinema()==null) || 
             (this.cinema!=null &&
              this.cinema.equals(other.getCinema()))) &&
            ((this.disponible==null && other.getDisponible()==null) || 
             (this.disponible!=null &&
              this.disponible.equals(other.getDisponible()))) &&
            ((this.etat==null && other.getEtat()==null) || 
             (this.etat!=null &&
              this.etat.equals(other.getEtat()))) &&
            ((this.id==null && other.getId()==null) || 
             (this.id!=null &&
              this.id.equals(other.getId()))) &&
            this.nbPlaces == other.getNbPlaces();
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
        if (getCinema() != null) {
            _hashCode += getCinema().hashCode();
        }
        if (getDisponible() != null) {
            _hashCode += getDisponible().hashCode();
        }
        if (getEtat() != null) {
            _hashCode += getEtat().hashCode();
        }
        if (getId() != null) {
            _hashCode += getId().hashCode();
        }
        _hashCode += getNbPlaces();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Salle.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://service.cinema.gestion/", "salle"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cinema");
        elemField.setXmlName(new javax.xml.namespace.QName("", "cinema"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://service.cinema.gestion/", "cinema"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("disponible");
        elemField.setXmlName(new javax.xml.namespace.QName("", "disponible"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("etat");
        elemField.setXmlName(new javax.xml.namespace.QName("", "etat"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
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
        elemField.setFieldName("nbPlaces");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nbPlaces"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
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
