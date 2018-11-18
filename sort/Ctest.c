//
//  Ctest.c
//  sort
//
//  Created by Lawrence Herman on 11/17/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

#include "Ctest.h"

long factorial(int n) {
  if (n == 0 || n == 1) return 1;
  return n * factorial(n - 1);
}
