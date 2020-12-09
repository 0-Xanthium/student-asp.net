using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Shape
/// </summary>
public class Shape
{
	public Shape()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public double area;
    public void calArea() { }
}

public class Triangle : Shape
{
    public double calArea(int b, int h)
    {
        area = .5 * b * h;
        return area;
    }

}

public class Squ : Shape
{
    public int calArea(int s)
    {
        area = s * s;
        int x = Convert.ToInt32(area);
        return x;
    }
}

public class rect : Shape
{
    public int calArea(int l , int b)
    {
        area = l * b;
        int x = Convert.ToInt32(area);
        return x;
    }
}