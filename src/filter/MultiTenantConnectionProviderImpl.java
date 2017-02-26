package filter;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Properties;

import org.hibernate.cfg.AvailableSettings;
import org.hibernate.dialect.Dialect;
import org.hibernate.ejb.connection.InjectedDataSourceConnectionProvider;
import org.hibernate.service.jdbc.connections.spi.AbstractMultiTenantConnectionProvider;
import org.hibernate.service.jdbc.connections.spi.ConnectionProvider;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate3.LocalSessionFactoryBean;

import controller.ApplicationProperties;


@SuppressWarnings({"serial","unused"})
public class MultiTenantConnectionProviderImpl  extends AbstractMultiTenantConnectionProvider{
	private final Map<String, ConnectionProvider> connectionProviders = new HashMap<String, ConnectionProvider>();
	public static String APPLICATION_USER;
	@Override
	protected ConnectionProvider getAnyConnectionProvider() {
		Properties properties = getConnectionProperties(APPLICATION_USER);
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("org.postgresql.Driver");
        try{
        	ds.setUrl(ApplicationProperties.getValue(APPLICATION_USER+".databaseurl"));
        	ds.setUsername(ApplicationProperties.getValue(APPLICATION_USER+".username"));
            ds.setPassword(ApplicationProperties.getValue(APPLICATION_USER+".password"));
        }catch(MissingResourceException resourceException){}
//        LocalSessionFactoryBean asfb = new LocalSessionFactoryBean();
//        asfb.setDataSource(ds);
//        asfb.setHibernateProperties(getHibernateProperties());
        InjectedDataSourceConnectionProvider defaultProvider = new InjectedDataSourceConnectionProvider();
        defaultProvider.setDataSource(ds);
        defaultProvider.configure(properties);
        return (ConnectionProvider) defaultProvider;
	}
//	 public Properties getHibernateProperties() {
//	        Properties properties = new Properties();
//	        properties.put(ApplicationProperties.HIBERNATE_DIALECT.getName(), ApplicationProperties.HIBERNATE_DIALECT.getValue());
//	        properties.put(ApplicationProperties.HIBERNATE_SHOW_SQL.getName(), ApplicationProperties.HIBERNATE_SHOW_SQL.getValue());
//	        properties.put(ApplicationProperties.HIBERNATE_HM2DLL_AUTO.getName(), ApplicationProperties.HIBERNATE_HM2DLL_AUTO.getValue());
//	        return properties;
//	    }
	@Override
	protected ConnectionProvider selectConnectionProvider(String userName) {
		userName=APPLICATION_USER;
		Properties properties = getConnectionProperties(userName);
		DriverManagerDataSource ds = new DriverManagerDataSource();
        try{
        	ds.setDriverClassName("org.postgresql.Driver");
            ds.setUrl(ApplicationProperties.getValue(userName+".databaseurl"));
            ds.setUsername(ApplicationProperties.getValue(userName+".username"));
            ds.setPassword(ApplicationProperties.getValue(userName+".password"));
        }catch(MissingResourceException resourceException){}
		InjectedDataSourceConnectionProvider defaultProvider = new InjectedDataSourceConnectionProvider();
        defaultProvider.setDataSource(ds);
        defaultProvider.configure(properties);
        return (ConnectionProvider) defaultProvider;
	}
	private Properties getConnectionProperties(String userName) {
		APPLICATION_USER = userName;
		Properties properties = new Properties();
		properties.put(AvailableSettings.DIALECT, "org.hibernate.dialect.PostgreSQLDialect");
        properties.put(AvailableSettings.DRIVER, "org.postgresql.Driver");
        try{
        	properties.put(AvailableSettings.URL, ApplicationProperties.getValue(userName+".databaseurl"));
        	properties.put(AvailableSettings.USER, ApplicationProperties.getValue(userName+".username"));
            properties.put(AvailableSettings.PASS, ApplicationProperties.getValue(userName+".password"));
        }catch(MissingResourceException missingResourceException){}
        return properties;
    }
}
