

#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
void creatdll();      //To create a double linked list
void insert_end_dll();//To insert a New node at the end of DLL
void displaydll();    //To display double linked list
void insert_beg_dll();//To insert a new node at begning of DLL
void del_beg_dll();//To delete first node of DLL
void del_last_dll(); //To delete last node from DLL
void del_part_dll(int);//To delete particular node from DLL
int linked_size_dll(); //To check the size of DLL
void insert_part_dll(int); //To insert a node after a particular data


struct node
 {
 int data;
 struct node *next,*prev;
 };


struct node *start=NULL;





 void displaydll() //To display double linked list
 {
 if(start==NULL)
  {
   printf("Underflow");
   getch();
   exit(0);
  }
 else
  {
   int i=1;
   struct node *ptr;
   ptr=start;
   while(ptr!=NULL)
    {
     printf("\nData in Node %d=%d",i,ptr->data);
     ptr=ptr->next;
     i++;
    }
  }

 }





void creatdll()   //To create a double linked list
 {
  struct node *temp,*ptr;
  temp=(struct node *)malloc(sizeof(struct node));
    printf("\nEnter the data=");
    scanf("%d",&temp->data);
  if(start==NULL)
   {
    start=temp;
    temp->next=NULL;
    temp->prev=NULL;
   }
  else
  {
   ptr=start;
   while(ptr->next!=NULL)
    {
     ptr=ptr->next;
    }
   ptr->next=temp;
   temp->prev=ptr;
   temp->next=NULL;
  }
 }

void insert_beg_dll() //To insert a new node at begning of DLL
 {
  if(start==NULL)
   {
    printf("Underflow");
    getch();
    exit(0);
   }
  else
   {
     struct node *temp;
     temp=(struct node *)malloc(sizeof(struct node));
     printf("Enter the data=");
     scanf("%d",&temp->data);
     temp->prev=NULL;
     start->prev=temp;
     temp->next=start;
     start=temp;
   }
 }

void insert_end_dll()//To insert a New node at the end of DLL
 {
  if(start==NULL)
  {
   printf("Underflow");
   getch();
   exit(0);
  }
  else
  {
   struct node *temp,*ptr;
   temp=(struct node *)malloc(sizeof(struct node));
   printf("\nEnter the data=");
   scanf("%d",&temp->data);
   ptr=start;
   while(ptr->next!=NULL)
   {
    ptr=ptr->next;
   }
   ptr->next=temp;
   temp->next=NULL;
   temp->prev=ptr;
  }
 }

void del_beg_dll()//To delete first node of DLL
 {
  if(start==NULL)
   {
    printf("Underflow");
    getch();
    exit(0);
   }
  else
   {
    printf("\nThe data %d is deleted",start->data);
    start->next->prev=NULL;
    start=start->next;
   }
 }


void del_last_dll() //To delete last node from DLL
 {
  if(start==NULL)
   {
    printf("Underflow");
    getch();
    exit(0);
   }
  else
   {
    struct node *ptr;
    ptr=start;
    while(ptr->next!=NULL)
     {
     ptr=ptr->next;
     }
     printf("\nThe data %d is deleted",ptr->data);
     ptr->prev->next=ptr->next;
     ptr->next->prev=ptr->prev;
   }
 }

void del_part_dll(int n)//To delete particular node from DLL
 {
  if(start==NULL)
   {
    printf("Underflow");
    getch();
    exit(0);
   }
  else
  {
   struct node *ptr;
   ptr=start;
   while(ptr->data!=n)
    {
     ptr=ptr->next;
     if(ptr==NULL)
      {
       printf("\nData is not available in any Node");
       return;
      }
    }
    if(ptr->prev==NULL)
     {
      del_beg_dll();
      return;
     }
    if(ptr->next==NULL)
     {
      del_last_dll();
      return;
     }
    else
     {
      printf("The data %d is deleted..",ptr->data);
      ptr->prev->next=ptr->next;
      ptr->next->prev=ptr->prev;
     }
  }
 }


 int linked_size_dll() //Function to find size of linked list
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



void insert_part_dll(int item) //To insert a node after a particular data
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
       insert_end_dll();
       return;
      }
     else
     {
      printf("\nEnter the data=");
      scanf("%d",&temp->data);
      temp->next=ptr->next;
      ptr->next=temp;
      temp->prev=ptr;
     }
  }
}







void main()
{
 int ch,n,d,size,i;
 clrscr();
 printf("                    This is double Linked list");
 while(1)
 {
  printf("\n\n1-To Create Linked List\n2-To Display the data of Linked list\n3-To insert a node after particular data\n4-To delete any Node\n5-To check the size of Linked list\n6-To Exit\nEnter your choice:-");
  scanf("%d",&ch);
 switch(ch)
  {
   case 1:
	 {
	  printf("Enter how many node you want to create=");
	  scanf("%d",&n);
	  for(i=0;i<n;i++)
	   {
	    creatdll();
	   }
	  break;
	 }
   case 2:
	 {
	  displaydll();
	  break;
	 }
   case 3:
	 {
	  printf("\nEnter the data of node=");
	  scanf("%d",&d);
	  insert_part_dll(d);
	  break;
	 }
   case 4:
	 {
	  printf("\nEnter the data of node which you want to delete=");
	  scanf("%d",&d);
	  del_part_dll(d);
	  break;
	 }
   case 5:
	 {
	  size=linked_size_dll();
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
