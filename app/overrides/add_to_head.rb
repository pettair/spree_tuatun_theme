Deface::Override.new(:virtual_path => %q{layouts/spree_application},
                          :name => %q{add_to_head},
                          :insert_bottom => %q{[data-hook='inside_head']},
                          :closing_selector => %q{},
                          :text => %q{<link href="<%=request.protocol%>fonts.googleapis.com/css?family=Arvo:regular,italic,bold,bolditalic" rel="stylesheet" type="text/css" >
<%= stylesheet_link_tag 'rdr' %>},
                          :disabled => false,
                          :sequence => 100)

