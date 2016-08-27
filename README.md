# wp-cli Cookbook

A Chef cookbook that installs [WP-CLI](https://wp-cli.org), a command line interface for WordPress.

## Requirements

* Requires PHP to be installed (not added as a dependency)


## Attributes

### wp-cli::default

| Key | Type | Description | Default |
| --- | ---- | ----------- | ------- |
| `['wp-cli']['user']` | String | Username to run the executable as | `deploy`

## Usage

### wp-cli::default


Include `wp-cli` in your node's `run_list`:

```json
{
  "name": "node",
  "run_list": [
    "recipe[wp-cli]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Authors: [Lennard Timm](https://github.com/lenn4rd)
