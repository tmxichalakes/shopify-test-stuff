
# Shopify Category Metaproperties

> Shopify will add **Category Metaproperties** to your product if you select a category. Once they’re applied, they’re weirdly hard to unapply. To remove meta tags, you can switch the category to **Uncategorized**.

---

## Services as Products

- **Services** are the highest-level product.
- The user selects a **variant** based on:
	- Turnaround time
	- Cost
	- (Other factors as needed)
- This makes the tiers into variants.

---

## Using Tags for Custom Behaviors

To identify and implement specific, class-like behaviors, use **tags**.

- Define custom behaviors by using tags and modifying templates.
- The tag is set on the product page.
- If you’re consistent with tag use, this is reusable.

**Example:**

```markdown
{% if product.tags contains 'signature-entry' %}
	<label for="signer-name">Signer's Name:</label>
	<input type="text" id="signer-name" name="properties[Signer]" required>
{% endif %}
```
