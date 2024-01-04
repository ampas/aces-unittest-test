import "ACESlib.Utilities";

void compare_vals(float a, float b) {

    if(a == b) {  
         print("PASSED\n");
    } else {
         print("FAILED\n");
    }

}

void test_min () {

    float a = 0.2;
    float b = 0.7;

    float result = min(a, b);
    float expected = a;
    
    compare_vals(expected, result);

}

void test_max () {

    float a = 0.2;
    float b = 0.7;

    float result = max(a, b);
    float expected = a;
    
    compare_vals(expected, result);

}

void main 
( input varying float rIn,
  output varying float rOut)
{ 

    test_min();
    test_max();

}