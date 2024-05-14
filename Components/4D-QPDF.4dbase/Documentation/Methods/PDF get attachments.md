## __PDF get attachments ( pdf_file : 4D.File ) : Collection__

<u> Description</u>

_This command retrieves PDF/A3 file attachments and returns them in a collection._


## Example

```4d

var $path : 4D.File
var $_attachments : Collection

$path:=File("/RESOURCES/tests/Many Included Files.pdf")

// user error mode 

$_attachments:=PDF get attachments($path)


// silent mode

$_attachments:=Try(PDF get attachments($path)) || []


// code error management

Try

    $_attachments:=PDF get attachments($path) 

Catch

    // some errors are accessibles with Last errors command
    
End try 

```

