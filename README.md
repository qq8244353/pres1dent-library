# pres1dent-library
自分用に書きました。
i_iとかはpairです。
i64はlonglongです。
## pf (prime-factorization)
素因数分解
#### コンストラクタ
```
pf p(int n)
```
##### 計算量
$ O(n \log \log n) $
#### decomp
```
vector<l_l> decomp(int k)
``` 
素因数分解を行い、(素因数、指数)の配列を返します。
##### 制約
$ k \leq n $
##### 計算量
$O(log k)$

#### decompr
```
vector<l_l> decompr(i64 k) 
```
素因数分解を行い、(素因数、指数)の配列を返します。
##### 制約
(kの最大の素因数) $ \leq n $
##### 計算量
$O(\sqrt k)$

#### isp
```
bool isp(int k)
```
素数ならば*true*、素数でないならば*false*を返します。
##### 制約
$ k \leq n $
##### 計算量
$O(1)$

## allp (all-prime)
素数全列挙
```
allp p(i64 n)
```
*n* 以下の素数が昇順に被りなく入っている配列を返します。
##### 計算量
$ O(\sqrt n) $

## fact (階乗計算ライブラリ)
階乗の計算や、modのcombinationを高速に計算します。
**atcoder/modint**に依存しています。
#### コンストラクタ
```
factorial f(int s)
```
##### 計算量
$ O(s) $
#### comb
```
mint comb(n, k)
``` 
mintのmod以下での$ _nC_k $の値を返します。
##### 制約
$ 0 \leq n \leq k \leq s $
##### 計算量
$ O(1) $
#### get_fact
```
mint get_fact(k)
``` 
mintのmod以下での$ k! $の値を返します。
##### 制約
$ 0 \leq k \leq s $
##### 計算量
$ O(1) $
#### get_ifact
```
mint get_ifact(k)
``` 
mintのmod以下での $ \frac{1}{k!} $ の値を返します。
##### 制約
$ 0 \leq k \leq s $
##### 計算量
$ O(1) $

