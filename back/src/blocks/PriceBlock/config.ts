import type { Block } from 'payload'

export const PriceBlock: Block = {
  slug: 'priceBlock',
  interfaceName: 'PriceBlock',
  fields: [
    {
      name: 'price',
      type: 'number',
      required: true,
    },
  ],
}
