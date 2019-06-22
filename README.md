# cryptographic-ciphers
The assessment: encrypt and decrypt strings using some very basic cryptographic ciphers. 

Useful methods for this purpose are the library routines string_codes/2 and char_code/2 which translate (back and forth) between characters and numbers (char_code), or strings and lists of numbers (string_code). For example, we have string_codes(“hello”, [104, 101, 108, 108, 111]), because these numbers are the ASCII codes for the characters ‘h’, ‘e’, ‘l’, ‘l’, and ‘o’.

A Caesar cipher encrypts a text by shifting all characters a fixed distance, wrapping around when the end of the alphabet is reached. We assume an ASCII alphabet with 128 characters. For example, Caesar-encryping “hello” by 1 gives us “ifmmp”, encrypting it by 110 gives “VSZZ]”.
