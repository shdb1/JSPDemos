package com.shadab.tests;

import java.applet.Applet;
import java.awt.Graphics;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class AppletDemoForPlugin extends Applet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Override
public void init() {
	// TODO Auto-generated method stub
	super.init();
	System.out.println("imit clled");
}
	public void paint(Graphics g){
		System.out.println("executing the applet");
		Calendar cal = new GregorianCalendar();
		String hour = String.valueOf(cal.get(Calendar.HOUR));
		String minute = String.valueOf(cal.get(Calendar.MINUTE));
		String second = String.valueOf(cal.get(Calendar.SECOND));
		g.drawString(hour + ":" + minute + ":" + second, 20, 30);
		}

}
