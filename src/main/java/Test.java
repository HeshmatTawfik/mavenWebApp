import java.lang.reflect.Array;
import java.util.ArrayList;
import com.google.gson.Gson;

public class Test {
    public static void main(String[] args) {
        Gson app=new Gson();

        ArrayList <String> a=new ArrayList<>();
        int i=0;
        while (i<5){
            String s=String.valueOf(i);
a.add(s);
i++;

        }
        app.toJson(a);
        String aaa=new Gson().toJson(a);


    }
}
