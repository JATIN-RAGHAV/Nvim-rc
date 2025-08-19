vector<pair<int,int>>factorise(int n){
	vector<pair<int,int>>res;
	for(int i=2;i*i<=n;i++){
		if(!(n%i)){
			res.push_back(make_pair(i,0));
			while(!(n%i)){
				n/=i;
				res.back().second++;
			}
		}
	}
	if(n>1){
		res.push_back(make_pair(n,1));
	}
	return res;
}

long long pow(int n, int e, int m){
	if(e==0)return 1;
	if(e==1)return n;
	long long half = pow(n, e/2, m);
	long long full = (half * half)%m;

	return (e&1? (full*n)%m : full);
}

int inverse(int x,int m){
	int totient = 1;
	auto factors = factorise(m);
	for(auto x:factors){
		totient *= pow(x.first,x.second-1,m)*(x.first-1);
	}
	return pow(x,totient-1,m);
};
