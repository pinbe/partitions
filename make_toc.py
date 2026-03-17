import re
from argparse import ArgumentParser
from os import chdir, walk
from os.path import splitext


def file_links_md(basefolder:str, dirpath:str, filename:str, giturl:str, branch:str, composer:str, title:str) -> str :
    pdf_link = f"{dirpath}/{filename}.pdf"
    midi_link = f"{dirpath}/{filename}.midi"
    ly_link = f"{giturl}/blob/{branch}/{basefolder}/{dirpath}/{filename}.ly"
    return f"[{composer} — {title}]({pdf_link}) [[MIDI]({midi_link})] [[Source]({ly_link})]"


def main(basefolder:str, giturl:str, branch:str) -> None :

    chdir(basefolder)

    with open("index.md", "w") as index_file :

        def pr(*args) : print(*args, file=index_file)

        pr("# Partitions pour guitare classique")
        pr("")

        for (dirpath, dirnames, filenames) in walk('.') :
            for filename in [f for f in filenames if f.endswith(".ly")] :
                with open(f"{dirpath}/{filename}", "r") as f :
                    lycode = f.read()
                    try :
                        title = re.search(
                            r"\\header.*title\s*=\s*\"([^\"]+)\"", lycode, re.DOTALL
                        ).group(1)
                        composer = re.search(
                            r"\\header.*\bcomposer\b\s*=\s*\"([^\"]+)\"", lycode, re.DOTALL
                        ).group(1)

                    except AttributeError :
                        continue
                    basename = splitext(filename)[0]
                    pr("- %s" % file_links_md(basefolder, dirpath, basename, giturl, branch, composer, title))


if __name__ == "__main__" :
    parser = ArgumentParser()
    parser.add_argument("basefolder",
                        help="Base folder to search for .ly files")
    parser.add_argument("giturl",
                        help="Git URL for the repository "
                             "(used for links to source files in the index)")
    parser.add_argument("--branch",
                        default="master",
                        help="Git branch for the repository "
                             "(used for links to source files in the index)")
    args = parser.parse_args()
    main(args.basefolder, args.giturl, args.branch)