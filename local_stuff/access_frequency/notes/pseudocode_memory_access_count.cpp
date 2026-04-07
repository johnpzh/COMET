
string get_loop_factor(u) {
  factors = [];
  while (u has a loop ancestor) {
    ancestor_loop = get_loop_ancestor(u);
    loop_range = get_loop_range(ancestor_loop);
    factors += loop_range;
  }

  total_factor = get_sum_of_factors(factors);

  return total_factor;
}

void analyze_one_memory_object(A,
                               write_A /*output*/,
                               read_A /*output*/) {
  users = get_users(A);
  write_A = 0;  /// implemented as a list, the total count is represented as time complexity, i.e., the sum of all list elements
  read_A = 0;
  for (u in users) {
    loop_factor = 1;
    if (u is in loops) {
      loop_factor = get_loop_factor(u); /// the loop_factor could be a constant or a runtime value
    }
    if (u is in load) {
      read_A += loop_factor;
    } else if (u is in write) {
      write_A += loop_factor;
    } else {
      throw Error("error of unknown operations");
    }
  }
}

void memory_access_count_analysis() {
  read_count_map = {};  /// output
  write_count_map = {};  /// output
  while (found a new memory object) {
    A = the memory object created by malloc;
    write_A = vector();
    read_A = vector();
    analyze_one_memory_object(A, write_A, read_A);
    read_count_map[A] = read_A;
    write_count_map[A] = write_A;
  }
}