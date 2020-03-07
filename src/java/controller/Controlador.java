/*
 * @author Maruan
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;
import modelo.PersonaDAO;

public class Controlador extends HttpServlet {

   
    PersonaDAO dao = new PersonaDAO();
    Persona p = new Persona();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String accion = request.getParameter("accion");
            switch(accion){
                case "Listar":
                    List<Persona>datos=dao.lista();
                    request.setAttribute("datos", datos);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
                case "Nuevo":
                    request.getRequestDispatcher("add.jsp").forward(request, response);
                    break;
                
                case "Guardar":
                    
                    String id= request.getParameter("txtid");
                    String nombre= request.getParameter("txtnombre");
                    String fecha_nacimiento= request.getParameter("txtfecha");
                    String apellido= request.getParameter("txtapellido");
                    String foto= request.getParameter("txtfoto");
                    String pais= request.getParameter("txtpais");
                    String nacionalidad= request.getParameter("txtnacionalidad");
                    String genero= request.getParameter("txtgenero");
                    
                    p.setId(id);
                    p.setNombre(nombre);
                    p.setFecha_nacimiento(fecha_nacimiento);
                    p.setFoto(foto);
                    p.setGenero(genero);
                    p.setNacionalidad(nacionalidad);
                    p.setPais(pais);
                    p.setApellido(apellido);
                    
                    dao.agregar(p);
                    request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                    
                    break;
                
                case "Editar":
                    
                    String ide=request.getParameter("id");
                    Persona pe=dao.listarId(ide);
                    request.setAttribute("persona", pe);
                    request.getRequestDispatcher("edit.jsp").forward(request, response);
                    break;
                
                    
                case "Incidencia":               
                    String ide3=request.getParameter("txtid");
                    Persona pe2=dao.listarIncidencia(ide3);
                    request.setAttribute("persona", pe2);
                    request.getRequestDispatcher("incidencia.jsp").forward(request, response);
                    break;
                    
                case "Actualizar":
                    
                    String id1= request.getParameter("txtid");
                    String nombre1= request.getParameter("txtnombre");
                    String apellido1= request.getParameter("txtapellido");
                    String fecha_nacimiento1= request.getParameter("txtfecha");
                    String pais1= request.getParameter("txtpais");
                    String nacionalidad1= request.getParameter("txtnacionalidad");
                    String foto1= request.getParameter("txtfoto");
                    String genero1= request.getParameter("txtgenero");
                    
                    p.setId(id1);
                    p.setNombre(nombre1);
                    p.setApellido(apellido1);
                    p.setFecha_nacimiento(fecha_nacimiento1);
                    p.setPais(pais1);
                    p.setNacionalidad(nacionalidad1);
                    p.setFoto(foto1);                   
                    p.setGenero(genero1);
                    
                    dao.actualizar(p);
                    request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                    break;
                case "Delete":
                    String id2=request.getParameter("id");
                    dao.delete(id2);
                    request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                    break;
                
                case "Cambiar incidencia":
                    
                    String id3= request.getParameter("txtid_sentencia");
                    String incidencia= request.getParameter("txtincidencia");
                    p.setId(id3);
                    p.setSentencia(incidencia);
                    dao.actualizar(p);
                    request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                    break;
                case "Atras":
                    request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                    
                default:
                    throw new AssertionError();
            }              
    }

    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
