package main

import "testing"

func Test_addthis(t *testing.T) {
	type args struct {
		a int
		b int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		{"Adds 1 to 0", args{1, 0}, 1},
		{"Adds 0 to 3", args{0, 2}, 2},
	}
	for _, tt := range tests {
		if got := addthis(tt.args.a, tt.args.b); got != tt.want {
			t.Errorf("%q. addthis() = %v, want %v", tt.name, got, tt.want)
		}
	}
}

func Test_main(t *testing.T) {
	tests := []struct {
		name string
	}{
	// TODO: Add test cases.
	}
	for range tests {
		main()
	}
}
