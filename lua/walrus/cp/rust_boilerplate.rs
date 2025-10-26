use std::io;

fn solve(){
    
}

fn main(){
    let mut str = String::new();
    io::stdin().read_line(&mut str).expect("Can't read");
    let mut t:i32 = str.trim().parse().expect("Can't parse");
    while t > 0{
        solve();
        t-=1;
    }
}
