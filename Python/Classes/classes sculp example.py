
class Artistic_concept: # ID ()
    def __init__(self, name = '', year=0, text= ''):
        self.year = year
        self.text = text

class Sculp_version(Artistic_concept): #(23131)
    def __init__(self,
        code = 0,
        material = [], #ex (bro)bronze, (ss)stainless steel, granite
        size = '',
        edition_size = ('',''),
        extra_note = ''):

        self.code = code # needs to be 5 digits
        self.material = material
        self.size = size
        self.edition_size = edition_size
        self.extra_note = extra_note

class Material():
    # maintenance info
    # desciption
    # chemcial comp

class Unique_sculp(Sculp_version):  # 23131-05
    def __init__(self, edition = '', PO = ''):
        self.edition = edition
        self.PO = PO
        super(Unique_sculp, self).__init__()

    #def full_code(self):

class Shipment():
    pass

class PO():
    pass





concept = Artistic_concept('FINDING LOVE', 2000)
version = Sculp_version(20024,'Bronze and Stainless Steel','2m','8+3')
sculp = Unique_sculp('5', 'VIL2018/00002')

print(sculp.material)


