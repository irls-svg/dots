from pathlib import Path
from jinja2 import Environment, FileSystemLoader

BASE_DIR = Path(__file__).resolve().parent
WALLPAPERS = BASE_DIR.joinpath("wallpapers")

template_env = Environment(loader=FileSystemLoader(searchpath="./templates"))
template_md = template_env.get_template("base.md")

list_wallpapers = [i.name for i in WALLPAPERS.iterdir() if i.is_file()]

def create_readme() -> None:
    with open(f"{WALLPAPERS}/README.md", mode="w") as static_page:
        static_page.write(
            template_md.render(list_wallpapers=list_wallpapers)
        )
if __name__ == "__main__":
    create_readme()