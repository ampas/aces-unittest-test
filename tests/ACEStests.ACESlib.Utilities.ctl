import "ACEStests.Common";
import "ACESlib.Utilities";

void test_min () {
    float a = 0.2;
    float b = 0.7;
    float result = min(a, b);
    float expected = a;
    compare_f(expected, result);
}

void test_max () {
    float a = 0.2;
    float b = 0.7;
    float result = max(a, b);
    float expected = b;
    compare_f(expected, result);
}

void test_min_f3 () {
    float a[3] = {0.1, 0.05, 0.4};
    float result = min_f3(a);
    float expected = 0.05;
    compare_f(expected, result);
}

void test_max_f3 () {
    float a[3] = {0.1, 0.05, 0.4};
    float result = max_f3(a);
    float expected = 0.4;
    compare_f(expected, result);
}

void test_clip() {
    float v = 1.2;
    float result = clip(v);
    float expected = 1.0;
    compare_f(expected, result);
}

void test_clip_f3() {
    float in[3] = {0.9, 1.1, 0.5};
    float result[3] = clip_f3(in);
    float expected[3] = {0.9, 1.0, 0.5};
    compare_f3(expected, result);
}

void test_clamp() {
    float in = 0.5;
    float clampMin = 0.3;
    float clampMax = 0.7;
    float result = clamp(in, clampMin, clampMax);
    float expected = in;
    compare_f(expected, result);
}

void test_clamp_f3() {
    float in[3] = {0.2, 0.5, 0.8};
    float clampMin = 0.3;
    float clampMax = 0.7;
    float result[3] = clamp_f3(in, clampMin, clampMax);
    float expected[3] = {0.3, 0.5, 0.7};
    compare_f3(expected, result);
}

void test_add_f_f3() {
    float a = 0.2;
    float b[3] = {0.1, 0.2, 0.3};
    float result[3] = add_f_f3(a, b);
    float expected[3] = {0.3, 0.4, 0.5};
    compare_f3(expected, result);
}

void test_pow_f3() {
    float a[3] = {0.2, 0.4, 0.6};
    float b = 2.0;
    float result[3] = pow_f3(a, b);
    float expected[3] = {0.04, 0.16, 0.36};
    float tolerance = 1e-7;
    compare_f3_with_tol(expected, result, tolerance);
}

void test_pow10_f3() {
    float a[3] = {1, 2, 3};
    float result[3] = pow10_f3(a);
    float expected[3] = {10, 100, 1000};
    compare_f3(expected, result);
}

void test_log10_f3() {
    float a[3] = {1, 10, 100};
    float result[3] = log10_f3(a);
    float expected[3] = {0, 1, 2};
    compare_f3(expected, result);
}

void test_round() {
    float x = 2.5;
    float result = round(x);
    float expected = 3.0;
    compare_f(expected, result);
}

void test_log2() {
    float x = 8.0;
    float result = log2(x);
    float expected = 3.0;
    compare_f(expected, result);
}

void test_sign() {
    float x = -2.0;
    int result = sign(x);
    int expected = -1;
    compare_int(expected, result);
}

void test_sign_positive() {
    float x = 2.0;
    int result = sign(x);
    int expected = 1;
    compare_int(expected, result);
}

void test_sign_zero() {
    float x = 0.0;
    int result = sign(x);
    int expected = 0;
    compare_int(expected, result);
}
