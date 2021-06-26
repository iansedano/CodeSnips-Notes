Feature                 | COLLECTION | DICTIONARY | Remark
------------------------+------------+------------+--------------------------------
Usually faster          |            |     X      | 
------------------------+------------+------------+--------------------------------
Supported by VB Script  |            |     X      | Collections do not exist in VBS.
------------------------+------------+------------+--------------------------------
                        |            |            | Dicts: Add ref to Miscrosoft 
Native to VBA           |     X      |            | Scripting Library. Usage:
                        |            |            | Dim MyDict As Scripting.Dictionary
                        |            |            | Set MyDict = New Scripting.Dictionary
------------------------+------------+------------+--------------------------------
Can change Keys and     |            |            | Dict properties are writable.
Items                   |            |     X      | For collections, remove the item
                        |            |            | and add a new item.
------------------------+------------+------------+--------------------------------
                        |            |            | A collection enumerates its items:
                        |            |            |  For Each x In MyCollection
                        |            |            |      Debug.Print x
Enumerated              |     X      |     X      |  Next x
                        |            |            | A dict enumerates its keys:
                        |            |            |  For Each x In MyDictionary
                        |            |            |      Debug.Print MyDictionary.Item(x)
                        |            |            |  Next x
------------------------+------------+------------+--------------------------------
                        |            |            | A 1-d array of keys 
Directly output to      |            |            | and items can be returned by 
array                   |            |     X      | dict methods .Keys and .Items.
                        |            |            | (The array is zero-based even 
                        |            |            |  with Option Base 1.)
------------------------+------------+------------+--------------------------------
Retrieve and access     |     X      |     X      |
items                   |            |            |  
------------------------+------------+------------+--------------------------------
Add items               |     X      |     X      |
------------------------+------------+------------+--------------------------------
Implicitly add items    |            |     X      | Dicts can implicitly add items 
                        |            |            | using .Item property.
------------------------+------------+------------+--------------------------------
Remove items            |     X      |     X      |
------------------------+------------+------------+--------------------------------
Remove all items in     |            |            | With collections, each item must
one step                |            |     X      | be removed in turn, or the 
                        |            |            | collection destroyed and recreated.
------------------------+------------+------------+--------------------------------
Count items             |     X      |     X      |
------------------------+------------+------------+--------------------------------
Return item using key   |     X      |     X      |
as lookup value         |            |            |
------------------------+------------+------------+--------------------------------
Return item using       |            |            |
ordinal position        |     X      |   (Slow)   |
as lookup value         |            |            |
------------------------+------------+------------+--------------------------------
Return ordinal          |            |            |
position using item     |     X      |     ??     |
as lookup value         |            |            |
------------------------+------------+------------+--------------------------------
Retrieve and access     |            |     X      | Collection keys only used to
keys                    |            |            | look up data, not retrievable.
------------------------+------------+------------+--------------------------------
Keys optional           |     X      |            | Big + of collections, assuming keys
                        |            |            | are not needed. (Access via index.)
------------------------+------------+------------+--------------------------------
Case sensitivity        |            |     X      |
optional                |            |            |  
------------------------+------------+------------+--------------------------------
                        |            |            | Collection keys must be strings.
Keys can be any type    |            |     X      | Dict keys can have any type
                        |            |            | (except arrays), incl. mixed types.
------------------------+------------+------------+--------------------------------
Keys must be unique     |     X      |     X      |
------------------------+------------+------------+--------------------------------
                        |            |            | * For collections, add code:
                        |            |            |  Public Function _
                        |            |            |     Contains(col As Collection, _
Supports .Exists method |  Remark*   |     X      |     key As Variant) As Boolean
                        |            |            |     On Error Resume Next
                        |            |            |     col(key)
                        |            |            |     Contains = (Err.Number = 0)
------------------------+------------+------------+--------------------------------
Preserve key order when |            |     X      | This is because collection keys 
sorting by item value   |            |            | are write-only, not read. Poor design!