import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

public class main {
  public static void main(String[] args) {
    if (args.length > 0) {
      System.exit(printStep(args[0]));
    } else {
      var stdin = new BufferedReader(new InputStreamReader(System.in));
      String line;
      try {
        while ((line = stdin.readLine()) != null) {
          System.exit(printStep(line));
        }
      } catch (IOException e) {
        e.printStackTrace();
      }
    }
  }

  public static int printStep(String line) {
    int sum=0;
    String[] word = line.split(":");
    if (word.length > 1) {
      int loop = Integer.parseInt(word[0]);
      for (var i = 0; i < loop; i++) {
        for (var j = 0; j <= i; j++) {
          System.out.print(word[1].trim());
          sum += word[1].trim().length();
        }
        System.out.println("");
      }
    }
    return sum;
  }
}
