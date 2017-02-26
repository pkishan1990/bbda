package controller;

import java.util.Enumeration;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/**
 * @author 
 *
 */
public class ApplicationProperties {
    public static String elementTag="";
	private static final String BUNDLE_NAME = "application"; //$NON-NLS-1$
    
    private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle.getBundle(BUNDLE_NAME);
    /**
     * Default Constructor
     *
     */
    private ApplicationProperties() {
    }

    public static String getValue(String key) {
       
        try {
           return RESOURCE_BUNDLE.getString(key);
        } catch (MissingResourceException e) {
           return '@' + key + '@';
        }
    }
   
    public static Enumeration<String> getKeys() {
        try {
            return RESOURCE_BUNDLE.getKeys();
        } catch (MissingResourceException e) {
            e.printStackTrace();
            return null;
        }
    }
  public static String getValue(String key,String bundleName) {
       
        try {
           
           return ResourceBundle.getBundle(bundleName).getString(key);
        } catch (MissingResourceException e) {
            e.printStackTrace();
           return '@' + key + '@';
        }
    }
   
}

