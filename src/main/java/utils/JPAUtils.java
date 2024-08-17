package utils;

import java.awt.Component;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.swing.JOptionPane;

import entities.User;

public class JPAUtils {	
	public static EntityManagerFactory getFactory() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("cuongddph14896_assimant");
		return factory;
	}
	public static EntityManager getEntityManager() {
		EntityManager em = JPAUtils.getFactory().createEntityManager();
		return em;
	}
	public static boolean confirm(Component parent, String message) {
        int result = JOptionPane.showConfirmDialog(parent, message, "Hệ thống", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
        return result == JOptionPane.YES_OPTION;
	}
}
