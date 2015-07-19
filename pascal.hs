pascal n 0 =1
pascal n r | n == r = 1
pascal n r = pascal (n-1) (r-1) + pascal(n-1) r
