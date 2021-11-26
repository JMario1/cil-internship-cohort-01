
def resizeImage(path, width, height):
    ''' 
    This function take in three parameters 
    and stores a resized copy of the image within the path.

    path - A string to the image filepath location.\n
    width - an interger for the new image width.\n
    height - an interger for new image height.
    
    function return None.
    '''

    from PIL import Image

    storage_location = path.split(".")
    img = Image.open(path)
    img = img.resize((width, height), Image.ANTIALIAS)
    img.save(storage_location[0] + "Resized." + storage_location[1])


if __name__ == "__main__":
    
    import os, sys
    
    path = input("Enter the path of your file: ")
    if os.path.exists(path):
        width = input("Enter width: ").strip()
        height = input("Enter height: ").strip()
        
        resizeImage(path, int(width), int(height))
        print("done resizing")
        print("save at")
        print(path.split(".jpg")[0])

    else:
        print(f'{path}: This path does not exist or valid')
