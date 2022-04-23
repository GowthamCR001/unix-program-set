#include<stdio.h>
#include<process.h>
#include<conio.h>
#define STACK_SIZE=5;

int top;
int pop;
int item;

void push()
{
	if(top==stack_size-1)
	{
		printf("Stack Overflow");
		return 0;
	}
	top=top+1;
	s[top]=item;
}

int pop()
{
	int item_deleted;
	if(top==-1)
	{
		printf("Stack Underflow");
		return 0;
	}
	item_deleted=s[top--];
	return item_deleted;
}

void display()
{
	int i;
	if(top==-1)
	{
		printf("Stack is empty");
		for(i=0;i<n;i++)
		{
			printf("%d",s[i]);
		}
	}

void main()
{
	int item;
	int item_deleted;
	int ch;
	top=-1;
	for(;;)
	{
		printf("1.push\n 2.pop\n3.display\n");
		printf("Enter your choice\n");
		scanf("%d",&ch);

		switch(ch)
		{
			case 1:
				printf("Enter the item to be inserted\n");
				scanf("%d",&item);
				push();
				break;
			case 2:
				item_deleted=pop();
				if(item_deleted==0)
				{
					printf("Stack is empty\n");
					else
						printf("item_deleted=%d",item_deleted);
				}
				break;

			case 3:
				display();
				break;
			default :
				exit (0);
		}
	}
}
			       

