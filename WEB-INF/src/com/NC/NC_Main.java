package com.NC;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.FileInputStream;
import java.io.FileOutputStream;


public class NC_Main {
	public static int NC_Encrypt_Main(String inFile, String outFile)throws IOException {

	System.out.println("its came inside the NC main Class>>>>>>>>>>>");
    FileInputStream in = null;
    FileWriter out = null;
    
    NCStream yy  = new NCStream();
    
    try {
        in = new FileInputStream(inFile);
        out =  new FileWriter(outFile);
        int c;

        while ((c = in.read()) != -1) {
        System.out.println("Value -->" +c);
            
            
            String by = Integer.toBinaryString(c);
            System.out.println("Binary -->" +by);
    		for (int i = by.length(); i < 8; i++)  
        	{
    			by = "0" + by;
        	}
    		System.out.println("Binary Full -->" +by);
    		
    		String xcheck;
    		
    		xcheck =yy.NC_Encrypt_Call(by);
    		
    		System.out.println("After Encryption -->" +xcheck);
    		
    		out.write(xcheck);
    		
        }

    } finally {
        if (in != null) {
            in.close();
        }
        if (out != null) {
            out.close();
        }
    }
    return 1;
}
		
           
    public static int NC_Decrypt_Main(String inFile, String outFile)
    throws IOException {

	NCStream yy  = new NCStream();
	
    FileReader inputStream = null;
    FileOutputStream out = null;
    
    

    try {
        inputStream = new FileReader(inFile);
                   
        out = new FileOutputStream(outFile);
        
        

        int c,c1,c2,c3;
        char[]x = new char[4];
        while ((c = inputStream.read(x)) != -1) {
        	
        	System.out.println("*********Character Set ********* ");
        	System.out.println("display " +x[0]);
        	System.out.println("display " +x[1]);
        	System.out.println("display " +x[2]);
        	System.out.println("display " +x[3]);
        	
        	
        	int j;
        	j= yy.NC_Decrypt_Call(x);
        	
           	out.write((char)j);
           
        }
    } finally {
        if (inputStream != null) {
            inputStream.close();
        }
              
        if (out != null) {
            out.close();
        }
    }
    
    return 1;
}
    
    public static void main(String[] args)
    throws IOException {

	NC_Main obj1 = new NC_Main();
	int zValue;
//zValue = obj1.DNA_Encrypt_Main("Otorhinolaryngology.txt","xhand.dat");
	
zValue= obj1.NC_Decrypt_Main("Cardiodecrypt.txt","decry_new33.txt");
    }
}
