from os import walk
import re


def main() :

    with open("scores-index.md", "w") as index_file :

        def pr(*args) : print(*args, file=index_file)

        pr("# Partitions")
        pr("")

        for (dirpath, dirnames, filenames) in walk(".") :
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

                    pr(f"- [{composer} — {title}]({dirpath}/{filename})")


if __name__ == "__main__" :
    main()