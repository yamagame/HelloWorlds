process.stdin.setEncoding('utf8');

function printStep(chunk) {
  let sum = 0;
  const a = chunk.trim().split(':');
  for (var i=0;i<a[0];i++) {
    for (var j=0;j<=i;j++) {
      process.stdout.write(a[1]);
      sum += a[1].length;
    }
    console.log("");
  }
  return sum;
}

async function main() {
  for await (const chunk of process.stdin) {
    process.exit(printStep(chunk));
  }
}

if (process.argv.length > 2) {
  process.exit(printStep(process.argv[2]));
} else {
  main();
}
