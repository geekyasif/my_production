#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
void create();
void insertbeg();
int linkedsize();
void insertnode(int);
void deletenode(int);


struct node
 {
 int data;
 struct node *next;
 };


struct node *start=NULL;

void display()//To delete the data of single Linked list
{
 int i=1;
 struct node *ptr;
 if(start==NULL)
 {
 printf("Underflow");
 getch();
 return;
 }
 else
 {
 ptr=start;
 while(ptr!=NULL)
  {

  printf("\nData in Node %d=%d",i,ptr->data);
  ptr=ptr->next;
  i++;
  }
 }
}



void create() //Insertion at the End
{
 struct node *temp,*p;
 temp=(struct node *)malloc(sizeof(struct node));
 printf("Enter the data=");
 scanf("%d",&temp->data);
 temp->next=NULL;
 if(start==NULL)
  {
   start=temp;
  }
 else
 {
  p=start;
  while(p->next!=NULL)
  {
  p=p->next;
  }
 p->next=temp;
 }
}


void insertbeg() //Insertion of node at begning
{
struct node *temp;
temp=(struct node *)malloc(sizeof(struct node));
printf("\nEnter the data in Node 1=");
scanf("%d",&temp->data);
if(start==NULL)
 {
 start=temp;
 temp->next=NULL;
 }
else
 {
 temp->next=start;
 start=temp;
 }
}


int linkedsize() //Function to find size of linked list
 {
 if(start==NULL)
  {
  return(0);
  }
 else
 {
 int n=1;
 struct node *ptr;
 ptr=start;
  while(ptr->next!=NULL)
  {
  n++;
  ptr=ptr->next;
  }
  return(n);
 }
 }




 void insert_part(item) //To insert a node after a particular data
{
 if(start==NULL)
    {
     printf("Underflow");
     return;
    }
 else
  {
   int i;
   struct node *temp,*ptr;
   temp=(struct node *)malloc(sizeof(struct node));
     ptr=start;
     while(ptr->data!=item)
      {
       ptr=ptr->next;
       if(ptr==NULL)
	{
	 printf("The given data is not available in any node");
	 return;
	}
      }
     if(ptr->next==NULL)
      {
       create();
       return;
      }
     else
     {
      printf("\nEnter the data=");
      scanf("%d",&temp->data);
      temp->next=ptr->next;
      ptr->next=temp;
     }
  }
}

void deletenode(int item) //To delete any node of single Linked list
 {
  if(start==NULL)
   {
     printf("Underflow");
     getch();
     return;
   }
  else
  {
   struct node *ptr,*pptr;
   ptr=start;
   pptr=start;
    if(ptr->data==item)
     {
     start=ptr->next;
     }
    else
    {
     while(ptr->data!=item)
      {
       pptr=ptr;
       ptr=ptr->next;
       if(ptr==NULL)
	{
	 printf("Data not found in any node");
	 return;
	}
      }
     pptr->next=ptr->next;
    }
  }
 }


 void main()
{
 int ch,n,d,size,i;
 clrscr();
 while(1)
 {
  printf("\n1-To Create Linked List\n2-To Display the data of Linked list\n3-To insert a node after particular data\n4-To delete any Node\n5-To check the size of Linked list\n6-To Exit\nEnter your choice:-");
  scanf("%d",&ch);
 switch(ch)
  {
   case 1:
	 {
	  printf("Enter how many node you want to create=");
	  scanf("%d",&n);
	  for(i=0;i<n;i++)
	   {
	    create();
	   }
	  break;
	 }
   case 2:
	 {
	  display();
	  break;
	 }
   case 3:
	 {
	  printf("\nEnter the data of node=");
	  scanf("%d",&d);
	  insert_part(d);
	  break;
	 }
   case 4:
	 {
	  printf("\nEnter the data of node which you want to delete=");
	  scanf("%d",&d);
	  deletenode(d);
	  break;
	 }
   case 5:
	 {
	  size=linkedsize();
	  printf("\nSize of Linked list is=%d",size);
	  break;
	 }
   case 6:
	 {
	 exit(0);
	 break;
	 }
   default:
	 {
	 printf("\nYou have entered wrong choice try again");
	 }
  }
 }
getch();
}
