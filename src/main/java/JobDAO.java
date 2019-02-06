import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.sql.DataSource;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.ws.RequestWrapper;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@ManagedBean(name="bean")
@SessionScoped
public class JobDAO implements Serializable {
    Connection con = ConnectionManger.getConnection();
    String selectJob = "select*from JOB where POSTEDBY=?";
    private DataSource dataSource;
public JobDAO(){}
    public JobDAO(DataSource dataSource){
        this.dataSource = dataSource;

    }
    @RequestWrapper
public List<Job>list(int id){
        List<Job> jobs=new ArrayList<Job>();
        try {
            Connection con = ConnectionManger.getConnection();
            PreparedStatement statement = con.prepareStatement(selectJob);
            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Job job = new Job();
                job.setJobID(resultSet.getInt("JOBID"));
                job.setJobName(resultSet.getString("JOBNAME"));
                job.setJobDescription(resultSet.getString("JOBDESCRIPTION"));
                job.setCategory(resultSet.getString("JOBCATEGORY"));
                job.setPostByID(resultSet.getInt("POSTEDBY"));
                job.setDate(resultSet.getString("POSTDATE"));
                jobs.add(job);
            }


        }
        catch (Exception e){

        }

return jobs;

    }


    public static void main(String[] args) {

        JobDAO jobDAO=new JobDAO();
        List<Job> jobs=jobDAO.list(23);
        System.out.println(jobs.get(1).getJobName());


    }
}
