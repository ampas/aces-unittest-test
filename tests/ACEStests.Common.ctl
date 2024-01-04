void compare_f( float a, float b) {
    if(a == b) {  
         print("PASSED\n");
    } else {
         print("FAILED\n");
    }
}

void compare_f_with_tol(float a, float b, float tolerance) {
    if (fabs(a - b) <= tolerance) {
        print("PASSED\n");
    } else {
        print("FAILED\n");
    }
}

void compare_h(half a, half b) {
    if(a == b) {  
         print("PASSED\n");
    } else {
         print("FAILED\n");
    }
}

void compare_h_with_tol(half a, half b, half tolerance) {
    if (fabs(a - b) <= tolerance) {
        print("PASSED\n");
    } else {
        print("FAILED\n");
    }
}

void compare_f3(float a[3], float b[3]) {
    if (a[0] == b[0] && a[1] == b[1] && a[2] == b[2]) {
        print("PASSED\n");
    } else {
        print("FAILED\n");
    }
}

void compare_f3_with_tol(float a[3], float b[3], float tolerance) {
    if (fabs(a[0] - b[0]) <= tolerance &&
        fabs(a[1] - b[1]) <= tolerance &&
        fabs(a[2] - b[2]) <= tolerance) {
        print("PASSED\n");
    } else {
        print("FAILED\n");
    }
}

void compare_int(int a, int b) {
    if (a == b) {
        print("PASSED\n");
    } else {
        print("FAILED\n");
    }
}
