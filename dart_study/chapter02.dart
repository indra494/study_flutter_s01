void main() {

  /* 조건문 */
  int i = 10;

  if(i > 5) {
    print('5보다큼');
  } else if(i > 3) {
    print('3보다큼');
  } else {
    print('기타');
  }

  if(i==0) print('한줄');

  /* 반복문 */
  for(var i=0; i<5; i++) {
    print('test');
  }

  int j = 0;
  while(j < 3) {
    print('test2');
    j++;
  }

  do {
    print('test3');
  } while ( j < 3);

}