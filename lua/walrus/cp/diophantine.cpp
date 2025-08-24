long long extended_gcd(long long a, long long b,vector<pair<long long,long long>>& history){
	history.push_back(make_pair(a, b));
	if(!b)return a;

	return extended_gcd(b, a%b,history);
}

pair<long long,long long> extended_euclid(long long a, long long b){
	vector<pair<long long,long long>> history;
	long long g = extended_gcd(a, b, history);
	bool order = a>b;
	// a * x + b * y = gcd(a,b)
	long long x,y,a_, b_;
	a_=history.back().first;
	b_=0;
	x=1,y=1;
	for(long long i=history.size()-2;i>=0;i--){
		long long na = history[i].first;
		long long nb = history[i].second;
		if(a_<b_){
			swap(a_,b_);
			swap(x,y);
		}
		long long negx = na/nb;
		negx*=y;
		x-=negx;
		b_=na;
	}
	if(a_<b_){
		swap(x,y);
	}
	if(!order)swap(x,y);
	return make_pair(x, y);
}

pair<long long,long long> diophantine(long long a,long long b,long long c){
	long long g = gcd(a,b);
	if(!(c%g)){
		pair<long long,long long> res = extended_euclid(a,b);
		res.first*=(c/g);
		res.second*=(c/g);
		return res;
	}
	else{
		return ({0,0});
	}

}
