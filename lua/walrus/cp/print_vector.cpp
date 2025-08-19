template<typename T>
ostream& operator<<(ostream& os,vector<T> v){
	if(v.size()){
		os <<"[" << v[0];
		for(int i =1;i<v.size();i++)
			os << ',' << v[i];
		os << "]\n";
	}
	else{
		os<<"[]\n";
	}
	return os;
}
