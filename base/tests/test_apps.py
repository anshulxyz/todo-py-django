"""to test the GitHub Actions"""

from base.apps import BaseConfig


def test_base__apps_name():
    assert BaseConfig.name == "base"
