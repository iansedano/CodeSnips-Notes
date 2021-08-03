In general, a name should have two properties. First, it should remind the reader of the purpose or function of the item.

Of course, there are exceptions to all rules, but, in general, it is better to choose descriptive names for variables (as well as other items that require naming, such as constants, procedures, controls, forms, and code modules).

Second, a variable name should reflect something about the properties of the variable, such as its data type. Many programmers use a convention in which the first few characters of a variable's name indicate the data type of the variable. This is sometimes referred to as a Hungarian naming convention, after the Hungarian programmer Charles Simonyi, who is credited with its invention.

[prefixes]tag[BaseName[Suffixes]]

Prefixes - Modify the tag to indicate additional information. Prefixes are all lowercase. They are usually picked from a standardized list of prefixes, given later in this document.

Tag Short - set of characters, usually mnemonic, that indicates the type of the object. The tag is all lowercase. It is usually selected from a standardized list of tags, given later in this document.

BaseName - One or more words that indicate what the object represents. Capitalize the first letter of each word in the BaseName.

Suffixes - Additional information about the meaning of the BaseName. Capitalize the first letter of each word in the Suffix. They are usually picked from a standardized list of suffixes, given later in this document.

Notice that the only required part of the object name is the tag. This may seem counterintuitive; you may feel that the BaseName is the most important part of the object name. However, consider a generic procedure that operates on any form. The fact that the routine operates on a form is the important thing, not what that form represents. Because the routine may operate on forms of many different types, you do not necessarily need a BaseName. However, if you have more than one object of a type referenced in the routine, you must have a BaseName on all but one of the object names to differentiate them. In addition, unless the routine is generic, the BaseName conveys information about the variable. In most cases, a variable should include a BaseName.


Boolean b or f

Byte b or bt

Currency cur

Date dt

Double d or dbl

Integer i, c, or int

Long l, c, or lng

Single s or sng

String s or str

User-defined type  u or ut

Variant  v or var



Chart  ch or chrt

Workbook  wb or wbk

Worksheet  ws or wks

Pivot Table  pt or pvt

Font  fnt

Range  rng


Prefix Object Type

(none) Local variable, procedure-level lifetime, declared with “Dim”

s
Local variable, object lifetime, declared with “Static”

m
Private (module) variable, object lifetime, declared with “Private”

g
Public (global) variable, object lifetime, declared with “Public”