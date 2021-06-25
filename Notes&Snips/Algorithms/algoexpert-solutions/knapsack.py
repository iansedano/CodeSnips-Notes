def knapsackProblem(items, capacity):
    
    result_matrix = []
    items.insert(0, [])
    
    for i in range(len(items)):
        result_matrix.append([])
        
        if len(items[i]) != 0:
            item_weight = items[i][1]
            item_value = items[i][0]
        
        for c in range(capacity + 1):
            #print("------")
            #print(f"c {c}")
            if i == 0:
                result_matrix[i].append(0)
            else:
                current_value = 0
                if c >= item_weight:
                    current_value = item_value
                    
                if c - item_weight > 0:
                    current_value += result_matrix[i - 1][c - item_weight]
                    
                if result_matrix[i - 1][c] > current_value:
                    current_value = result_matrix[i - 1][c]
                
                result_matrix[i].append(current_value)
    
    # Backtracking
    packed_items = []
    for i in range(len(items),0, -1):
        for c in range(capacity + 1, 0, -1):
            if result_matrix[i][c] != result_matrix[i-1][c]
                packed_items.append(items[i])
                
                if c - item_weight > 0:

    
    
    # return [
    #   10, // total value
    #   [1, 2], // item indices
    # ]
    pass
