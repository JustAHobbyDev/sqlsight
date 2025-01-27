#include <sqlite3.h>
#include <stdio.h>

sqlite3 *db;
int rc;

int main(int argc, char *argv[]) {
  rc = sqlite3_open("example.db", &db);

  if (rc) {
    fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
    return 1;
  } else {
    fprintf(stdout, "Opened database successfully\n");
  }

  // Close the database connection when done
  sqlite3_close(db);
}
