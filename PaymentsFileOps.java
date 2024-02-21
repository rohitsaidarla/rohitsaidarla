package bankapp;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;



public class PaymentsFileOps {
	public final String usersFilePath = "C:\\Users\\rohit\\eclipse-workspace\\RunPaymentApp\\src\\bankapp\\entity\\User.java";
	
	public void writeUserToFile(User u) throws IOException {
		File userFile = new File(usersFilePath);
		FileWriter fw = new FileWriter(userFile,true);
		fw.write(u.userToFileRecord());
		
		fw.flush();
		fw.close();
	}

}
