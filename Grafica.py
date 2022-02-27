

import Tkinter
 
if __name__ == '__main__':
    root = Tkinter.Tk()
    root.title('Button')
    Tkinter.Label(text='I am a button').pack(pady=15)
    Tkinter.Button( text='Button').pack(side=Tkinter.BOTTOM)
    root.mainloop()


