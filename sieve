struct pf {
    pf (int n) : _n(n), prime(vector<int>(n + 1)), mfact(vector<int>(n + 1)) {
        for (int i = 0; i <= n; i++) mfact[i] = -1;
        for (int i = 0; i <= n; i++) prime[i] = true;
        prime[0] = prime[1] = false;
        mfact[0] = mfact[1] = 1;
        for (int i = 2; i <= n; i++) {
            if (prime[i]) {
                ps.push_back(i);
                mfact[i] = i;
                for (int j = 2 * i; j <= n; j += i) {
                    prime[j] = false;
                    if (mfact[j] == -1) mfact[j] = i;
                }
            }
        }
        s = ps.size();
    }
    vector<l_l> decomp(int n) {
        vector<l_l> ret;
        if (n > _n or n <= 1) return ret;
        int i = -1;
        while (n > 1) {
            if (i == -1 or ret[i].first != mfact[n]) {
                ret.push_back({mfact[n], 0});
                i++;
            }
            n /= mfact[n];
            ret[i].second++;
        }
        return ret;
    }
    vector<l_l> decompr(i64 n) {
        vector<l_l> ret;
        if (n <= 1) return ret;
        if (s == 0) return ret;
        i64 i = 0;
        i64 cnt = -1;
        while ((i64)ps[i] * ps[i] <= n) {
            if (n % ps[i] == 0) {
                ret.push_back({ps[i], 1});
                cnt++;
                n /= ps[i];
                while (n % ps[i] == 0) {
                    n /= ps[i];
                    ret[cnt].second++;
                }
            }
            i++;
            if (i == s) break;
        }
        if (n > 1) ret.push_back({n, 1});
        return ret;
    }
    bool isp(int n) {
        if (n < 0 or n >= _n) return false;
        else return prime[n];
    }
private:
    int _n;
    int s;
    vector<int> prime;
    vector<int> ps;
    vector<int> mfact;
};