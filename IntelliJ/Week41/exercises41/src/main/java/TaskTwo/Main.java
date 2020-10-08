package TaskTwo;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args){
        ArrayList<Room> rooms = new ArrayList<Room>();
        //Room[] rooms = new Room[3];
        rooms.add(new Room(4, 1, 9, 1));
        rooms.add(new Room(6, 2, 4, 4));
        rooms.add(new Room(3, 3, 1, 0));

        Building building = new Building(rooms, 0, 16, true);

        int lampCount = 0;
        for (Room room: building.getRooms()) {
            lampCount += room.getNumberOfLamps();
        }
        System.out.println("Total lamps in building: " + lampCount);

        if (building.getNumberOfFloors() > building.getRooms().size()){
            System.out.println("This is an odd building");
        }

    }
}
