package com.filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * @author zzh
 * @description
 * @date
 */
//@WebFilter("/login")
public class Myfilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("初始化");
    }

    @Override
    public void destroy() {
        System.out.println("销毁");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
      servletRequest.setCharacterEncoding("utf-8");
      servletResponse.setCharacterEncoding("utf-8");
      servletResponse.setContentType("text/html;charset=utf-8");

    }
}
