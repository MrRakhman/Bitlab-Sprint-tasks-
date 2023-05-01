package techOrda.bitlab.kz.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import techOrda.bitlab.kz.servlets.db.DBConnection;
import techOrda.bitlab.kz.servlets.db.Item;
import techOrda.bitlab.kz.servlets.db.User;
import techOrda.bitlab.kz.servlets.db.UsersDBConnection;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Item> items = DBConnection.getItems();
        ArrayList<User> users = UsersDBConnection.getUser();
        request.setAttribute("items", items);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }
}
