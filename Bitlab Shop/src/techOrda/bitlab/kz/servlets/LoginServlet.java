package techOrda.bitlab.kz.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import techOrda.bitlab.kz.servlets.db.DBConnection;
import techOrda.bitlab.kz.servlets.db.User;
import techOrda.bitlab.kz.servlets.db.UsersDBConnection;

import java.io.IOException;
import java.util.ArrayList;
@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("signPage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        ArrayList<User> users = UsersDBConnection.getUser();
        boolean found = false;

        for(User user: users){
            if (user.getEmail().equals(email) && user.getPassword().equals(password)){
                request.getSession().setAttribute("fullName", user.getFullName());
                found = true;
                break;
            }
        }
        if (found) {
            response.sendRedirect("/welcome");
        }else{
            request.setAttribute("errorMessage", "Invalid email or Password");
            request.getRequestDispatcher("signPage.jsp").forward(request, response);
        }
    }
}
