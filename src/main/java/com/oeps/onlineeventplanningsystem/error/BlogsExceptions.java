package com.oeps.onlineeventplanningsystem.error;

public class BlogsExceptions extends Exception {
    public BlogsExceptions() {
        super();
    }

    public BlogsExceptions(String message) {
        super(message);
    }

    public BlogsExceptions(String message, Throwable cause) {
        super(message, cause);
    }

    public BlogsExceptions(Throwable cause) {
        super(cause);
    }

    protected BlogsExceptions(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
