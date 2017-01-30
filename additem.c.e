# item
Item supplier:
	same.		[property sameSupplier]
	different.

#Barcode
Barcode Empty:
	True.		[property emptyB]
	False.		
	
Barcode Numeric:
	True.		[if !emptyB] [property NumericBarcode]
	False.		[if !emptyB]
	
Barcode Value:
	<99.				[error]
	>99 && <9999.		[if !emptyB && NumericBarcode]
	>9999.				[error]
	
#Name
Name empty:
	True. [property emptyN]
	False.
Name length:
	< 0.	[error]
     0. 	[if !emptyN]
	 >0.	[if !emptyN] [property length]
Special Characters:
	True. 	[if !emptyN && length]
	False.  [if !emptyN && length]

#Quantity 
Quantity Empty:
	True. [property emptyQuantity]
	False. 
Quantity Numeric:
	True.	[if !emptyQuantity][property NumericQuantity]
	False.  [if !emptyQuantity]
Quantity Value:
	< 0.	[error]
	>=0.	[if !emptyQuantity && NumericQuantity]
	<100.   [if !emptyQuantity && NumericQuantity]
      	
#supplier
supplier Empty:
    True.	[property emptySupplier]
	False.
supplier Length:
	< 0.	[error]
    = 0.	[if !emptySupplier] 
	> 0.	[if !emptySupplier] [property supplierLength]
special Characters:
	True.	[if !emptySupplier && supplierLength]
	False.	[if !emptySupplier && supplierLength]

#type
item type Empty:
	True.		[error]	
    False.		

# this file generated 1024 test frames with TSL generator.
