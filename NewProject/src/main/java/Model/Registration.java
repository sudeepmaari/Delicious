package Model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpSession;



public class Registration {

    private Connection con;
    HttpSession se;

    public Registration(HttpSession session) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver"); // load the drivers
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/delicious", "root", "tiger");
            // connection with data base
            se = session;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String Registration(String name, String phone, String email, String pw) {
        PreparedStatement ps;
        String status = "";
        try {
            Statement st = null;
            ResultSet rs = null;
            st = con.createStatement();
            rs = st.executeQuery("select * from customer where phone='" + phone + "' or email='" + email + "';");
            boolean b = rs.next();
            if (b) {
                status = "existed";
            } else {
                ps = (PreparedStatement) con.prepareStatement("insert into customer values(0,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, phone);
                ps.setString(3, email);
                ps.setString(4, pw);
                int a = ps.executeUpdate();
                if (a > 0) {
                    status = "success";
                } else {
                    status = "failure";
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    public String login(String email, String pass) {
        String status1 = "", id = "";
        String name = "", emails = "";

        try {
            Statement st = null;
            ResultSet rs = null;
            st = con.createStatement();

            rs = st.executeQuery("select * from customer where email='" + email + "' and password='" + pass + "'");
            boolean b = rs.next();
            if (b == true) {
                id = rs.getString("cid");
                name = rs.getString("name");
                emails = rs.getString("email");
                se.setAttribute("uname", name);
                se.setAttribute("email", emails);
                se.setAttribute("id", id);
                status1 = "success";
            } else {
                status1 = "failure";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status1;
    }
    
    public Customer getCustomerInfo() {
        Statement st = null;
        ResultSet rs = null;
        Customer c = null;
        try {
            st = con.createStatement();
            rs = st.executeQuery("select * from customer where cid= '" + se.getAttribute("id") + "'");
            boolean b = rs.next();
            if (b == true) {
                c = new Customer();
                c.setName(rs.getString("name"));
                c.setPhone(rs.getString("phone"));
                c.setEmail(rs.getString("email"));
                c.setPassword(rs.getString("password"));
            } else {
                c = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return c;
    }
    
    public String getCustomer(String phone,String email) {
    	Statement st = null;
        ResultSet rs = null;
        boolean b=false;
        try {
            st = con.createStatement();
            rs = st.executeQuery("select * from customer where phone= '"+ phone + "' and email='"+email+"'");
            b = rs.next();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        if (b) {
            return "success";
        } else {
            return "failure";
        }
    }
    
    public String updatePassword(String email,String pass) {
    	PreparedStatement ps = null;
        int a=0;
        try {
            String query="update customer set password=? where email=?";
            ps=con.prepareStatement(query);
            ps.setString(1, pass);
            ps.setString(2, email);
            a=ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(a>0) {
        	return "success";
        }
        else {
        	return "failure";
        }
    }
    
    public List<FoodCategory> getFoodCategoryList(){
    	List<FoodCategory> foodCatList = new ArrayList<FoodCategory>();
    	PreparedStatement ps=null;
    	ResultSet rs=null;
    	FoodCategory f=null;
    	String query="Select *from foodcategory";
    	try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()) {
				f=new FoodCategory();
				f.setFcId(rs.getString("fc_id"));
				f.setFcName(rs.getString("fc_name"));
				f.setFcPic(rs.getString("fc_pic"));
				f.sethId(rs.getString("h_id"));
				foodCatList.add(f);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return foodCatList;
    }
    
    public List<Food> getFoodList(String fId){
    	List<Food> foodList = new ArrayList<Food>();
    	PreparedStatement ps=null;
    	ResultSet rs=null;
    	Food f=null;
    	String query="Select *from food where f_id='"+fId+"'";
    	try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()) {
				f=new Food();
				f.setfId(rs.getString("f_id"));
				f.setFcName(rs.getString("f_name"));
				f.setfPic(rs.getString("f_pic"));
				f.sethId(rs.getString("h_id"));
				f.setfPrice(rs.getDouble("f_price"));
				f.setfName(rs.getString("f_name"));
				f.setFcId(rs.getString("fc_id"));
				foodList.add(f);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return foodList;
    }
}
