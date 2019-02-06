import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.ws.RequestWrapper;
@ManagedBean(name="bean3")
@SessionScoped
public class Job {
    private int jobID;
    private int postByID;
    @XmlAttribute

    private String jobName;
    private String jobDescription;
private String Category;
    private String date;

    public int getJobID() {
        return jobID;
    }

    public void setJobID(int jobID) {
        this.jobID = jobID;
    }

    public int getPostByID() {
        return postByID;
    }

    public void setPostByID(int postByID) {
        this.postByID = postByID;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }




}
