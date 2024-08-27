"""
I backtrack on every sub knapsack, so I always maintain the most efficient
knapsack on every iteration. I also build the array as I go.

Their solution chooses the most efficient subknapsack yet always with the current
item. So they need to backtrack at the end. They also build a blank array before
starting.
"""

import copy

def knapsackProblem(items, cap):
    
    if cap == 0:
        return [0,[]]
    
    sub_knaps = []
    
    # for each item
    for i, item in enumerate(items):
        item_val = item[0]
        item_w = item[1]
        sub_knaps.append([])
        
        # for each size of knapsack
        for j in range(cap):
            # initialize sub knapsack
            sub_knap = [0, 0, []]  # val, w, items
            sub_knap_cap = j + 1
            
            if item_w <= sub_knap_cap:
                
                sub_knap[0] += item_val
                sub_knap[1] += item_w
                sub_knap[2].append(i)  # may be indices +1
                
                remainder = sub_knap_cap - sub_knap[1]

                if remainder > 0:
                    if (
                        j != 0 and
                        not any(item in sub_knap[2] for item in sub_knaps[i][remainder-1][2]) and
                        sub_knap[1] + sub_knaps[i][remainder-1][1] <= sub_knap_cap
                    ):
                        sub_knap[0] += sub_knaps[i][remainder-1][0]
                        sub_knap[1] += sub_knaps[i][remainder-1][1]
                        sub_knap[2] += sub_knaps[i][remainder-1][2]

            if i > 0 and j > 0: # if not top left
                if sub_knaps[i-1][j][0] > sub_knaps[i][j-1][0]:
                    if sub_knap[0] < sub_knaps[i-1][j][0]:
                        sub_knap = copy.deepcopy(sub_knaps[i-1][j])
                else:
                    if sub_knap[0] < sub_knaps[i][j-1][0]:
                        sub_knap = copy.deepcopy(sub_knaps[i][j-1])
            elif i > 0: # if not top but all way left
                if sub_knap[0] < sub_knaps[i-1][j][0]:
                    sub_knap = copy.deepcopy(sub_knaps[i-1][j])
            elif j > 0: # if not left but top
                if sub_knap[0] < sub_knaps[i][j-1][0]:
                    sub_knap = copy.deepcopy(sub_knaps[i][j-1])

            sub_knaps[i].append(sub_knap)
      
    best_knap = sub_knaps[-1][-1]
    output = [best_knap[0], best_knap[2]]
    return output

