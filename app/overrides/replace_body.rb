Deface::Override.new(:virtual_path => %q{layouts/spree_application},
                          :name => %q{replace_body},
                          :replace => %q{[data-hook='body']},
                          :closing_selector => %q{},
                          :text => %q{<body id="<%= (@body_id == 'signup' ? 'checkout' : @body_id) || controller.controller_name %>">
    <!-- Wrapper Section -->
    <div id="wrapper_sec">
    	<!-- Header Section -->
    	<header class="masthead">
        <div id="logo">
          <%= link_to "Tuatun", root_url %>
        </div>
        <nav>
          <p>Welcome!
          <% if current_user %>
            <%= current_user.login %></p>
            <ul class="links">
              <li><%= link_to t('my_account'), account_path%></li>
              <li><%= link_to t('logout'), destroy_user_session_path, :class => "last" %></li>
            </ul>
          <% else %>
            </p>
            <ul class="links">
              <li><%= link_to t('signup'), signup_path %></li>
              <li class="last"><%= link_to t('log_in'), login_path %></li>
            </ul>
          <% end %>
          <div class="clear"></div>
          <div class="cart_bag">
            <%= link_to_cart %>
          </div>
        </nav>
      </header>
      
      <div class="clear"></div>
      
      <header class="menubar">
        <nav id="smoothmenu1" class="ddsmoothmenu">
          <ul>
            <li><%= link_to t('home'), root_path %></li>
            <li><%= link_to "products", products_path %></li>
            <li><a href="#">Specials</a>
              <ul>
                <li><%= link_to "Test", "#" %></li>
                <li><%= link_to "Test", "#" %></li>
                <li><%= link_to "Test", "#" %></li>
                <li><%= link_to "Test", "#" %></li>
            	</ul>
            </li>
          </ul>
          <br style="clear: left" />
        </nav>
        <form action="#" >
        </form>
        <%= form_tag products_url, :method => :get do %>
          <input type="search" id="s1" class="empty" name="keywords" placeholder="Search Tuatun">
        <% end %>
        <div class="clear"></div>
      </header>
        
      
      
      <div id="container">
        <header>
          


        </header>
        
        <% if content_for?(:banner) %>
          <div id="banner" role="banner">
            <%= yield :banner %>
          </div>
        <% end %>
        
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
    
    <footer>
      <div class="inner">
        <img src="/assets/kid.jpg" width="204" height="413" alt="Kid" id="kid">
    
        <div id="about-railsdog-radio">
          <div>
            <p>
              <strong>Railsdog Radio</strong> is NOT a real satellite radio store, it's a fully working demo application
              for <a href="http://www.spreecommerce.com">Spree Commerce</a>. Please feel free to play around, but don't submit any information you would not consider public!</p>
            <p id="more-about-railsdog-radio">
              <a href="/about">More about Railsdog Radio ></a>
            </p>
          </div>
        </div>
    
        <div id="contact-us">
          <h3>Contact Us</h3>
          <p>
          (301)560-2000<br>
          <a href="mailto:sales@railsdogradio.com">sales@railsdogradio.com</a>
          </p>
        </div>
    
        <div id="social">
          <h3>Social</h3>
          <p>
          <a href="http://facebook.com/spreecommerce" id="facebook"><span>Facebook</span></a>
          <a href="http://feeds2.feedburner.com/spreehq" id="rss"><span>RSS</span></a>
          <a href="http://twitter.com/spreecommerce" id="twitter"><span>Twitter</span></a>
          </p>
        </div>
    
        <div id="menu">
          <h3>Menu</h3>
          <p>
          <a href="/about">About us</a><br />
          <a href="/privacy">Privacy policy</a>
          </p>
        </div>
    
        <p id="copyright">&copy; Copyright <%= Time.zone.now.year %> Railsdog Radio. All rights reserved</p>
    
      </div>
    </footer>
</body>},
                          :disabled => false,
                          :sequence => 100)

