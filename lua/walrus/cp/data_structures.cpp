class data_structures{
        vector<int>v;
        vector<int>size;
        int rep(int i);
public:
        union_find(int n);
        bool same(int a,int b);
        void unite(int a,int b);
        void print();
};

int union_find::rep(int i){
        while(i != v[i]){
                i = v[i];
        }
        return i;
}

union_find::union_find(int n){
        v.assign(n,0);
        size.assign(n,1);
        iota(v.begin(),v.end(),0);
}

bool union_find::same(int a,int b){
        return rep(a) == rep(b);
}

void union_find::unite(int a,int b){
        a = rep(a);
        b = rep(b);
        if(size[a] > size[b])swap(a,b);
        v[a] = b;
        size[b] += size[a];
}
