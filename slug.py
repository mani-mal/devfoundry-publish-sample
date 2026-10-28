def slugify(text: str) -> str:
    """Lower-case words joined by hyphens."""
    return "-".join(text.lower().split())
