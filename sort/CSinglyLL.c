//
//  Ctest.c
//  sort
//
//  Created by Lawrence Herman on 11/17/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

#include "CSinglyLL.h"

#include <stdio.h>
#include <stdlib.h>

// generate array in swift to pass as arg here?

int main(int argc, const char * argv[]) {
  
  insert(10);
  insert(20);
  insert(30);
  insert(56);
  printList();
  
  
  return 0;
  
}

struct Node {
  int data;
  struct Node *next;
};

struct Node *head = NULL;
struct Node *current = NULL;

void printList() {
  
  struct Node *ptr = head;
  
  printf("\n[head] =>");
  //start from the beginning
  while(ptr != NULL) {
    printf(" %d =>", ptr->data);
    ptr = ptr->next;
  }
  
  printf(" [null]\n");
  
}

void insert(int data) {
  // create a link
  struct Node *link = (struct Node*) malloc(sizeof(struct Node));
  
  //link->key = key;
  link->data = data;
  
  //point it to old first node
  link->next = head;
  
  //point first to new first node
  head = link;
}

