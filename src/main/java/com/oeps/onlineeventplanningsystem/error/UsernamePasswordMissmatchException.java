package com.oeps.onlineeventplanningsystem.error;

public class UsernamePasswordMissmatchException extends Exception{

    public UsernamePasswordMissmatchException() {
        super();
    }

    public UsernamePasswordMissmatchException(String message) {
        super(message);
    }

    public UsernamePasswordMissmatchException(String message, Throwable cause) {
        super(message, cause);
    }

    public UsernamePasswordMissmatchException(Throwable cause) {
        super(cause);
    }

    protected UsernamePasswordMissmatchException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }

}
