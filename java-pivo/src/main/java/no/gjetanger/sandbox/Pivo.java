package no.gjetanger.sandbox;

public final class Pivo {
    
    private static final String REPLACE_TEXT = "PIVO";
    
    public static void main( String[] args ) {
        for (int i=1; i<=100; i++) {
            System.out.println(valueToPrint(i));
        }
    }

    private static String valueToPrint(final int number) {
        if (number%7==0) {
            return REPLACE_TEXT;
        } else {
            final String stringValue = String.valueOf(number);
            if (stringValue.contains("7")){
                return REPLACE_TEXT;
            }
            return stringValue;
        }
    }
}
