from django.db import models


class Task(models.Model):
    title = models.CharField(max_length=256, null=False)
    completed = models.BooleanField(default=False)
