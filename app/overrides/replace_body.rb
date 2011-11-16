Deface::Override.new(:virtual_path => %q{layouts/spree_application},
                          :name => %q{replace_body},
                          :replace => %q{[data-hook='body']},
                          :closing_selector => %q{},
                          :text => %q{<body id="<%= (@body_id == 'signup' ? 'checkout' : @body_id) || controller.controller_name %>">
      <div id="topbar">
        <div class="container">
          <header>
            <div id="logo">
              <%= link_to "Tuatun", root_url %>
            </div>
            <nav id="global_nav">
              <ul>
                <li><%= link_to "products", products_path %></li>
              </ul>
            </nav>
            <nav id="utility_nav">
              <% if current_user %>
                <%= link_to t('my_account'), account_path, :class => "cart" %>
                <%= link_to t('logout'), destroy_user_session_path, :class => "cart" %>
              <% else %>
                <%= link_to t('log_in'), login_path, :class => "cart" %>
              <% end %>
              <%= link_to_cart %>
            </nav>

          </header>

          <% if content_for?(:banner) %>
            <div id="banner" role="banner">
              <%= yield :banner %>
            </div>
          <% end %>
      </div>
    </div>
                            
                            
    <div class="container" id="page">
        <div id="main" role="main">
          <% if flash.notice %>
            <div class="flash notice"><%= flash.notice %></div>
          <% end %>
          <% if flash[:error] %>
            <div class="flash errors"><%= flash[:error] %></div>
          <% end %>
        
          <%= yield %>
        </div>
        
        <% if content_for?(:sidebar) %>
          <div id="sidebar" role="sidebar">
            <%= yield :sidebar %>
          </div>
        <% end %>
        
    </div>
    
    <div class="container">
      <footer data-hook="footer">
        <p id="copyright">&copy; Copyright <%= Time.zone.now.year %> tuatun. All rights reserved</p>
      </footer>
    </div>
</body>})
