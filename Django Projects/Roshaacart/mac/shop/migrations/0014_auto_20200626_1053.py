# Generated by Django 3.0.4 on 2020-06-26 05:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0013_orderupdate_timestamp'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orderupdate',
            name='timestamp',
            field=models.DateField(default='26 Jun 2020'),
        ),
    ]
