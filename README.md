# jafja

Centralized log architecture approach using JS.

## Usage

```javascript
somelibrary.jafja = jafja
somelibrary.jafja.bind("eventname", function(result) {
  console.log(result);
});
somelibrary.jafja.trigger("eventname", "value");
```
