#!/usr/bin/python3

import psutil

def size(byte):
  #this the function to convert bytes into more suitable reading format.

  #Suffixes for the size
  for x in ["B","KB","MB","GB","TB"]:
    if byte<1024:
      return f"{byte:.2f}{x}"
    byte=byte/1024

ram_total = psutil.virtual_memory()
ram_used = psutil.virtual_memory()

print(f'{size(ram_used.used)} / {size(ram_total.total)}')
