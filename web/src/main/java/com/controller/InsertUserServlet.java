package com.controller;

import com.util.DataSourceUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/insert")
public class InsertUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newName = req.getParameter("name");
        String newContent = req.getParameter("content");
        String sql = "insert into user(name,content) values (?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, newName);
            st.setString(2, newContent);
            st.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+ "/index");
       /* String sql="insert into news(name,content) values(?,?)";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql);){
            ps.setString(1,req.getParameter("name"));
            ps.setString(2,req.getParameter("content"));
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }*/
    }
}