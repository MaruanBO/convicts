package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class PersonaDAO {
   
    PreparedStatement ps;
    ResultSet rs;
    connection c = new connection();
    Connection con;
    
    public List lista(){
        List<Persona>lista=new ArrayList<>();
        String sql="select * from convicto ";     
        try{
            con=c.connect();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Persona p = new Persona();
                p.setId(rs.getString(1));
                p.setFecha_nacimiento(rs.getString(2));
                p.setApellido(rs.getString(3));
                p.setNombre(rs.getString(4));
                p.setGenero(rs.getString(5));
                p.setFoto(rs.getString(6));
                p.setPais(rs.getString(7));
                p.setNacionalidad(rs.getString(4));
                lista.add(p);
            }
        } catch (Exception e){
            }
        return lista;
    }
    public int agregar(Persona p){
        int r=0;
        String sql="insert into convicto (ID_CONVICTO,FECHA_NACIMIENTO,APELLIDO,NOMBRE,GENERO,FOTO,PAIS,NACIONALIDAD) values(?,?,?,?,?,?,?,?)";
        try{
            con=c.connect();
            ps=con.prepareStatement(sql);
            ps.setString(1, p.getId());
            ps.setString(2, p.getFecha_nacimiento());
            ps.setString(3, p.getApellido());
            ps.setString(4, p.getNombre()); 
            ps.setString(5, p.getGenero()); 
            ps.setString(6, p.getFoto()); 
            ps.setString(7, p.getPais()); 
            ps.setString(8, p.getNacionalidad()); 
            
            r=ps.executeUpdate();
            
            if (r==1){
                r=1;
            } else{
                r=0;
            }
        } catch (Exception e){
            }        
        return r;
    }
    
    public Persona listarId(String id){
        String sql = "select * from convicto where ID_CONVICTO="+id;
        Persona p = new Persona();
        try{
            con=c.connect();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
          
            while(rs.next()){
               p.setId(rs.getString(1));
               p.setNombre(rs.getString(3));
               p.setApellido(rs.getString(4));
               p.setFecha_nacimiento(rs.getString(2));
               p.setGenero(rs.getString(5));
               p.setFoto(rs.getString(6));
               p.setPais(rs.getString(7));
               p.setNacionalidad(rs.getString(8));              
            }
        } catch (Exception e){
            }
        return p;       
    }

    public Persona listarIncidencia(String id){
        String sql = "select * from sentencia where ID_CONVICTO="+id;
        Persona p = new Persona();
        try{
            con=c.connect();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
          
            while(rs.next()){
               p.setId(rs.getString(1));
               p.setSentencia(rs.getString(2));              
            }
        } catch (Exception e){
            }
        return p;       
    }
    public int actualizar(Persona p){
        
        int r=0;
        String sql="update convicto set FECHA_NACIMIENTO=?,APELLIDO=?,NOMBRE=?,GENERO=?,FOTO=?,PAIS=?,NACIONALIDAD=? where ID_CONVICTO=?";
        
        try{
            
            con=c.connect();
            ps=con.prepareStatement(sql);  
            
            ps.setString(1, p.getFecha_nacimiento());
            ps.setString(2, p.getApellido());
            ps.setString(3, p.getNombre());
            ps.setString(4, p.getGenero());
            ps.setString(5, p.getFoto());
            ps.setString(6, p.getPais());
            ps.setString(7, p.getNacionalidad());
            ps.setString(8, p.getId());
            
            r=ps.executeUpdate();    
            if (r==1){
                r=1;
            } else{
                r=0;
            }
        } catch (Exception e){
            }        
        return r;     
    }
        public int actualizarIncidencia(Persona p){
        
        int r=0;
        String sql="update sentencia set motivo = ? where ID_CONVICTO=?";
        
        try{
            
            con=c.connect();
            ps=con.prepareStatement(sql);  
            
            ps.setString(1, p.getSentencia());
            ps.setString(2, p.getId());
            
            r=ps.executeUpdate();    
            if (r==1){
                r=1;
            } else{
                r=0;
            }
        } catch (Exception e){
            }        
        return r;     
    }
    public void delete(String id){
        String sql="delete from convicto where id_convicto="+id;
        try{          
            con=c.connect();
            ps=con.prepareStatement(sql);  
            ps.executeUpdate();
        } catch (Exception e){
            }        
    }
}
