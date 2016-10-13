from antlr4 import *
from CFlatLexer import CFlatLexer
from CFlatListener import CFlatListener
from CFlatParser import CFlatParser
import sys

class CFlatListener(ParseTreeListener):
    def enterKey(self, ctx):
        print('input k', ctx)

    def exitKey(self, ctx):
        print('input k', ctx)

    def enterValue(self, ctx):
        print('input v', ctx)

    def exitValue(self, ctx):
        print('input v', ctx)


class KeyPrinter(CFlatListener):     
    def exitKey(self, ctx):         
        print("Oh, a key!") 

def run(argv):
    input = FileStream(argv[1])
    lexer = CFlatLexer(input)
    stream = CommonTokenStream(lexer)
    parser = CFlatParser(stream)
    tree = parser.r()
    print(tree.toStringTree(recog=parser))

if __name__ == "__main__":
    run(sys.argv)