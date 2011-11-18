Deface::Override.new(:virtual_path => %q{shared/_head},
                          :name => %q{add_to_head},
                          :insert_after => %q{code[erb-loud]:contains('stylesheet_link_tag')},
                          :text => %q{<link href='http://fonts.googleapis.com/css?family=Cabin:500' rel='stylesheet' type='text/css'>
                            <link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>})
