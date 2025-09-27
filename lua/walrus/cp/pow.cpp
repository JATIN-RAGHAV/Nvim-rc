int pow(int a, int b, int M){
        if(!b)return a%M;
        long long ans = pow(a,b/2,M);
        ans*=ans;
        ans%=M;
        if(b&1){
                ans*=a;
                ans%=M;
        }
        return ans;
}
