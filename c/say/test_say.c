#include "test-framework/unity.h"
#include "say.h"
#include <stdlib.h>

static char *ans = NULL;

void setUp(void)
{
}

void tearDown(void)
{
   if (ans)
      free(ans);
   ans = NULL;
}

static void test_zero(void)
{
   int res = say(0, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("zero", ans);
}

static void test_one(void)
{
   
   int res = say(1, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("one", ans);
}

static void test_fourteen(void)
{
   
   int res = say(14, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("fourteen", ans);
}

static void test_twenty(void)
{
   
   int res = say(20, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("twenty", ans);
}

static void test_twenty_two(void)
{
   
   int res = say(22, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("twenty-two", ans);
}

static void test_one_hundred(void)
{
   
   int res = say(100, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("one hundred", ans);
}

static void test_one_hundred_twenty_three(void)
{
   
   int res = say(123, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("one hundred twenty-three", ans);
}

static void test_one_thousand(void)
{
   
   int res = say(1000, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("one thousand", ans);
}

static void test_one_thousand_two_hundred_thirty_four(void)
{
   
   int res = say(1234, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("one thousand two hundred thirty-four", ans);
}

static void test_one_million(void)
{
   
   int res = say(1000000, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("one million", ans);
}

static void test_one_million_two_thousand_three_hundred_forty_five(void)
{
   
   int res = say(1002345, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("one million two thousand three hundred "
                            "forty-five",
                            ans);
}

static void test_one_billion(void)
{
   
   int res = say(1000000000, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("one billion", ans);
}

static void test_a_big_number(void)
{
   
   int res = say(987654321123, &ans);
   TEST_ASSERT_EQUAL_INT(0, res);
   TEST_ASSERT_EQUAL_STRING("nine hundred eighty-seven billion six hundred "
                            "fifty-four million three hundred twenty-one "
                            "thousand one hundred twenty-three",
                            ans);
}

static void test_numbers_below_zero_are_out_of_range(void)
{
   
   int res = say(-1, &ans);
   TEST_ASSERT_EQUAL_INT(-1, res);
}

static void test_numbers_above_999_999_999_999_are_out_of_range(void)
{
   
   int res = say(1000000000000, &ans);
   TEST_ASSERT_EQUAL_INT(-1, res);
}

int main(void)
{
   UnityBegin("test_say.c");

   RUN_TEST(test_zero);
   RUN_TEST(test_one);
   RUN_TEST(test_fourteen);
   RUN_TEST(test_twenty);
   RUN_TEST(test_twenty_two);
   RUN_TEST(test_one_hundred);
   RUN_TEST(test_one_hundred_twenty_three);
   RUN_TEST(test_one_thousand);
   RUN_TEST(test_one_thousand_two_hundred_thirty_four);
   RUN_TEST(test_one_million);
   RUN_TEST(test_one_million_two_thousand_three_hundred_forty_five);
   RUN_TEST(test_one_billion);
   RUN_TEST(test_a_big_number);
   RUN_TEST(test_numbers_below_zero_are_out_of_range);
   RUN_TEST(test_numbers_above_999_999_999_999_are_out_of_range);

   return UnityEnd();
}
