class TakProgram
{
	static int Tak(int x, int y, int z)
	{
		if (y < x)
		{
			return Tak(
				Tak(x - 1, y, z),
				Tak(y - 1, z, x),
				Tak(z - 1, x, y)
			);
		}
		else
		{
			return z;
		}
	}

	static void Main(string[] args)
	{
		int x = int.Parse(args[0]);
		int y = int.Parse(args[1]);
		int z = int.Parse(args[2]);
		Console.WriteLine(Tak(x, y, z));
	}
}
