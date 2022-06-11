unit module Phone;

sub clean-number ($number) is export {
   my @nums;
   if ($number ~~ /<[ ! @ $ % : ]>+/) { die "punctuations not permitted"; }
   if ($number ~~ /<[ A..Z a..z ]>+/) { die "letters not permitted"; }
   @nums = $number.comb(/\d/);
   if (@nums.elems > 11) { die "more than 11 digits"; }
   if (@nums.elems < 10) { die "incorrect number of digits"; }
   if (@nums.elems == 11) {
      if (@nums[0].Int != 1) {die "11 digits must start with 1"; }
      if (@nums[1].Int == 0) {die "area code cannot start with zero"; }
      if (@nums[1].Int == 1) {die "area code cannot start with one"; }
      if (@nums[4].Int == 0) {die "exchange code cannot start with zero"; }
      if (@nums[4].Int == 1) {die "exchange code cannot start with one"; }
      @nums = @nums[1..*];
   }
   if (@nums.elems == 10) {
      if (@nums[0].Int == 0) {die "area code cannot start with zero"; }
      if (@nums[0].Int == 1) {die "area code cannot start with one"; }
      if (@nums[3].Int == 0) {die "exchange code cannot start with zero"; }
      if (@nums[3].Int == 1) {die "exchange code cannot start with one"; }
   }
   return @nums.join("");
}
