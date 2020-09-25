#include <iostream>
#include <vector>
#include <string>
#include <sstream>

using namespace std;

vector<string> split(const string &s, char delim) {
    vector<string> elems;
    stringstream ss(s);
    string item;
    while (getline(ss, item, delim)) {
    if (!item.empty()) {
            elems.push_back(item);
        }
    }
    return elems;
}

int printStep(const string line) {
  int sum=0;
  vector<string> words = split(line, ':');
  if (words.size() > 1) {
    int num = atoi(words[0].c_str());
    for (int i=0;i<num;i++) {
      for (int j=0;j<=i;j++) {
        cout << words[1];
        sum += words[1].length();
      }
      cout << "\n";
    }
  }
  return sum;
}

int main(int argc, char* argv[]) {
  if (argc > 1) {
    return printStep(argv[1]);
  } else {
    string line;
    getline(cin, line);
    return printStep(line);
  }
}
