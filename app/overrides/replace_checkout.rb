Deface::Override.new(:virtual_path => %q{checkout/edit},
                          :name => %q{replace_checkout},
                          :replace => %q{#checkout[data-hook]},
                          :closing_selector => %q{},
                          :text => %q{<div id="checkout" role="checkout" class="clearfix">
  <div id="title" role="title">CHECKOUT</div>
  <!-- START MAIN CONTENT -->
  <div id="main-content" role="main-content">
    <%= render "shared/error_messages", :target => @order %>
    <%= render 'checkout_tabs' %>
    <%= render 'checkout_tab_content' %>
  </div>
  <!-- END MAIN CONTENT -->
  <%= render 'summary' %>
</div>},
                          :disabled => false,
                          :sequence => 100)

