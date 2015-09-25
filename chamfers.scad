// OpenSCAD chamfers() module autogenerated by generate_chamfers
// Andrew Ho (andrew@zeuscat.com)

module chamfers(distance) {
  // Epsilon value for creating tiny solid segments from 2D shapes
  e = 0.1;

  // Draw polygons at start (rectangle) and end (polygon) area
  module start_polygon(points) {
    translate([0, 0, -e]) linear_extrude(e) polygon(points);
  }
  module end_polygon(points) {
    translate([0, 0, distance + e]) linear_extrude(e) polygon(points);
  }

  // Draw starting cube and ending total polygon
  translate([0, 0, -e]) cube([2.34, 8.56, e]);
  end_polygon([[0, 0], [0, 0.75], [0.65, 0.75], [1.41, 2.48], [0, 2.48], [0, 5.13], [1.23, 5.65], [0.11, 6.97], [0.75, 8.56], [1.67, 8.56], [1.11, 7.0], [2.23, 5.7], [2.23, 5.38], [0.81, 4.83], [0.81, 3.29], [2.15, 3.29], [2.34, 2.86], [1.45, 0.75], [2.34, 0.75], [2.34, 0]]);

  hull() {
    start_polygon([[0, 0.75], [0.1, 0.375], [0, 0], [0, 0], [0, 0.75]]);
    end_polygon([[0, 0], [0, 0.75], [0.1, 0.375]]);
  }
  hull() {
    start_polygon([[0.65, 0.75], [0.325, 0.65], [0, 0.75], [0, 0.75], [0, 0.75]]);
    end_polygon([[0, 0.75], [0.65, 0.75], [0.325, 0.65]]);
  }
  hull() {
    start_polygon([[1.41, 2.48], [1.1215548982733499, 1.5747793510475456], [0.65, 0.75], [0, 0.75], [0, 2.48]]);
    end_polygon([[0.65, 0.75], [1.41, 2.48], [1.1215548982733499, 1.5747793510475456]]);
  }
  hull() {
    start_polygon([[0, 2.48], [0.705, 2.58], [1.41, 2.48], [0, 2.48], [0, 2.48]]);
    end_polygon([[1.41, 2.48], [0, 2.48], [0.705, 2.58]]);
  }
  hull() {
    start_polygon([[0, 5.13], [0.1, 3.805], [0, 2.48], [0, 2.48], [0, 5.13]]);
    end_polygon([[0, 2.48], [0, 5.13], [0.1, 3.805]]);
  }
  hull() {
    start_polygon([[1.23, 5.65], [0.6539395688742518, 5.297892942855135], [0, 5.13], [0, 5.13], [0, 5.65]]);
    end_polygon([[0, 5.13], [1.23, 5.65], [0.6539395688742518, 5.297892942855135]]);
  }
  hull() {
    start_polygon([[0.11, 6.97], [0.7462509135372796, 6.37469774481951], [1.23, 5.65], [0, 5.65], [0, 6.97]]);
    end_polygon([[1.23, 5.65], [0.11, 6.97], [0.7462509135372796, 6.37469774481951]]);
  }
  hull() {
    start_polygon([[0.75, 8.56], [0.5227669766216769, 7.727659833309515], [0.11, 6.97], [0, 6.97], [0, 8.56]]);
    end_polygon([[0.11, 6.97], [0.75, 8.56], [0.5227669766216769, 7.727659833309515]]);
  }
  hull() {
    start_polygon([[1.67, 8.56], [1.21, 8.46], [0.75, 8.56], [0.75, 8.56], [1.67, 8.56]]);
    end_polygon([[0.75, 8.56], [1.67, 8.56], [1.21, 8.46]]);
  }
  hull() {
    start_polygon([[1.11, 7.0], [1.2958805329238294, 7.813786475360677], [1.67, 8.56], [2.34, 8.56], [2.34, 7.0]]);
    end_polygon([[1.67, 8.56], [1.11, 7.0], [1.2958805329238294, 7.813786475360677]]);
  }
  hull() {
    start_polygon([[2.23, 5.7], [1.5942391309538317, 6.284729097437147], [1.11, 7.0], [2.34, 7.0], [2.34, 5.7]]);
    end_polygon([[1.11, 7.0], [2.23, 5.7], [1.5942391309538317, 6.284729097437147]]);
  }
  hull() {
    start_polygon([[2.23, 5.38], [2.13, 5.54], [2.23, 5.7], [2.34, 5.7], [2.34, 5.38]]);
    end_polygon([[2.23, 5.7], [2.23, 5.38], [2.13, 5.54]]);
  }
  hull() {
    start_polygon([[0.81, 4.83], [1.4838821675312137, 5.1982496765557755], [2.23, 5.38], [2.34, 5.38], [2.34, 4.83]]);
    end_polygon([[2.23, 5.38], [0.81, 4.83], [1.4838821675312137, 5.1982496765557755]]);
  }
  hull() {
    start_polygon([[0.81, 3.29], [0.71, 4.06], [0.81, 4.83], [2.34, 4.83], [2.34, 3.29]]);
    end_polygon([[0.81, 4.83], [0.81, 3.29], [0.71, 4.06]]);
  }
  hull() {
    start_polygon([[2.15, 3.29], [1.48, 3.19], [0.81, 3.29], [2.34, 3.29], [2.34, 3.29]]);
    end_polygon([[0.81, 3.29], [2.15, 3.29], [1.48, 3.19]]);
  }
  hull() {
    start_polygon([[2.34, 2.86], [2.153531339590524, 3.034583615167906], [2.15, 3.29], [2.34, 3.29], [2.34, 2.86]]);
    end_polygon([[2.15, 3.29], [2.34, 2.86], [2.153531339590524, 3.034583615167906]]);
  }
  hull() {
    start_polygon([[1.45, 0.75], [1.8028611405047603, 1.8438642582705038], [2.34, 2.86], [2.34, 2.86], [2.34, 0.75]]);
    end_polygon([[2.34, 2.86], [1.45, 0.75], [1.8028611405047603, 1.8438642582705038]]);
  }
  hull() {
    start_polygon([[2.34, 0.75], [1.895, 0.65], [1.45, 0.75], [2.34, 0.75], [2.34, 0.75]]);
    end_polygon([[1.45, 0.75], [2.34, 0.75], [1.895, 0.65]]);
  }
  hull() {
    start_polygon([[2.34, 0], [2.24, 0.375], [2.34, 0.75], [2.34, 0.75], [2.34, 0]]);
    end_polygon([[2.34, 0.75], [2.34, 0], [2.24, 0.375]]);
  }
  hull() {
    start_polygon([[0, 0], [1.17, 0.1], [2.34, 0]]);
    end_polygon([[2.34, 0], [0, 0], [1.17, 0.1]]);
  }
}

chamfers(4.96);