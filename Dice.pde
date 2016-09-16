void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	background(0);
	int sum = 0;

	for (int j = 50; j <= 300; j += 50)
	{
		for (int i = 50; i <= 300; i += 50)
		{
		Die thedie = new Die(i,j);
		thedie.show();
		sum = sum + thedie.value;
		}
	}	
	fill(255);
	textSize(50);
	text(sum,150,395);
}
void mousePressed()
{
	redraw();
}
class Die 
{
	int value;
	int myX, myY;
	Die(int x, int y) 
	{
		roll();
		myX = x;
		myY = y;
	}

	void roll()
	{
		value = (int)(Math.random()* 6) + 1;
	}

	void show()
	{
		stroke(255);
		fill(0);
		rect(myX,myY,50,50);
		
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		if (value == 1)
		{
			ellipse(myX + 25 ,myY + 25,10,10);
		}
		else if (value == 2)
		{
			ellipse(myX + 12,myY + 37,10,10);
			ellipse(myX + 37,myY + 12,10,10);
		}
		else if(value == 3)
		{
			ellipse(myX + 25,myY + 25,10,10);
			ellipse(myX + 10,myY + 37,10,10);
			ellipse(myX + 40,myY + 12,10,10);
		}
		else if(value == 4)
		{
			ellipse(myX + 12,myY + 37,10,10);
			ellipse(myX + 37,myY + 12,10,10);
			ellipse(myX + 37,myY + 37,10,10);
			ellipse(myX + 12,myY + 12,10,10);
		}
		else if(value == 5)
		{
			ellipse(myX + 25 ,myY + 25,10,10);
			ellipse(myX + 10,myY + 40,10,10);
			ellipse(myX + 40,myY + 10,10,10);
			ellipse(myX + 40,myY + 40,10,10);
			ellipse(myX + 10,myY + 10,10,10);
		}
		else if(value == 6)
		{
			ellipse(myX + 12,myY + 25,10,10);
			ellipse(myX + 37,myY + 25,10,10);
			ellipse(myX + 12,myY + 40,10,10);
			ellipse(myX + 37,myY + 10,10,10);
			ellipse(myX + 37,myY + 40,10,10);
			ellipse(myX + 12,myY + 10,10,10);
		}
	}
}