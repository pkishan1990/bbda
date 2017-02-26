package filter;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;


public class UserSessionListener implements HttpSessionAttributeListener{
	
	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
	}
	
	
}