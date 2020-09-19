
CC=sdcc
NAME = project

all: project.hex
$(NAME).hex : $(NAME).ihx
	packihx $(NAME).ihx > $(NAME).hex

$(NAME).ihx : $(NAME).lst $(NAME).rel $(NAME).sym $(NAME).asm $(NAME).c 
	$(CC) $(NAME).c

$(NAME).lst $(NAME).rel $(NAME).sym : $(NAME).asm $(NAME).c
	$(CC) -c $(NAME).c

$(NAME).asm : $(NAME).c
	$(CC) -S $(NAME).c
	
clean:
	del $(NAME).asm del $(NAME).lst $(NAME).rel $(NAME).sym del $(NAME).lk $(NAME).map $(NAME).mem $(NAME).rst $(NAME).sym del $(NAME).hex $(NAME).ihx
