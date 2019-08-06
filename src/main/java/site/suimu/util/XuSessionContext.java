package site.suimu.util;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

public class XuSessionContext {
    private static final XuSessionContext instance = new XuSessionContext();
    private HashMap<Object,Object> hashMap;
    //静态工厂方法

    private XuSessionContext() {
        hashMap = new HashMap<Object,Object>();
    }

    public static XuSessionContext getInstance() {
        return instance;
    }

    public synchronized void AddSession(HttpSession session) {
        if (session != null) {
            hashMap.put(session.getId(), session);
        }
    }

    public synchronized void DelSession(HttpSession session) {
        if (session != null) {
            hashMap.remove(session.getId());
        }
    }

    public synchronized HttpSession getSession(String session_id) {
        if (session_id == null)
            return null;
        return (HttpSession) hashMap.get(session_id);
    }
}
