import re
from argparse import ArgumentParser
from os import chdir, walk
from os.path import splitext


def file_links_md(basefolder:str,
                  dirpath:str,
                  filename:str,
                  giturl:str,
                  branch:str,
                  composer:str,
                  title:str,
                  piece:str) -> str :
    pdf_link = f"{dirpath}/{filename}.pdf"
    midi_link = f"{dirpath}/{filename}.midi"
    ly_link = f"{giturl}/blob/{branch}/{basefolder}/{dirpath}/{filename}.ly"
    txt = f'{composer} — {title}'
    txt = txt if not piece else f'{txt}, {piece}'
    return f"[{txt}]({pdf_link}) [[MIDI]({midi_link})] [[Source]({ly_link})]"


def main(basefolder:str, giturl:str, branch:str) -> None :

    chdir(basefolder)

    with open("index.md", "w") as index_file :

        def pr(*args) : print(*args, file=index_file)

        pr("# Partitions pour guitare classique")
        pr("")

        items = []
        for (dirpath, dirnames, filenames) in walk('.') :
            for filename in [f for f in filenames if f.endswith(".ly")] :
                with open(f"{dirpath}/{filename}", "r") as f :
                    lycode = f.read()
                    try :
                        title = re.search(
                            r"\\header.*\btitle\s*=\s*\"([^\"]+)\"", lycode, re.DOTALL
                        ).group(1)
                        composer = re.search(
                            r"\\header.*\bcomposer\b\s*=\s*\"([^\"]+)\"", lycode, re.DOTALL
                        ).group(1)
                        piece = re.search(
                            r"\\header.*\bpiece\b\s*=\s*\"([^\"]+)\"", lycode, re.DOTALL
                        )
                        piece = piece.group(1) if piece is not None else ''

                    except AttributeError :
                        continue
                    basename = splitext(filename)[0]
                    items.append(
                        (basefolder, dirpath, basename, giturl, branch, composer, title, piece)
                    )

        items.sort(
            key=lambda x: (re.findall(r"[^\W\d_]+(?:-[^\W\d_]+)*", x[5])[-1], x[6], x[7])
        )  # Sort by composer, then title, then piece

        for item in items :
            pr("- %s" % file_links_md(*item))


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