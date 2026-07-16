import pytest
from app import add

def test_add_integers():
    assert add(2, 3) == 5

def test_add_floats():
    assert add(2.5, 1.5) == 4.0
