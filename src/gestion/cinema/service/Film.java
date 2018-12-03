/**
 * Film.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package gestion.cinema.service;

public class Film  implements java.io.Serializable {
    private java.lang.String acteur;

    private int anneeSortie;

    private gestion.cinema.service.Cinema cinema;

    private java.lang.String dateProjection;

    private int duree;

    private java.lang.String genre;

    private java.lang.Long id;

    private java.lang.Double montant;

    private java.lang.String realisateur;

    private gestion.cinema.service.Salle salle;

    private java.lang.String titre;

    public Film() {
    }

    public Film(
           java.lang.String acteur,
           int anneeSortie,
           gestion.cinema.service.Cinema cinema,
           java.lang.String dateProjection,
           int duree,
           java.lang.String genre,
           java.lang.Long id,
           java.lang.Double montant,
           java.lang.String realisateur,
           gestion.cinema.service.Salle salle,
           java.lang.String titre) {
           this.acteur = acteur;
           this.anneeSortie = anneeSortie;
           this.cinema = cinema;
           this.dateProjection = dateProjection;
           this.duree = duree;
           this.genre = genre;
           this.id = id;
           this.montant = montant;
           this.realisateur = realisateur;
           this.salle = salle;
           this.titre = titre;
    }


    /**
     * Gets the acteur value for this Film.
     * 
     * @return acteur
     */
    public java.lang.String getActeur() {
        return acteur;
    }


    /**
     * Sets the acteur value for this Film.
     * 
     * @param acteur
     */
    public void setActeur(java.lang.String acteur) {
        this.acteur = acteur;
    }


    /**
     * Gets the anneeSortie value for this Film.
     * 
     * @return anneeSortie
     */
    public int getAnneeSortie() {
        return anneeSortie;
    }


    /**
     * Sets the anneeSortie value for this Film.
     * 
     * @param anneeSortie
     */
    public void setAnneeSortie(int anneeSortie) {
        this.anneeSortie = anneeSortie;
    }


    /**
     * Gets the cinema value for this Film.
     * 
     * @return cinema
     */
    public gestion.cinema.service.Cinema getCinema() {
        return cinema;
    }


    /**
     * Sets the cinema value for this Film.
     * 
     * @param cinema
     */
    public void setCinema(gestion.cinema.service.Cinema cinema) {
        this.cinema = cinema;
    }


    /**
     * Gets the dateProjection value for this Film.
     * 
     * @return dateProjection
     */
    public java.lang.String getDateProjection() {
        return dateProjection;
    }


    /**
     * Sets the dateProjection value for this Film.
     * 
     * @param dateProjection
     */
    public void setDateProjection(java.lang.String dateProjection) {
        this.dateProjection = dateProjection;
    }


    /**
     * Gets the duree value for this Film.
     * 
     * @return duree
     */
    public int getDuree() {
        return duree;
    }


    /**
     * Sets the duree value for this Film.
     * 
     * @param duree
     */
    public void setDuree(int duree) {
        this.duree = duree;
    }


    /**
     * Gets the genre value for this Film.
     * 
     * @return genre
     */
    public java.lang.String getGenre() {
        return genre;
    }


    /**
     * Sets the genre value for this Film.
     * 
     * @param genre
     */
    public void setGenre(java.lang.String genre) {
        this.genre = genre;
    }


    /**
     * Gets the id value for this Film.
     * 
     * @return id
     */
    public java.lang.Long getId() {
        return id;
    }


    /**
     * Sets the id value for this Film.
     * 
     * @param id
     */
    public void setId(java.lang.Long id) {
        this.id = id;
    }


    /**
     * Gets the montant value for this Film.
     * 
     * @return montant
     */
    public java.lang.Double getMontant() {
        return montant;
    }


    /**
     * Sets the montant value for this Film.
     * 
     * @param montant
     */
    public void setMontant(java.lang.Double montant) {
        this.montant = montant;
    }


    /**
     * Gets the realisateur value for this Film.
     * 
     * @return realisateur
     */
    public java.lang.String getRealisateur() {
        return realisateur;
    }


    /**
     * Sets the realisateur value for this Film.
     * 
     * @param realisateur
     */
    public void setRealisateur(java.lang.String realisateur) {
        this.realisateur = realisateur;
    }


    /**
     * Gets the salle value for this Film.
     * 
     * @return salle
     */
    public gestion.cinema.service.Salle getSalle() {
        return salle;
    }


    /**
     * Sets the salle value for this Film.
     * 
     * @param salle
     */
    public void setSalle(gestion.cinema.service.Salle salle) {
        this.salle = salle;
    }


    /**
     * Gets the titre value for this Film.
     * 
     * @return titre
     */
    public java.lang.String getTitre() {
        return titre;
    }


    /**
     * Sets the titre value for this Film.
     * 
     * @param titre
     */
    public void setTitre(java.lang.String titre) {
        this.titre = titre;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Film)) return false;
        Film other = (Film) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.acteur==null && other.getActeur()==null) || 
             (this.acteur!=null &&
              this.acteur.equals(other.getActeur()))) &&
            this.anneeSortie == other.getAnneeSortie() &&
            ((this.cinema==null && other.getCinema()==null) || 
             (this.cinema!=null &&
              this.cinema.equals(other.getCinema()))) &&
            ((this.dateProjection==null && other.getDateProjection()==null) || 
             (this.dateProjection!=null &&
              this.dateProjection.equals(other.getDateProjection()))) &&
            this.duree == other.getDuree() &&
            ((this.genre==null && other.getGenre()==null) || 
             (this.genre!=null &&
              this.genre.equals(other.getGenre()))) &&
            ((this.id==null && other.getId()==null) || 
             (this.id!=null &&
              this.id.equals(other.getId()))) &&
            ((this.montant==null && other.getMontant()==null) || 
             (this.montant!=null &&
              this.montant.equals(other.getMontant()))) &&
            ((this.realisateur==null && other.getRealisateur()==null) || 
             (this.realisateur!=null &&
              this.realisateur.equals(other.getRealisateur()))) &&
            ((this.salle==null && other.getSalle()==null) || 
             (this.salle!=null &&
              this.salle.equals(other.getSalle()))) &&
            ((this.titre==null && other.getTitre()==null) || 
             (this.titre!=null &&
              this.titre.equals(other.getTitre())));
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
        if (getActeur() != null) {
            _hashCode += getActeur().hashCode();
        }
        _hashCode += getAnneeSortie();
        if (getCinema() != null) {
            _hashCode += getCinema().hashCode();
        }
        if (getDateProjection() != null) {
            _hashCode += getDateProjection().hashCode();
        }
        _hashCode += getDuree();
        if (getGenre() != null) {
            _hashCode += getGenre().hashCode();
        }
        if (getId() != null) {
            _hashCode += getId().hashCode();
        }
        if (getMontant() != null) {
            _hashCode += getMontant().hashCode();
        }
        if (getRealisateur() != null) {
            _hashCode += getRealisateur().hashCode();
        }
        if (getSalle() != null) {
            _hashCode += getSalle().hashCode();
        }
        if (getTitre() != null) {
            _hashCode += getTitre().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Film.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://service.cinema.gestion/", "film"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("acteur");
        elemField.setXmlName(new javax.xml.namespace.QName("", "acteur"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("anneeSortie");
        elemField.setXmlName(new javax.xml.namespace.QName("", "anneeSortie"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cinema");
        elemField.setXmlName(new javax.xml.namespace.QName("", "cinema"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://service.cinema.gestion/", "cinema"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("dateProjection");
        elemField.setXmlName(new javax.xml.namespace.QName("", "dateProjection"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("duree");
        elemField.setXmlName(new javax.xml.namespace.QName("", "duree"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("genre");
        elemField.setXmlName(new javax.xml.namespace.QName("", "genre"));
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
        elemField.setFieldName("montant");
        elemField.setXmlName(new javax.xml.namespace.QName("", "montant"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "double"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("realisateur");
        elemField.setXmlName(new javax.xml.namespace.QName("", "realisateur"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("salle");
        elemField.setXmlName(new javax.xml.namespace.QName("", "salle"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://service.cinema.gestion/", "salle"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("titre");
        elemField.setXmlName(new javax.xml.namespace.QName("", "titre"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
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
