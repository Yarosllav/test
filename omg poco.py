from string import ascii_uppercase


class Alphabet:

    def __init__(self, language, letters_str):
        self.lang = language
        self.letters = list(letters_str)

    # Печатаем все буквы алфавита

    def print(self):
        print(self.letters)

    def letters_num(self):
        len(self.letters)


# Английский алфавит

class EngAlphabet(Alphabet):

    __letters_num = 26

    def __init__(self):
        super().__init__('En', ascii_uppercase)


    def is_en_letter(self, letter):
        if letter.upper() in self.letters:
            return True
        return False
    
    def letters_num(self):
        return EngAlphabet.__letters_num
    
    @staticmethod
    def example():
        print('Eng Example: This is example.')


# Tests

if __name__ == '__main__':
    eng_alphabet = EngAlphabet()
    eng_alphabet.print()