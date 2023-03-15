package com.codeup.adlister.dao;


public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Config config = new Config("jdbc:mysql://localhost:3306/adlister_db?allowPublicKeyRetrieval=true&useSSL=false", "root", "codeup");

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}
