
from typer import Typer


app = Typer(name="wscrape")


@app.callback()
def main() -> None:
    """
    A CLI tool for loading GIS files to a PostGIS database.
    """
