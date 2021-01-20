# Generated by Django 3.0.4 on 2020-07-04 10:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Post',
            fields=[
                ('sno', models.AutoField(primary_key=True, serialize=False)),
                ('title', models.CharField(default='', max_length=100)),
                ('content', models.TextField(default='')),
                ('author', models.CharField(default='', max_length=50)),
                ('slug', models.CharField(default='', max_length=100)),
                ('timestamp', models.DateTimeField(blank=True)),
            ],
        ),
    ]
