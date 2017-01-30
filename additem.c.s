# item
Item supplier:
	same.		[single][property sameSupplier]
	different.

#Barcode
Barcode Empty:
	True.		[single][property emptyB] 
	False.		
	
Barcode Numeric:
	True.		[if !emptyB] [property NumericBarcode]
	False.		[single][if !emptyB]
	
Barcode Value:
	<99.				[error]
	>99 && <9999.		[if !emptyB && NumericBarcode]
	>9999.				[error]
	
#Name
Name empty:
	True. [single][property emptyN]
	False.
Name length:
	< 0.	[error]
     0. 	[if !emptyN]
	 >0.	[if !emptyN] [property length]
Special Characters:
	True. 	[single][if !emptyN && length]
	False.  [if !emptyN && length]

#Quantity 
Quantity Empty:
	True. [single][property emptyQuantity]
	False. 
Quantity Numeric:
	True.	[if !emptyQuantity][property NumericQuantity]
	False.  [single][if !emptyQuantity]
Quantity Value:
	< 0.	[error]
	>=0.	[if !emptyQuantity && NumericQuantity]
	<100.   [single][if !emptyQuantity && NumericQuantity]
      	
#supplier
supplier Empty:
    True.	[single][property emptySupplier]
	False.
supplier Length:
	< 0.	[error]
    = 0.	[single][if !emptySupplier] 
	> 0.	[if !emptySupplier] [property supplierLength]
special Characters:
	True.	[if !emptySupplier && supplierLength]
	False.	[if !emptySupplier && supplierLength]

#type
item type Empty:
	True.		[error]		
    False.		

# this file generated 20 test frames with TSL generator.
