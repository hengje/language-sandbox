package no.gjetanger.sandbox;

public final class Euler1 {

    public static void main(String[] args ) {
        int sum = 0;
        for (int i=1; i<1000; i++) {
            if (i % 3 == 0 || i % 5 == 0) {
                sum += i;
            }
        }
        System.out.println(String.format("Sum of all integers divisible by 3 or 5 below 1000: %d", sum));
    }

}
