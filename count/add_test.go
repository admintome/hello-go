package count

import "testing"

func TestAddthis(t *testing.T) {
	type args struct {
		a int
		b int
	}
	tests := []struct {
		name     string
		args     args
		wantTemp int
	}{
		{"Adds 1 to 0", args{1, 0}, 1},
		{"Adds 0 to 3", args{0, 2}, 2},
	}
	for _, tt := range tests {
		if gotTemp := Addthis(tt.args.a, tt.args.b); gotTemp != tt.wantTemp {
			t.Errorf("%q. Addthis() = %v, want %v", tt.name, gotTemp, tt.wantTemp)
		}
	}
}
