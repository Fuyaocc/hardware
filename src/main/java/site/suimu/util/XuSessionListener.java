package site.suimu.util;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.HashMap;
import java.util.Map;

public class XuSessionListener implements HttpSessionListener {
    public static Map<Object, Object> userMap = new HashMap<Object, Object>();
    private XuSessionContext xsc = XuSessionContext.getInstance();

    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        xsc.AddSession(httpSessionEvent.getSession());
    }

    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        HttpSession session = httpSessionEvent.getSession();
        xsc.DelSession(session);
    }

}
