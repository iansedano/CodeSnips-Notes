# Assuming grid is always square or rectangle!

grid = [
    [1, 1, 1, 2, 2, 2, 3, 3],
    [2, 2, 2, 9, 9, 2, 3, 3],
    [8, 3, 3, 3, 2, 2, 3, 3],
    [1, 1, 1, 2, 2, 2, 3, 1],
    [1, 8, 8, 2, 2, 2, 5, 3]
]


class Country:

    def __init__(self, starting_pos, number, world_size):
        self.starting_pos = starting_pos
        self.positions = [starting_pos]
        self.number = number
        self.world_size = world_size

    def build_country(self, two_layer_array, checked_list):
        neighbours_to_check = self.positions

        for n in neighbours_to_check:
            cardinals = get_cardinals(n, two_layer_array)

            for c in cardinals:
                if (
                        c != "edge" and
                        not in self.positions and
                        two_layer_array[c[0]][c[1]] == self.number):
                    neighbours_to_check.append(c)

                if c != self.starting_pos:
                    self.positions.append(c)

            checked_list.append(n)

    def get_cardinals(self, pos):
        if (pos[0] == 0):
            W = "edge"
        else if (pos[0] == (self.world_size[0] - 1)):
            E = "edge"

        if (pos[1] == (world_size[1] - 1)):
            S = "edge"
        else if (pos[1] == 0):
            N = "edge"

        if N != "edge":
            N = (pos[0], pos[1] - 1)
        if E != "edge":
            E = (pos[0] + 1, pos[1])
        if S != "edge":
            S = (pos[0], pos[1] + 1)
        if W != "edge":
            W = (pos[0] - 1, pos[1])

        return [N, E, S, W]


def make_coordinate_list(two_layer_array):
    pos_list = []
    for row_num, row in enumerate(two_layer_array, start=0):
        for col_num, val in enumerate(row, start=0):
            pos_list.append([row_num, col_num])
    return(pos_list)


def build_countries(two_layer_array):
    world_size = (len(two_layer_array), len(two_layer_array[0]))
    pos_list = make_pos_list(two_layer_array)

    checked_list = []
    for row_num, row in enumerate(two_layer_array, start=0):
        for col_num, val in enumerate(row, start=0):
            if [row_num, col_num] not in checked_list:
                current_country = Country([row_num, col_num], val, world_size)
                current_country.build_country(two_layer_array, checked_list)
