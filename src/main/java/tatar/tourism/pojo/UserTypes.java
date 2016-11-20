package tatar.tourism.pojo;

public enum UserTypes {

    GUIDE("GUIDE"),
    SIGHTSEER("SIGHTSEER"),
    TRAVELAGENCY("TRAVELAGENCY"),
    BUSDRIVER("BUSDRIVER"),
    ADMIN("ADMIN"),
    BUYER("BUYER"),
    SELLER("SELLER")
    ;

    private final String text;

    /**
     * @param text
     */
    private UserTypes(final String text) {
        this.text = text;
    }

    /* (non-Javadoc)
     * @see java.lang.Enum#toString()
     */
    @Override
    public String toString() {
        return text;
    }
}
