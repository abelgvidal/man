import argparse

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description="""
        this is how it works.
    """)

    # https://docs.python.org/dev/library/argparse.html#the-add-argument-method
    parser.add_argument('thing', metavar='thing', nargs='+', help='we get to have 1 or more of these')
    parser.add_argument('--stringthing', default='something', help='helpful message')
    parser.add_argument('--flag', action='store_true')
    parser.add_argument('--count', type=int, default=1, help='we can have types of things')
    parser.add_argument('--filehandle', type=argparse.FileType('r'), help='use a file type to get a filehandle')
    parser.add_argument('--item', choices=[1,2,3])
    args = parser.parse_args()
