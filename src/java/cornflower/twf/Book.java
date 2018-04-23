/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cornflower.twf;

import java.util.ArrayList;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author J-Mo
 */

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement
public class Book {
    @XmlElement(name="bookCopy")
    private ArrayList<Lister> bookCopies = new ArrayList<Lister>();
    
    // Fields
    private String isbn;

    // Constructors
    public Book() {
        super();
    }

    public Book(String username, String email, String password) {
        super();
        this.username = username;
        this.email = email;
        this.password = password;
    }


    // Getters & Setters
    public String getUsername() {
        return username;
    }
    
    public String getEmail() {
        return email;
    }
    
    public String getPassword() {
        return password;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
