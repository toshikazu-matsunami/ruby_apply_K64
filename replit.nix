{ pkgs }: {
	deps = [
        pkgs.ruby
        pkgs.ruby main.rb
        pkgs.ruby
        pkgs.solargraph
        pkgs.rufo
	];
}