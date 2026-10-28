from slug import slugify


def test_slugify_joins_words():
    assert slugify("Hello World") == "hello-world"
