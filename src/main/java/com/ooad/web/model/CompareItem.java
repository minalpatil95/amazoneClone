package com.ooad.web.model;
import com.ooad.web.dao.ItemDao;
import com.ooad.web.dao.UserDao;
import org.json.JSONObject;

public class CompareItem {
    private int id;
    private Item item;

    public CompareItem(int id, Item item) {
        this.id = id;
        this.item = item;
    }

    public int getId() {
        return id;
    }

    public Item getItem() {
        return item;
    }

    @Override
    public String toString() {
        return "CompareItem{" +
                "id=" + id +
                ", item=" + item +
                '}';
    }

    public JSONObject toJSON(){
        return new JSONObject().put("id",id ).put("item",item );
    }

    public static CompareItem find(int compareListItemId) {
        UserDao u = new UserDao();
        return u.getCompareListItem(compareListItemId);
    }

}
