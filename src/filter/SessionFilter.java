package filter;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.PropertyConfigurator;




public class SessionFilter implements Filter {
	 
     
    public void destroy() {
    	System.out.println("Destroy Called");
    }
 
    @SuppressWarnings("static-access")
	public void doFilter(ServletRequest req, ServletResponse res,FilterChain chain) throws IOException, ServletException {
    	HttpServletResponse response = (HttpServletResponse) res;
        HttpServletRequest request = (HttpServletRequest) req;
        String url = request.getServletPath();
        if(url.contains("ProcessLogin.htm") || url.contains("index.jsp")){
        	chain.doFilter(req, res);
        	String application = request.getRequestURL().toString();
        	String BankShortCode = application.split("/")[3];
        	MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
        	impl.APPLICATION_USER = BankShortCode;
        	configureLog4J(BankShortCode);
        	
//        	RequestDispatcher view=request.getRequestDispatcher("index.jsp?statusCheck=sessionexpired");
//			view.forward(request, response);
        }
        else{ 
        	HttpSession session = request.getSession(false);
        	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
        	SimpleDateFormat simpleTimeFormat = new SimpleDateFormat("HH:mm:ss");
        	java.util.Calendar cal = java.util.Calendar.getInstance();
        	Date date = cal.getTime();
        	String time  = simpleTimeFormat.format(cal.getTime());
        	try{
        		if(session ==null || !request.isRequestedSessionIdValid()){
        			if(request.getSession().getAttribute("Role").toString() == null || request.getSession().getAttribute("Role").toString().equalsIgnoreCase("")){
        				RequestDispatcher view=request.getRequestDispatcher("index.jsp?statusCheck=sessionexpired");
        				view.forward(request, response);
        			}
        			request.getSession().setAttribute("sysdate", simpleDateFormat.format(date));
        			request.getSession().setAttribute("systime", time);
        			RequestDispatcher view=request.getRequestDispatcher("index.jsp?statusCheck=sessionexpired");
        			view.forward(request, response);
        		}else{
        			request.getSession().setAttribute("sysdate", simpleDateFormat.format(date));
        			request.getSession().setAttribute("systime", time);
        			MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
        			if(impl.APPLICATION_USER == "" || impl.APPLICATION_USER.equalsIgnoreCase(null) ){// If DATABASE IS NOT SET FOR MULTITENANCY
        				RequestDispatcher view=request.getRequestDispatcher("index.jsp?statusCheck=sessionexpired");
        				view.forward(request, response);
        			}
        			chain.doFilter(req, res);
        		}
        	}catch(NullPointerException ne){
        		RequestDispatcher view=request.getRequestDispatcher("index.jsp?statusCheck=sessionexpired");view.forward(request, response);
        		}	
        } 
    }
 
    @SuppressWarnings("static-access")
	public void init(FilterConfig config) throws ServletException {
    }
    private void configureLog4J(String contextName) {
        Properties props = new Properties();
        try {
           InputStream configStream = getClass().getResourceAsStream("/log4j.properties");
           props.load(configStream);
           configStream.close();
        } catch(IOException e) {
           System.out.println("FATAL! Cannot load log4j configuration file from classpath.");
           e.printStackTrace(System.out);
        }
        String debugFile = props.getProperty("log4j.appender.debug.File");
        debugFile=debugFile.replace("Server", contextName);
        props.setProperty("log4j.appender.debug.File", debugFile);
        
        String infoFile = props.getProperty("log4j.appender.info.File");
        infoFile=infoFile.replace("Server", contextName);
        props.setProperty("log4j.appender.info.File", infoFile);
        
        String errorFile = props.getProperty("log4j.appender.error.File");
        errorFile=errorFile.replace("Server", contextName);
        props.setProperty("log4j.appender.error.File", errorFile);
        
        
        String fatalFile = props.getProperty("log4j.appender.fatal.File");
        fatalFile=fatalFile.replace("Server", contextName);
        props.setProperty("log4j.appender.fatal.File", fatalFile);
        
        /*String traceFile = props.getProperty("log4j.appender.trace.File");
        traceFile=traceFile.replace("Server", contextName);
        props.setProperty("log4j.appender.trace.File", traceFile);*/
        
        LogManager.resetConfiguration();
        PropertyConfigurator.configure(props);
      }
}

