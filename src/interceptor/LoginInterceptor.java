package interceptor;

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
  
import org.springframework.web.servlet.HandlerInterceptor;  
import org.springframework.web.servlet.ModelAndView;

import entity.User;  
/** 
 * ��¼��֤�������� 
 */  
public class LoginInterceptor implements HandlerInterceptor{  
  
    /** 
     * Handlerִ�����֮������������ 
     */  
    public void afterCompletion(HttpServletRequest request,  
            HttpServletResponse response, Object handler, Exception exc)  
            throws Exception {  
          
    }  
  
    /** 
     * Handlerִ��֮��ModelAndView����֮ǰ����������� 
     */  
    public void postHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler, ModelAndView modelAndView) throws Exception {  
    }  
  
    /** 
     * Handlerִ��֮ǰ����������� 
     */  
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler) throws Exception {  
        //��ȡ�����URL  
        String url = request.getRequestURI();  
        //URL:login.jsp�ǹ�����;���demo�ǳ���login.jsp�ǿ��Թ������ʵģ�������URL���������ؿ���  
        if(url.indexOf("userlogin")>=0){  
            return true;  
        }  
        //��ȡSession  
        HttpSession session = request.getSession();  
       User user = (User)session.getAttribute("user");  
          
        if(user != null){  
            return true;  
        }  
        //�����������ģ���ת����¼����  
        request.getRequestDispatcher("/admin/addChoice.jsp").forward(request, response);  
          
        return false;  
    }  
  
}  