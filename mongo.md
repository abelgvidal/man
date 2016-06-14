
```
db.food.find({'nutrients': {$elemMatch: {'sugar': true, 'protein': false}}}).count()
```
