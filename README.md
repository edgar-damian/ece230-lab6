# Number Theory: Addition
# Group 9 - Audrey Cruz and Edgar Rios Negrete

In this lab, you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary
In this lab, we learned how logic gates can be combined to use binary addition. We also implemented a one-bit adder that helped us understand sum and carry outputs. We then used that to build a full adder that became a two-bit adder, which helped us understand how smaller modules can become bigger ones. Overall, this lab helped strengthen our understanding of basic binary arithmetic and doing real-world examples (stair lights).

## Lab Questions

### 1 - How might you add more than two bits together?
You can implent a full adder, that way you can add A, B and have a Carry In. The cary out from one full adder would go into the carry in of the next adder, allowing us to expand the bits.

### 2 - What is the importance of the XOR gate in an adder?
It is extremely important becuase when you add 1 + 1, you should get 0 as the sum but 1 as the carry over. If you use a regular OR gate, you will get 1+1=1. An XOR allows 1+0=1 and 0+1=1 and solves this problem by making 1+1=0, making this useful when calculating the sum and taking in account a carry.

### 3 - What is the largest number a two-bit adder can handle? What happens when you go over?
The largest number a 2 bit adder can handle is 3 (11 in binary). If you try to add anything bigger, an overflow will occur. For example, if you try to add 3 + 3 (11 + 11) you should get 6 (110), but this requires a third bit that the adder does not have.

