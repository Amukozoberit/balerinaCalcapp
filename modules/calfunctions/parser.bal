

// fact(n)=n *fact(n-1);
// fact(1)=1;

public function fact(int n) returns int{
    if n<=1{
        return 1;
    }
    else{
        return n*fact(n-1);
    }
}


public function sort(int[] input) returns int[]{
    int i=0;
    boolean swapped;
    while i<input.length()-1{
        int j=0;
        swapped=false;
        while j<input.length()-i-1{
            if (input[j+1]<input[j]){
                int temp=input[j];
                input[j]=input[j+1];
                input[j+1]=temp;
                swapped=true;

            }
            j+=1;
        }
        if !swapped{
            break;
        }
        i+=1;
    }
    return input;
}