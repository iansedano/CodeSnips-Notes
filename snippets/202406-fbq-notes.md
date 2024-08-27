Parameters are optional, JSON-formatted objects that you can include when tracking standard and custom events.

```js
fbq('track', 'Purchase',
  {
    value: 115.00,
    currency: 'USD',
    contents: [
      {
        id: '301',
        quantity: 1
      },
      {
        id: '401',
        quantity: 2
      }],
    content_type: 'product'
  }
  // end parameter object data
);
```


- **content_category**: string - Category of the page or product.
- **content_ids**: array of integers or strings - Product IDs associated with the event, such as SKUs. Example: `['ABC123', 'XYZ789']`.
- **content_name**: string - Name of the page/product.
- **content_type**: string - Can be `product` or `product_group` based on the `content_ids` or `contents` being passed. If the IDs being passed in the `content_ids` or `contents` parameter are IDs of products, then the value should be `product`. If product group IDs are being passed, then the value should be `product_group`.
- **contents**: array of objects - Array of JSON objects that contains the International Article Number (EAN) when applicable or other product or content identifier(s) associated with the event, and quantities and prices of the products. Required: id and quantity. Example: `[{ 'id': 'ABC123', 'quantity': 2 }, { 'id': 'XYZ789', 'quantity': 2 }]`.
- **currency**: string - Currency for the value specified.
- **delivery_category**: string - Category of the delivery. Supported values: `in_store` — Purchase requires customer to enter the store, `curbside` — Purchase requires curbside pickup, `home_delivery` — Purchase is delivered to the customer.
- **num_items**: integer - Number of items when checkout was initiated. Used with the InitiateCheckout event.
- **predicted_ltv**: integer, float - Predicted lifetime value of a subscriber as defined by the advertiser and expressed as an exact value.
- **search_string**: string - String entered by the user for the search. Used with the Search event.
- **status**: Boolean - Used with the CompleteRegistration event, to show the status of the registration.
- **value**: integer or float - Value of a user performing this event to the business.


CUSTOM PROPS

```js
fbq('track', 'Purchase',
  // begin parameter object data
  {
    value: 115.00,
    currency: 'USD',
    contents: [
      {
        id: '301',
        quantity: 1
      },
      {
        id: '401',
        quantity: 2
      }],
    content_type: 'product',
    compared_product: 'recommended-banner-shoes',  // custom property
    delivery_category: 'in_store'
  }
  // end parameter object data
);
```
