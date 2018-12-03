/**
 * Utilisateur.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package gestion.cinema.service;

public class Utilisateur  implements java.io.Serializable {
    private java.lang.Long id;

    private java.lang.String login;

    private java.lang.String motPass;

    private java.lang.String nom;

    private java.lang.String prenom;

    private java.lang.String role;

    private java.lang.String telephone;

    public Utilisateur() {
    }

    public Utilisateur(
           java.lang.Long id,
           java.lang.String login,
           java.lang.String motPass,
           java.lang.String nom,
           java.lang.String prenom,
           java.lang.String role,
           java.lang.String telephone) {
           this.id = id;
           this.login = login;
           this.motPass = motPass;
           this.nom = nom;
           this.prenom = prenom;
           this.role = role;
           this.telephone = telephone;
    }


    /**
     * Gets the id value for this Utilisateur.
     * 
     * @return id
     */
    public java.lang.Long getId() {
        return id;
    }


    /**
     * Sets the id value for this Utilisateur.
     * 
     * @param id
     */
    public void setId(java.lang.Long id) {
        this.id = id;
    }


    /**
     * Gets the login value for this Utilisateur.
     * 
     * @return login
     */
    public java.lang.String getLogin() {
        return login;
    }


    /**
     * Sets the login value for this Utilisateur.
     * 
     * @param login
     */
    public void setLogin(java.lang.String login) {
        this.login = login;
    }


    /**
     * Gets the motPass value for this Utilisateur.
     * 
     * @return motPass
     */
    public java.lang.String getMotPass() {
        return motPass;
    }


    /**
     * Sets the motPass value for this Utilisateur.
     * 
     * @param motPass
     */
    public void setMotPass(java.lang.String motPass) {
        this.motPass = motPass;
    }


    /**
     * Gets the nom value for this Utilisateur.
     * 
     * @return nom
     */
    public java.lang.String getNom() {
        return nom;
    }


    /**
     * Sets the nom value for this Utilisateur.
     * 
     * @param nom
     */
    public void setNom(java.lang.String nom) {
        this.nom = nom;
    }


    /**
     * Gets the prenom value for this Utilisateur.
     * 
     * @return prenom
     */
    public java.lang.String getPrenom() {
        return prenom;
    }


    /**
     * Sets the prenom value for this Utilisateur.
     * 
     * @param prenom
     */
    public void setPrenom(java.lang.String prenom) {
        this.prenom = prenom;
    }


    /**
     * Gets the role value for this Utilisateur.
     * 
     * @return role
     */
    public java.lang.String getRole() {
        return role;
    }


    /**
     * Sets the role value for this Utilisateur.
     * 
     * @param role
     */
    public void setRole(java.lang.String role) {
        this.role = role;
    }


    /**
     * Gets the telephone value for this Utilisateur.
     * 
     * @return telephone
     */
    public java.lang.String getTelephone() {
        return telephone;
    }


    /**
     * Sets the telephone value for this Utilisateur.
     * 
     * @param telephone
     */
    public void setTelephone(java.lang.String telephone) {
        this.telephone = telephone;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Utilisateur)) return false;
        Utilisateur other = (Utilisateur) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.id==null && other.getId()==null) || 
             (this.id!=null &&
              this.id.equals(other.getId()))) &&
            ((this.login==null && other.getLogin()==null) || 
             (this.login!=null &&
              this.login.equals(other.getLogin()))) &&
            ((this.motPass==null && other.getMotPass()==null) || 
             (this.motPass!=null &&
              this.motPass.equals(other.getMotPass()))) &&
            ((this.nom==null && other.getNom()==null) || 
             (this.nom!=null &&
              this.nom.equals(other.getNom()))) &&
            ((this.prenom==null && other.getPrenom()==null) || 
             (this.prenom!=null &&
              this.prenom.equals(other.getPrenom()))) &&
            ((this.role==null && other.getRole()==null) || 
             (this.role!=null &&
              this.role.equals(other.getRole()))) &&
            ((this.telephone==null && other.getTelephone()==null) || 
             (this.telephone!=null &&
              this.telephone.equals(other.getTelephone())));
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
        if (getId() != null) {
            _hashCode += getId().hashCode();
        }
        if (getLogin() != null) {
            _hashCode += getLogin().hashCode();
        }
        if (getMotPass() != null) {
            _hashCode += getMotPass().hashCode();
        }
        if (getNom() != null) {
            _hashCode += getNom().hashCode();
        }
        if (getPrenom() != null) {
            _hashCode += getPrenom().hashCode();
        }
        if (getRole() != null) {
            _hashCode += getRole().hashCode();
        }
        if (getTelephone() != null) {
            _hashCode += getTelephone().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Utilisateur.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://service.cinema.gestion/", "utilisateur"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("id");
        elemField.setXmlName(new javax.xml.namespace.QName("", "id"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "long"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("login");
        elemField.setXmlName(new javax.xml.namespace.QName("", "login"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("motPass");
        elemField.setXmlName(new javax.xml.namespace.QName("", "motPass"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nom");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nom"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("prenom");
        elemField.setXmlName(new javax.xml.namespace.QName("", "prenom"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("role");
        elemField.setXmlName(new javax.xml.namespace.QName("", "role"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("telephone");
        elemField.setXmlName(new javax.xml.namespace.QName("", "telephone"));
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
