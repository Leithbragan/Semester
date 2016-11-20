package tatar.tourism.pojo;

public class Buyer extends User {

    @Override
    public boolean isGuide() {
        return false;
    }

    @Override
    public boolean isAdmin() {
        return false;
    }

    @Override
    public boolean isBuyer() {
        return true;
    }
}
