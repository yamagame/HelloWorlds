using System;

namespace helloworld
{
  class Program
  {
    static void Main(string[] args)
    {
      if (args.Length >= 1) {
        Environment.Exit(printStep(args[0]));
      } else {
        string line;
        while ((line = Console.In.ReadLine()) != null)
        {
          Environment.Exit(printStep(line));
        }
      }
    }

    static int printStep(string line) {
      char[] charSeparators = new char[] { ':' };
      string[] result;
      int sum = 0;
      result = line.Split(charSeparators);
      if (result.Length > 1) {
        int loop = Convert.ToInt32(result[0]);
        for (int i=0;i<loop;i++) {
          for (int j=0;j<=i;j++) {
            Console.Write("{0}", result[1]);
            sum += result[1].Length;
          }
          Console.Write("\n");
        }
      }
      return sum;
    }

  }
}
