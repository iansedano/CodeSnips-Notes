```sh
> show databases
> use luz
> show collections
prices
> db.prices.findOne()
{
  _id: ObjectId('62dd80f1647939ca7cd84a14'),
  date: ISODate('2022-07-24T04:00:00.000Z'),
  price: 414.6
}

> db.prices.find({ price: { $gt:700 } })
[
  {
    _id: ObjectId('630d7d331908e32ec898e30e'),
    date: ISODate('2022-08-30T04:00:00.000Z'),
    price: 712.6
  },
  {
    _id: ObjectId('630eceb21f1f9fa08b13ac34'),
    date: ISODate('2022-08-31T05:00:00.000Z'),
    price: 706.28
  }
]

> db.items.aggregate([
  {
    $match: { price: { $gte: 100 } } // Filter out items with price less than 100
  },
  {
    $bucket: {
      groupBy: "$price", 
      boundaries: [100, 200, 300, 400, 500, 600], 
      default: "Other", 
      output: {
        count: { $sum: 1 }
      }
    }
  }
])
[
  { _id: 0, count: 1319 },
  { _id: 100, count: 5106 },
  { _id: 200, count: 2258 },
  { _id: 300, count: 987 },
  { _id: 400, count: 322 },
  { _id: 500, count: 92 },
  { _id: 600, count: 65 },
  { _id: 700, count: 2 }
]
```