import pytest
from mixer.backend.django import mixer

from base.models import Task

pytestmark = pytest.mark.django_db


class TestTask:
    def test_task(self):
        obj = mixer.blend(Task)
        assert obj.pk == 1, "Should create a Task"
