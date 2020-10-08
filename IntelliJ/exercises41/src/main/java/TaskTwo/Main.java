package TaskTwo;

public class Main {
    public static void main(String[] args){
        Room[] rooms = new Room[3];
        rooms[0] = new Room(4, 1, 9, 1);
        rooms[1] = new Room(6, 2, 4, 4);
        rooms[2] = new Room(3, 3, 1, 0);

        Building building = new Building(rooms, 0, 16, true);

        int lampCount = 0;
        for (Room room: building.getRooms()) {
            lampCount += room.getNumberOfLamps();
        }
        System.out.println("Total lamps in building: " + lampCount);
    }
}
