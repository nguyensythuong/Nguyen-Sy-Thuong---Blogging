/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import context.DBContext;
import entity.Blog;
import entity.MonthYear;
import entity.Share;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Win 10
 */
public class DAO {
    Connection conn=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    
    public List<Share> getShare(){
        List<Share> list=new ArrayList<>();
        String query="Select * from Share";
        try {
            conn=new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Share(rs.getString(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Blog> getTop3(){
        List<Blog> list=new ArrayList<>();
        String query="Select top 3 *  from Blog order by date desc";
        try {
            conn=new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Blog(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
        
    }

    public List<Blog> getBlogMonth(String month,int year){
        List<Blog> list =new ArrayList<>();
        String query="with T as(select *, datename(month,[date]) as [month] , year([date]) as [year] from Blog) \n" +
" select * from T where [month]=? and [year]=? order by [date] desc ";
        try {
            conn=new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            ps.setString(1, month);
            ps.setInt(2, year);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Blog(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Blog getOne(int id){
        String query="Select * from Blog where id=?";
        try {
            conn=new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            ps.setInt(1, id);
            rs=ps.executeQuery();
            while(rs.next()){
                return new Blog(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public int countMonth(){
        String query="Select count(*) from Month";
        try {
            conn=new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
    public List<MonthYear> getMonthByPaging(int index){
        List<MonthYear> list= new ArrayList<>();
        String query="with T as (select DATENAME(MONTH,DATEADD(month,[month],-1)) as [month]\n" +
",[year],ROW_NUMBER() over(order by [year] desc,[month] desc) as[row] from Month)\n" +
"Select * from T where [row] between ? and ?";
        try {
            conn=new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            ps.setInt(1, index*3-2);
            ps.setInt(2, index*3);
            rs=ps.executeQuery();
            while(rs.next()){
                String month=rs.getString(1);
                int year=rs.getInt(2);
                DAO dao=new DAO();
                List<Blog> listB=dao.getBlogMonth(month,year);
                list.add(new MonthYear(month, year, listB));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public  int getViews(){
        String query="Select * from [view]";
        try {
            conn=new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
    public void updateViews(){
        String query="Update [view]\n" +
        "set viewed=viewed+1";
        try {
            conn=new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
        } catch (Exception e) {
        }
    }
    
    
    public static void main(String[] args) {
        DAO dao=new DAO();
//        List<MonthYear> list=dao.getMonthByPaging(1);
//        for (MonthYear m : list) {
//            System.out.println(m);
//        }
        List<MonthYear> listM=dao.getMonthByPaging(1);
        System.out.println(listM);;
        
       
       
    }
    //    public List<MonthYear> getListMonth(){
//        List<MonthYear> list= new ArrayList<>();
//        String query="with T as (select distinct datename(month,[date]) as [month]  , year([date]) as[year]  from Blog) \n" +
//"select * from T order by [year] desc,[month]asc";
//        try {
//            conn=new DBContext().getConnection();
//            ps=conn.prepareStatement(query);
//            rs=ps.executeQuery();
//            while(rs.next()){
//                String month=rs.getString(1);
//                int year=rs.getInt(2);
//                DAO dao=new DAO();
//                List<Blog> listB=dao.getBlogMonth(month,year);
//                list.add(new MonthYear(month, year, listB));
//                
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
}
