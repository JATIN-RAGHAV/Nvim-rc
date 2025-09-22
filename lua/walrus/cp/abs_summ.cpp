const int N = 1e5+1;
vector<long long> pref(N);
long long abs_summ(vector<int>& v){
        long long res = 0;
        int n = v.size();
        sort(v.begin(),v.end());
        for(int i = 0;i<n;i++){
                pref[i+1] =  pref[i] + v[i];
        }
        for(int i = 0;i<n;i++){
                res += pref[n]-pref[i] - (long long)(n-i)*v[i];
                res += (long long)i*v[i] - pref[i];
        }
        return res;
}
