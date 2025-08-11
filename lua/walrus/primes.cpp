const int range=1e6+1;
vector<int> spfv(range);
vector<int> primes;
bitset<range>is_prime(true);
void spf(){
        is_prime.set();
        is_prime[0]=is_prime[1]=false;
        spfv[1]=1;
        for(int x=2;x<range;x++){
                if(is_prime[x]){
                        spfv[x]=x;
                        primes.push_back(x);
                        for(int i=x*x; i<range;i+=x){
                                is_prime[i]=false;
                                spfv[i]=x;
                        }
                }
        }
}
