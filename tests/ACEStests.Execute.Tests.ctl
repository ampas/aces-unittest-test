import "ACEStests.ACESlib.Utilities";

void main (input varying float rIn, 
           output varying float rOut) { 

    // ACESlib.Utilities
    test_min();
    test_max();
    test_min_f3();
    test_max_f3();
    test_clip();
    test_clip_f3();
    test_clamp();
    test_clamp_f3();
    test_add_f_f3();
    test_pow_f3();
    test_pow10_f3();
    test_log10_f3();
    test_round();
    test_log2();
    test_sign();
    test_sign_positive();
    test_sign_zero();
    
}
