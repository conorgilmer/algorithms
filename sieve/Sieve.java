/*
 * Calculate the number of primes
 * e.g. java Sieve 10000
 */
public class Sieve {
    public static void main(String[] args) { 
        int N = 0;
	// check if args is empty
	if (args.length ==0)
		N = 4096; // default value
	else
        	N = Integer.parseInt(args[0]);
       
	 // initially assume all integers are prime
        boolean[] isPrime = new boolean[N + 1];
        for (int i = 2; i <= N; i++) {
            isPrime[i] = true;
        }

        // mark non-primes <= N using Sieve of Eratosthenes
        for (int i = 2; i*i <= N; i++) {

            // if i is prime, then mark multiples of i as nonprime
            // suffices to consider mutiples i, i+1, ..., N/i
            if (isPrime[i]) {
                for (int j = i; i*j <= N; j++) {
                    isPrime[i*j] = false;
                }
            }
        }

        // count primes
        int primes = 0;
        for (int i = 2; i <= N; i++) {
            if (isPrime[i]) { primes++;
            System.out.print(i + " ");}
        }
        System.out.println("\nThe number of primes <= " + N + " is " + primes);
    }
}

