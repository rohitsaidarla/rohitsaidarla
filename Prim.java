package pri;

public class Prim{

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int b=11;
		int count=0;
		for(int i=1;i>b;i++) 
		{
			if(b%i==0)
			{
				count++;
			}
			
		}
       if(count==0 || b<1) 
       {
    	   System.out.println("given number is not a prime");
	}else 
	{
		System.out.println("given number is a prime");
    }
}


}