#include <sys/time.h>
#include <stdio.h>
#include <unistd.h>

int main()
{
  struct timeval tval_before, tval_after, tval_result;

  gettimeofday(&tval_before, NULL);

  // Some code you want to time, for example:
  sleep(1);

  gettimeofday(&tval_after, NULL);

  timersub(&tval_after, &tval_before, &tval_result);

  printf("Time now: %ld, %ld\n", (long int)tval_after.tv_sec, (long int)tval_after.tv_usec);

  printf("Time now: %ld.%06ld\n", (long int)tval_after.tv_sec, (long int)tval_after.tv_usec);

  printf("Time elapsed: %ld.%06ld\n", (long int)tval_result.tv_sec, (long int)tval_result.tv_usec);
}
