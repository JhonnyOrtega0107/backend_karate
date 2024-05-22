package Backend;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class user {
    @Test

    Karate testSample (){
    String testPath = "classpath:Backend/";

        return Karate.run(testPath+"userFetchforID.feature",
                testPath+"userCreate.feature",
                testPath+"userUpdate.feature",
                testPath+"userDelete.feature"
        ).relativeTo(getClass());
    }
}
