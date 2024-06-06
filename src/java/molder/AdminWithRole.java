/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package molder;

/**
 *
 * @author hungp
 */
public class AdminWithRole {
    private Admin admin;
    private Role role;

    public AdminWithRole() {
    }

    public AdminWithRole(Admin admin, Role role) {
        this.admin = admin;
        this.role = role;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "AdminWithRole{" + "admin=" + admin + ", role=" + role + '}';
    }
    
}
