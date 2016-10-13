from antlr4 import *
from CFlatLexer import CFlatLexer
from CFlatListener import CFlatListener
from CFlatParser import CFlatParser
import sys


def main(argv):
    input = FileStream(argv[1])
    lexer = CFlatLexer(input)
    stream = CommonTokenStream(lexer)
    parser = CFlatParser(stream)
    tree = parser.r()

if __name__ == '__main__':
    main(sys.argv)