import java.sql.SQLException;

public class DaoFactory {
    private static Ads adsDao;
    private static Config config = new Config("jdbc:mysql://localhost:3306/adlister_db?allowPublicKeyRetrieval=true&useSSL=false", "root", "codeup");

    public static Ads getAdsDao() throws SQLException {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);

        }
        return adsDao;
    }
}
