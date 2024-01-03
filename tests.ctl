import "ACESlib.Utilities";


void test_min () {

    float a = 0.2;
    float b = 0.7;

    float result = min(a, b);
    float expected = a;

    if(result == expected) {  
         print("PASSED\n");
    } else {
         print("FAILED\n");
    }
    
   

}

void test_max () {

    float a = 0.2;
    float b = 0.7;

    float result = max(a, b);
    float expected = b;

    if(result == expected) {
         print("PASSED\n");
    } else {
         print("FAILED\n");
    }

}

void main 
( 
  input varying float rIn,
  input varying float gIn,
  input varying float bIn,
  output varying float rOut,
  output varying float gOut,
  output varying float bOut)
{ 

    test_min();
    test_max();

}