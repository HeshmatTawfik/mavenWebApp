public class User {
    private int id;
    private String name;
    private String pass;
    private int age;
    private String city;
    private String email;
    // boolean isEmployer;
    private int appliedJob;

    private int postedjobs;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    private String role;

    public boolean isCanLog() {
        return canLog;
    }

    public void setCanLog(boolean canLog) {
        this.canLog = canLog;
    }

    private boolean canLog;
    public int a;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

 /*   public boolean isEmployer() {
        return isEmployer;
    }*/

  /*  public void setEmployer(boolean employer) {
        isEmployer = employer;
    }*/

    public int getAppliedJob() {
        return appliedJob;
    }

    public void setAppliedJob(int appliedJob) {
        this.appliedJob = appliedJob;
    }

    public int getPostedjobs() {
        return postedjobs;
    }

    public void setPostedjobs(int postedjobs) {
        this.postedjobs = postedjobs;
    }

    public User() {
    }

    public User(String email, String pass) {
        this.setEmail(email);
        this.setPass(pass);


    }
    public User(String email) {
        this.setEmail(email);


    }
public User(int id){
        this.setId(id);
}
    public User(String name, String email, String pass, int age, String city) {
        this.setName(name);
        this.setEmail(email);
        this.setPass(pass);
        this.setAge(age);
        this.setCity(city);

    }



}
