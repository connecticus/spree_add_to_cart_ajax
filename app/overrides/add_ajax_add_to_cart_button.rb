Deface::Override.new(virtual_path: 'spree/products/_product',
  name: 'add_add_to_cart_button_to_products_page',
  insert_after: '.panel-footer',
  partial: 'spree/overrides/add_to_cart_panel',
                     disabled: true
)

Deface::Override.new(virtual_path: 'spree/products/show',
                     name: 'add_ajax_form_to_product_page',
                     replace: '#cart-form',
                     partial: 'spree/overrides/add_to_cart_product_show',
                     disabled: true
)

# Deface::Override.new(virtual_path: 'spree/products/show',
#                      name: 'add_ajax_form_to_product_page',
#                      insert_after: '#cart-form',
#                      text: <<-eos
#     <script>
#       $(function() {
#         $('#cart-form form').addToCartAjaxForm();
#       });
#     </script>
# eos
# )